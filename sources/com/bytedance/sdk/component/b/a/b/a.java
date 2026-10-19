package com.bytedance.sdk.component.b.a.b;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: Buffer.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements b, c, Cloneable, ByteChannel {
    private static final byte[] c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    e a;
    long b;

    public int a(byte[] bArr, int i, int i2) {
        i.a(bArr.length, i, i2);
        e eVar = this.a;
        if (eVar == null) {
            return -1;
        }
        int iMin = Math.min(i2, eVar.c - eVar.b);
        System.arraycopy(eVar.a, eVar.b, bArr, i, iMin);
        int i3 = eVar.b + iMin;
        eVar.b = i3;
        this.b -= (long) iMin;
        if (i3 == eVar.c) {
            this.a = eVar.b();
            f.a(eVar);
        }
        return iMin;
    }

    public a a(int i) {
        if (i < 128) {
            b(i);
        } else if (i < 2048) {
            b((i >> 6) | PsExtractor.AUDIO_STREAM);
            b((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                b((i >> 12) | 224);
                b(((i >> 6) & 63) | 128);
                b((i & 63) | 128);
            } else {
                b(63);
            }
        } else {
            if (i > 1114111) {
                throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
            }
            b((i >> 18) | PsExtractor.VIDEO_STREAM_MASK);
            b(((i >> 12) & 63) | 128);
            b(((i >> 6) & 63) | 128);
            b((i & 63) | 128);
        }
        return this;
    }

    public a a(String str) {
        return a(str, 0, str.length());
    }

    public a a(String str, int i, int i2) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt < 128) {
                e eVarC = c(1);
                byte[] bArr = eVarC.a;
                int i3 = eVarC.c - i;
                int iMin = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                bArr[i + i3] = (byte) cCharAt;
                while (i4 < iMin) {
                    char cCharAt2 = str.charAt(i4);
                    if (cCharAt2 >= 128) {
                        break;
                    }
                    bArr[i4 + i3] = (byte) cCharAt2;
                    i4++;
                }
                int i5 = eVarC.c;
                int i6 = (i3 + i4) - i5;
                eVarC.c = i5 + i6;
                this.b += (long) i6;
                i = i4;
            } else {
                if (cCharAt < 2048) {
                    b((cCharAt >> 6) | PsExtractor.AUDIO_STREAM);
                    b((cCharAt & '?') | 128);
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    b((cCharAt >> '\f') | 224);
                    b(((cCharAt >> 6) & 63) | 128);
                    b((cCharAt & '?') | 128);
                } else {
                    int i7 = i + 1;
                    char cCharAt3 = i7 < i2 ? str.charAt(i7) : (char) 0;
                    if (cCharAt > 56319 || cCharAt3 < 56320 || cCharAt3 > 57343) {
                        b(63);
                        i = i7;
                    } else {
                        int i8 = (((cCharAt & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                        b((i8 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                        b(((i8 >> 12) & 63) | 128);
                        b(((i8 >> 6) & 63) | 128);
                        b((i8 & 63) | 128);
                        i += 2;
                    }
                }
                i++;
            }
        }
        return this;
    }

    public a a(String str, int i, int i2, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 <= str.length()) {
            if (charset == null) {
                throw new IllegalArgumentException("charset == null");
            }
            if (charset.equals(i.a)) {
                return a(str, i, i2);
            }
            byte[] bytes = str.substring(i, i2).getBytes(charset);
            return b(bytes, 0, bytes.length);
        }
        throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
    }

    public String a(long j, Charset charset) throws EOFException {
        i.a(this.b, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        if (j == 0) {
            return "";
        }
        e eVar = this.a;
        if (((long) eVar.b) + j > eVar.c) {
            return new String(a(j), charset);
        }
        String str = new String(eVar.a, eVar.b, (int) j, charset);
        int i = (int) (((long) eVar.b) + j);
        eVar.b = i;
        this.b -= j;
        if (i == eVar.c) {
            this.a = eVar.b();
            f.a(eVar);
        }
        return str;
    }

    public void a(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int iA = a(bArr, i, bArr.length - i);
            if (iA == -1) {
                throw new EOFException();
            }
            i += iA;
        }
    }

    public boolean a() {
        return this.b == 0;
    }

    public byte[] a(long j) throws EOFException {
        i.a(this.b, 0L, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[(int) j];
            a(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
    }

    public byte b() {
        long j = this.b;
        if (j == 0) {
            throw new IllegalStateException("size == 0");
        }
        e eVar = this.a;
        int i = eVar.b;
        int i2 = eVar.c;
        int i3 = i + 1;
        byte b = eVar.a[i];
        this.b = j - 1;
        if (i3 == i2) {
            this.a = eVar.b();
            f.a(eVar);
        } else {
            eVar.b = i3;
        }
        return b;
    }

    public a b(int i) {
        e eVarC = c(1);
        byte[] bArr = eVarC.a;
        int i2 = eVarC.c;
        eVarC.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.b++;
        return this;
    }

    public a b(long j) {
        if (j == 0) {
            return b(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        e eVarC = c(iNumberOfTrailingZeros);
        byte[] bArr = eVarC.a;
        int i = eVarC.c;
        for (int i2 = (i + iNumberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = c[(int) (15 & j)];
            j >>>= 4;
        }
        eVarC.c += iNumberOfTrailingZeros;
        this.b += (long) iNumberOfTrailingZeros;
        return this;
    }

    public a b(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = i2;
        i.a(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            e eVarC = c(1);
            int iMin = Math.min(i3 - i, 8192 - eVarC.c);
            System.arraycopy(bArr, i, eVarC.a, eVarC.c, iMin);
            i += iMin;
            eVarC.c += iMin;
        }
        this.b += j;
        return this;
    }

    e c(int i) {
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException();
        }
        e eVar = this.a;
        if (eVar != null) {
            e eVar2 = eVar.f901g;
            return (eVar2.c + i > 8192 || !eVar2.f899e) ? eVar2.a(f.a()) : eVar2;
        }
        e eVarA = f.a();
        this.a = eVarA;
        eVarA.f901g = eVarA;
        eVarA.f900f = eVarA;
        return eVarA;
    }

    public String c() {
        try {
            return a(this.b, i.a);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() {
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public a clone() {
        a aVar = new a();
        if (this.b == 0) {
            return aVar;
        }
        e eVarA = this.a.a();
        aVar.a = eVarA;
        eVarA.f901g = eVarA;
        eVarA.f900f = eVarA;
        e eVar = this.a;
        while (true) {
            eVar = eVar.f900f;
            if (eVar == this.a) {
                aVar.b = this.b;
                return aVar;
            }
            aVar.a.f901g.a(eVar.a());
        }
    }

    public final d d(int i) {
        return i == 0 ? d.c : new g(this, i);
    }

    public final d e() {
        long j = this.b;
        if (j <= 2147483647L) {
            return d((int) j);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        long j = this.b;
        if (j != aVar.b) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        e eVar = this.a;
        e eVar2 = aVar.a;
        int i = eVar.b;
        int i2 = eVar2.b;
        while (j2 < this.b) {
            long jMin = Math.min(eVar.c - i, eVar2.c - i2);
            int i3 = 0;
            while (i3 < jMin) {
                int i4 = i + 1;
                int i5 = i2 + 1;
                if (eVar.a[i] != eVar2.a[i2]) {
                    return false;
                }
                i3++;
                i = i4;
                i2 = i5;
            }
            if (i == eVar.c) {
                eVar = eVar.f900f;
                i = eVar.b;
            }
            if (i2 == eVar2.c) {
                eVar2 = eVar2.f900f;
                i2 = eVar2.b;
            }
            j2 += jMin;
        }
        return true;
    }

    @Override // java.io.Flushable
    public void flush() {
    }

    public int hashCode() {
        e eVar = this.a;
        if (eVar == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = eVar.c;
            for (int i3 = eVar.b; i3 < i2; i3++) {
                i = (i * 31) + eVar.a[i3];
            }
            eVar = eVar.f900f;
        } while (eVar != this.a);
        return i;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        e eVar = this.a;
        if (eVar == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), eVar.c - eVar.b);
        byteBuffer.put(eVar.a, eVar.b, iMin);
        int i = eVar.b + iMin;
        eVar.b = i;
        this.b -= (long) iMin;
        if (i == eVar.c) {
            this.a = eVar.b();
            f.a(eVar);
        }
        return iMin;
    }

    public String toString() {
        return e().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i = iRemaining;
        while (i > 0) {
            e eVarC = c(1);
            int iMin = Math.min(i, 8192 - eVarC.c);
            byteBuffer.get(eVarC.a, eVarC.c, iMin);
            i -= iMin;
            eVarC.c += iMin;
        }
        this.b += (long) iRemaining;
        return iRemaining;
    }
}
