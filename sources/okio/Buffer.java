package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.util.Objects;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okio.internal._BufferKt;

/* JADX INFO: compiled from: Buffer.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class Buffer implements e, d, Cloneable, ByteChannel {
    public u a;
    private long b;

    /* JADX INFO: compiled from: Buffer.kt */
    public static final class a implements Closeable {
        public Buffer a;
        public boolean b;
        private u c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f10844e;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f10843d = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f10845f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f10846g = -1;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!(this.a != null)) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            this.a = null;
            f(null);
            this.f10843d = -1L;
            this.f10844e = null;
            this.f10845f = -1;
            this.f10846g = -1;
        }

        public final u d() {
            return this.c;
        }

        public final int e(long j) {
            u uVarC;
            Buffer buffer = this.a;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            if (j < -1 || j > buffer.I()) {
                throw new ArrayIndexOutOfBoundsException("offset=" + j + " > size=" + buffer.I());
            }
            if (j == -1 || j == buffer.I()) {
                f(null);
                this.f10843d = j;
                this.f10844e = null;
                this.f10845f = -1;
                this.f10846g = -1;
                return -1;
            }
            long j2 = 0;
            long jI = buffer.I();
            u uVarD = buffer.a;
            if (d() != null) {
                long j3 = this.f10843d;
                int i = this.f10845f;
                u uVarD2 = d();
                Intrinsics.checkNotNull(uVarD2);
                long j4 = j3 - ((long) (i - uVarD2.c));
                if (j4 > j) {
                    uVarD = d();
                    jI = j4;
                    uVarC = uVarD;
                } else {
                    uVarC = d();
                    j2 = j4;
                }
            } else {
                uVarC = uVarD;
            }
            if (jI - j > j - j2) {
                while (true) {
                    Intrinsics.checkNotNull(uVarC);
                    int i2 = uVarC.f10898d;
                    int i3 = uVarC.c;
                    if (j < ((long) (i2 - i3)) + j2) {
                        break;
                    }
                    j2 += (long) (i2 - i3);
                    uVarC = uVarC.f10901g;
                }
            } else {
                while (jI > j) {
                    Intrinsics.checkNotNull(uVarD);
                    uVarD = uVarD.h;
                    Intrinsics.checkNotNull(uVarD);
                    jI -= (long) (uVarD.f10898d - uVarD.c);
                }
                j2 = jI;
                uVarC = uVarD;
            }
            if (this.b) {
                Intrinsics.checkNotNull(uVarC);
                if (uVarC.f10899e) {
                    u uVarF = uVarC.f();
                    if (buffer.a == uVarC) {
                        buffer.a = uVarF;
                    }
                    uVarC = uVarC.c(uVarF);
                    u uVar = uVarC.h;
                    Intrinsics.checkNotNull(uVar);
                    uVar.b();
                }
            }
            f(uVarC);
            this.f10843d = j;
            Intrinsics.checkNotNull(uVarC);
            this.f10844e = uVarC.b;
            int i4 = uVarC.c + ((int) (j - j2));
            this.f10845f = i4;
            int i5 = uVarC.f10898d;
            this.f10846g = i5;
            return i5 - i4;
        }

        public final void f(u uVar) {
            this.c = uVar;
        }
    }

    /* JADX INFO: compiled from: Buffer.kt */
    public static final class b extends InputStream {
        b() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(Buffer.this.I(), Integer.MAX_VALUE);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            if (Buffer.this.I() > 0) {
                return Buffer.this.readByte() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] sink, int i, int i2) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            return Buffer.this.read(sink, i, i2);
        }

        public String toString() {
            return Buffer.this + ".inputStream()";
        }
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, OutputStream outputStream, long j, long j2, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            j = 0;
        }
        long j3 = j;
        if ((i & 4) != 0) {
            j2 = buffer.b - j3;
        }
        return buffer.h(outputStream, j3, j2);
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return buffer.i(buffer2, j);
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j, long j2, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return buffer.j(buffer2, j, j2);
    }

    public static /* synthetic */ a readAndWriteUnsafe$default(Buffer buffer, a aVar, int i, Object obj) {
        if ((i & 1) != 0) {
            aVar = _UtilKt.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.u(aVar);
    }

    public static /* synthetic */ a readUnsafe$default(Buffer buffer, a aVar, int i, Object obj) {
        if ((i & 1) != 0) {
            aVar = _UtilKt.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.w(aVar);
    }

    public static /* synthetic */ Buffer writeTo$default(Buffer buffer, OutputStream outputStream, long j, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            j = buffer.b;
        }
        return buffer.f0(outputStream, j);
    }

    @Override // okio.d
    public long D(y source) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        long j = 0;
        while (true) {
            long j2 = source.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j2 == -1) {
                return j;
            }
            j += j2;
        }
    }

    public final long I() {
        return this.b;
    }

    public final ByteString J() {
        if (I() <= 2147483647L) {
            return K((int) I());
        }
        throw new IllegalStateException(Intrinsics.stringPlus("size > Int.MAX_VALUE: ", Long.valueOf(I())).toString());
    }

    public final ByteString K(int i) {
        if (i == 0) {
            return ByteString.b;
        }
        _UtilKt.checkOffsetAndCount(I(), 0L, i);
        u uVar = this.a;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Intrinsics.checkNotNull(uVar);
            int i5 = uVar.f10898d;
            int i6 = uVar.c;
            if (i5 == i6) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += i5 - i6;
            i4++;
            uVar = uVar.f10901g;
        }
        byte[][] bArr = new byte[i4][];
        int[] iArr = new int[i4 * 2];
        u uVar2 = this.a;
        int i7 = 0;
        while (i2 < i) {
            Intrinsics.checkNotNull(uVar2);
            bArr[i7] = uVar2.b;
            i2 += uVar2.f10898d - uVar2.c;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = uVar2.c;
            uVar2.f10899e = true;
            i7++;
            uVar2 = uVar2.f10901g;
        }
        return new v(bArr, iArr);
    }

    public final u L(int i) {
        if (!(i >= 1 && i <= 8192)) {
            throw new IllegalArgumentException("unexpected capacity".toString());
        }
        u uVar = this.a;
        if (uVar != null) {
            Intrinsics.checkNotNull(uVar);
            u uVar2 = uVar.h;
            Intrinsics.checkNotNull(uVar2);
            return (uVar2.f10898d + i > 8192 || !uVar2.f10900f) ? uVar2.c(SegmentPool.take()) : uVar2;
        }
        u uVarTake = SegmentPool.take();
        this.a = uVarTake;
        uVarTake.h = uVarTake;
        uVarTake.f10901g = uVarTake;
        return uVarTake;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public Buffer P(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.L(this, 0, byteString.F());
        return this;
    }

    public Buffer N(ByteString byteString, int i, int i2) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.L(this, i, i2);
        return this;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public Buffer write(byte[] source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return write(source, 0, source.length);
    }

    @Override // okio.e
    public long R(w sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long jI = I();
        if (jI > 0) {
            sink.n(this, jI);
        }
        return jI;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public Buffer write(byte[] source, int i, int i2) {
        Intrinsics.checkNotNullParameter(source, "source");
        long j = i2;
        _UtilKt.checkOffsetAndCount(source.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            u uVarL = L(1);
            int iMin = Math.min(i3 - i, 8192 - uVarL.f10898d);
            int i4 = i + iMin;
            ArraysKt___ArraysJvmKt.copyInto(source, uVarL.b, uVarL.f10898d, i, i4);
            uVarL.f10898d += iMin;
            i = i4;
        }
        x(I() + j);
        return this;
    }

    @Override // okio.e
    public int T(Options options) throws EOFException {
        Intrinsics.checkNotNullParameter(options, "options");
        int iSelectPrefix$default = _BufferKt.selectPrefix$default(this, options, false, 2, null);
        if (iSelectPrefix$default == -1) {
            return -1;
        }
        skip(options.i()[iSelectPrefix$default].F());
        return iSelectPrefix$default;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public Buffer writeByte(int i) {
        u uVarL = L(1);
        byte[] bArr = uVarL.b;
        int i2 = uVarL.f10898d;
        uVarL.f10898d = i2 + 1;
        bArr[i2] = (byte) i;
        x(I() + 1);
        return this;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public Buffer writeDecimalLong(long j) {
        if (j == 0) {
            return writeByte(48);
        }
        boolean z = false;
        int i = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z = true;
        }
        if (j >= 100000000) {
            i = j < 1000000000000L ? j < 10000000000L ? j < C.NANOS_PER_SECOND ? 9 : 10 : j < 100000000000L ? 11 : 12 : j < 1000000000000000L ? j < 10000000000000L ? 13 : j < 100000000000000L ? 14 : 15 : j < 100000000000000000L ? j < 10000000000000000L ? 16 : 17 : j < 1000000000000000000L ? 18 : 19;
        } else if (j >= 10000) {
            i = j < 1000000 ? j < 100000 ? 5 : 6 : j < 10000000 ? 7 : 8;
        } else if (j >= 100) {
            i = j < 1000 ? 3 : 4;
        } else if (j >= 10) {
            i = 2;
        }
        if (z) {
            i++;
        }
        u uVarL = L(i);
        byte[] bArr = uVarL.b;
        int i2 = uVarL.f10898d + i;
        while (j != 0) {
            long j2 = 10;
            i2--;
            bArr[i2] = _BufferKt.getHEX_DIGIT_BYTES()[(int) (j % j2)];
            j /= j2;
        }
        if (z) {
            bArr[i2 - 1] = (byte) 45;
        }
        uVarL.f10898d += i;
        x(I() + ((long) i));
        return this;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
    public Buffer writeHexadecimalUnsignedLong(long j) {
        if (j == 0) {
            return writeByte(48);
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + ((long) 3)) / ((long) 4));
        u uVarL = L(i);
        byte[] bArr = uVarL.b;
        int i2 = uVarL.f10898d;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = _BufferKt.getHEX_DIGIT_BYTES()[(int) (15 & j)];
            j >>>= 4;
        }
        uVarL.f10898d += i;
        x(I() + ((long) i));
        return this;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public Buffer writeInt(int i) {
        u uVarL = L(4);
        byte[] bArr = uVarL.b;
        int i2 = uVarL.f10898d;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        uVarL.f10898d = i5 + 1;
        x(I() + 4);
        return this;
    }

    public Buffer Y(int i) {
        return writeInt(_UtilKt.reverseBytes(i));
    }

    public Buffer Z(long j) {
        u uVarL = L(8);
        byte[] bArr = uVarL.b;
        int i = uVarL.f10898d;
        int i2 = i + 1;
        bArr[i] = (byte) ((j >>> 56) & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((j >>> 48) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j >>> 40) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j >>> 32) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j >>> 8) & 255);
        bArr[i8] = (byte) (j & 255);
        uVarL.f10898d = i8 + 1;
        x(I() + 8);
        return this;
    }

    public Buffer a0(long j) {
        return Z(_UtilKt.reverseBytes(j));
    }

    @Override // okio.d
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public Buffer writeShort(int i) {
        u uVarL = L(2);
        byte[] bArr = uVarL.b;
        int i2 = uVarL.f10898d;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        uVarL.f10898d = i3 + 1;
        x(I() + 2);
        return this;
    }

    public Buffer c0(int i) {
        return writeShort(_UtilKt.reverseBytes((short) i));
    }

    @Override // okio.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final void d() throws EOFException {
        skip(I());
    }

    public Buffer d0(String string, int i, int i2, Charset charset) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("beginIndex < 0: ", Integer.valueOf(i)).toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
        }
        if (!(i2 <= string.length())) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
        }
        if (Intrinsics.areEqual(charset, Charsets.b)) {
            return h0(string, i, i2);
        }
        String strSubstring = string.substring(i, i2);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        Objects.requireNonNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = strSubstring.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        return write(bytes, 0, bytes.length);
    }

    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Buffer clone() {
        return g();
    }

    public Buffer e0(String string, Charset charset) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return d0(string, 0, string.length(), charset);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Buffer)) {
                return false;
            }
            Buffer buffer = (Buffer) obj;
            if (I() != buffer.I()) {
                return false;
            }
            if (I() != 0) {
                u uVar = this.a;
                Intrinsics.checkNotNull(uVar);
                u uVar2 = buffer.a;
                Intrinsics.checkNotNull(uVar2);
                int i = uVar.c;
                int i2 = uVar2.c;
                long j = 0;
                while (j < I()) {
                    long jMin = Math.min(uVar.f10898d - i, uVar2.f10898d - i2);
                    if (0 < jMin) {
                        long j2 = 0;
                        while (true) {
                            j2++;
                            int i3 = i + 1;
                            int i4 = i2 + 1;
                            if (uVar.b[i] != uVar2.b[i2]) {
                                return false;
                            }
                            if (j2 >= jMin) {
                                i = i3;
                                i2 = i4;
                                break;
                            }
                            i = i3;
                            i2 = i4;
                        }
                    }
                    if (i == uVar.f10898d) {
                        uVar = uVar.f10901g;
                        Intrinsics.checkNotNull(uVar);
                        i = uVar.c;
                    }
                    if (i2 == uVar2.f10898d) {
                        uVar2 = uVar2.f10901g;
                        Intrinsics.checkNotNull(uVar2);
                        i2 = uVar2.c;
                    }
                    j += jMin;
                }
            }
        }
        return true;
    }

    @Override // okio.e
    public boolean exhausted() {
        return this.b == 0;
    }

    public final long f() {
        long jI = I();
        if (jI == 0) {
            return 0L;
        }
        u uVar = this.a;
        Intrinsics.checkNotNull(uVar);
        u uVar2 = uVar.h;
        Intrinsics.checkNotNull(uVar2);
        int i = uVar2.f10898d;
        if (i < 8192 && uVar2.f10900f) {
            jI -= (long) (i - uVar2.c);
        }
        return jI;
    }

    public final Buffer f0(OutputStream out, long j) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        _UtilKt.checkOffsetAndCount(this.b, 0L, j);
        u uVar = this.a;
        while (j > 0) {
            Intrinsics.checkNotNull(uVar);
            int iMin = (int) Math.min(j, uVar.f10898d - uVar.c);
            out.write(uVar.b, uVar.c, iMin);
            int i = uVar.c + iMin;
            uVar.c = i;
            long j2 = iMin;
            this.b -= j2;
            j -= j2;
            if (i == uVar.f10898d) {
                u uVarB = uVar.b();
                this.a = uVarB;
                SegmentPool.recycle(uVar);
                uVar = uVarB;
            }
        }
        return this;
    }

    @Override // okio.d, okio.w, java.io.Flushable
    public void flush() {
    }

    public final Buffer g() {
        Buffer buffer = new Buffer();
        if (I() != 0) {
            u uVar = this.a;
            Intrinsics.checkNotNull(uVar);
            u uVarD = uVar.d();
            buffer.a = uVarD;
            uVarD.h = uVarD;
            uVarD.f10901g = uVarD;
            for (u uVar2 = uVar.f10901g; uVar2 != uVar; uVar2 = uVar2.f10901g) {
                u uVar3 = uVarD.h;
                Intrinsics.checkNotNull(uVar3);
                Intrinsics.checkNotNull(uVar2);
                uVar3.c(uVar2.d());
            }
            buffer.x(I());
        }
        return buffer;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public Buffer writeUtf8(String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        return h0(string, 0, string.length());
    }

    public final Buffer h(OutputStream out, long j, long j2) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        _UtilKt.checkOffsetAndCount(this.b, j, j2);
        if (j2 == 0) {
            return this;
        }
        u uVar = this.a;
        while (true) {
            Intrinsics.checkNotNull(uVar);
            int i = uVar.f10898d;
            int i2 = uVar.c;
            if (j < i - i2) {
                break;
            }
            j -= (long) (i - i2);
            uVar = uVar.f10901g;
        }
        while (j2 > 0) {
            Intrinsics.checkNotNull(uVar);
            int i3 = (int) (((long) uVar.c) + j);
            int iMin = (int) Math.min(uVar.f10898d - i3, j2);
            out.write(uVar.b, i3, iMin);
            j2 -= (long) iMin;
            uVar = uVar.f10901g;
            j = 0;
        }
        return this;
    }

    public Buffer h0(String string, int i, int i2) {
        char cCharAt;
        Intrinsics.checkNotNullParameter(string, "string");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("beginIndex < 0: ", Integer.valueOf(i)).toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
        }
        if (!(i2 <= string.length())) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
        }
        while (i < i2) {
            char cCharAt2 = string.charAt(i);
            if (cCharAt2 < 128) {
                u uVarL = L(1);
                byte[] bArr = uVarL.b;
                int i3 = uVarL.f10898d - i;
                int iMin = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                bArr[i + i3] = (byte) cCharAt2;
                while (true) {
                    i = i4;
                    if (i >= iMin || (cCharAt = string.charAt(i)) >= 128) {
                        break;
                    }
                    i4 = i + 1;
                    bArr[i + i3] = (byte) cCharAt;
                }
                int i5 = uVarL.f10898d;
                int i6 = (i3 + i) - i5;
                uVarL.f10898d = i5 + i6;
                x(I() + ((long) i6));
            } else {
                if (cCharAt2 < 2048) {
                    u uVarL2 = L(2);
                    byte[] bArr2 = uVarL2.b;
                    int i7 = uVarL2.f10898d;
                    bArr2[i7] = (byte) ((cCharAt2 >> 6) | PsExtractor.AUDIO_STREAM);
                    bArr2[i7 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    uVarL2.f10898d = i7 + 2;
                    x(I() + 2);
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    u uVarL3 = L(3);
                    byte[] bArr3 = uVarL3.b;
                    int i8 = uVarL3.f10898d;
                    bArr3[i8] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i8 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i8 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    uVarL3.f10898d = i8 + 3;
                    x(I() + 3);
                } else {
                    int i9 = i + 1;
                    char cCharAt3 = i9 < i2 ? string.charAt(i9) : (char) 0;
                    if (cCharAt2 <= 56319) {
                        if (56320 <= cCharAt3 && cCharAt3 <= 57343) {
                            int i10 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                            u uVarL4 = L(4);
                            byte[] bArr4 = uVarL4.b;
                            int i11 = uVarL4.f10898d;
                            bArr4[i11] = (byte) ((i10 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                            bArr4[i11 + 1] = (byte) (((i10 >> 12) & 63) | 128);
                            bArr4[i11 + 2] = (byte) (((i10 >> 6) & 63) | 128);
                            bArr4[i11 + 3] = (byte) ((i10 & 63) | 128);
                            uVarL4.f10898d = i11 + 4;
                            x(I() + 4);
                            i += 2;
                        }
                    }
                    writeByte(63);
                    i = i9;
                }
                i++;
            }
        }
        return this;
    }

    public int hashCode() {
        u uVar = this.a;
        if (uVar == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = uVar.f10898d;
            for (int i3 = uVar.c; i3 < i2; i3++) {
                i = (i * 31) + uVar.b[i3];
            }
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
        } while (uVar != this.a);
        return i;
    }

    public final Buffer i(Buffer out, long j) {
        Intrinsics.checkNotNullParameter(out, "out");
        return j(out, j, this.b - j);
    }

    public Buffer i0(int i) {
        if (i < 128) {
            writeByte(i);
        } else if (i < 2048) {
            u uVarL = L(2);
            byte[] bArr = uVarL.b;
            int i2 = uVarL.f10898d;
            bArr[i2] = (byte) ((i >> 6) | PsExtractor.AUDIO_STREAM);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            uVarL.f10898d = i2 + 2;
            x(I() + 2);
        } else {
            boolean z = false;
            if (55296 <= i && i <= 57343) {
                z = true;
            }
            if (z) {
                writeByte(63);
            } else if (i < 65536) {
                u uVarL2 = L(3);
                byte[] bArr2 = uVarL2.b;
                int i3 = uVarL2.f10898d;
                bArr2[i3] = (byte) ((i >> 12) | 224);
                bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
                bArr2[i3 + 2] = (byte) ((i & 63) | 128);
                uVarL2.f10898d = i3 + 3;
                x(I() + 3);
            } else {
                if (i > 1114111) {
                    throw new IllegalArgumentException(Intrinsics.stringPlus("Unexpected code point: 0x", _UtilKt.toHexString(i)));
                }
                u uVarL3 = L(4);
                byte[] bArr3 = uVarL3.b;
                int i4 = uVarL3.f10898d;
                bArr3[i4] = (byte) ((i >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | 128);
                bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | 128);
                bArr3[i4 + 3] = (byte) ((i & 63) | 128);
                uVarL3.f10898d = i4 + 4;
                x(I() + 4);
            }
        }
        return this;
    }

    public long indexOf(byte b2) {
        return indexOf(b2, 0L, Long.MAX_VALUE);
    }

    public long indexOf(byte b2, long j, long j2) {
        u uVar;
        int i;
        long j3 = j;
        long jI = j2;
        boolean z = false;
        long jI2 = 0;
        if (0 <= j3 && j3 <= jI) {
            z = true;
        }
        if (!z) {
            throw new IllegalArgumentException(("size=" + I() + " fromIndex=" + j3 + " toIndex=" + jI).toString());
        }
        if (jI > I()) {
            jI = I();
        }
        long j4 = jI;
        if (j3 == j4 || (uVar = this.a) == null) {
            return -1L;
        }
        if (I() - j3 < j3) {
            jI2 = I();
            while (jI2 > j3) {
                uVar = uVar.h;
                Intrinsics.checkNotNull(uVar);
                jI2 -= (long) (uVar.f10898d - uVar.c);
            }
            while (jI2 < j4) {
                byte[] bArr = uVar.b;
                int iMin = (int) Math.min(uVar.f10898d, (((long) uVar.c) + j4) - jI2);
                i = (int) ((((long) uVar.c) + j3) - jI2);
                while (i < iMin) {
                    if (bArr[i] != b2) {
                        i++;
                    }
                }
                jI2 += (long) (uVar.f10898d - uVar.c);
                uVar = uVar.f10901g;
                Intrinsics.checkNotNull(uVar);
                j3 = jI2;
            }
            return -1L;
        }
        while (true) {
            long j5 = ((long) (uVar.f10898d - uVar.c)) + jI2;
            if (j5 > j3) {
                break;
            }
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
            jI2 = j5;
        }
        while (jI2 < j4) {
            byte[] bArr2 = uVar.b;
            int iMin2 = (int) Math.min(uVar.f10898d, (((long) uVar.c) + j4) - jI2);
            i = (int) ((((long) uVar.c) + j3) - jI2);
            while (i < iMin2) {
                if (bArr2[i] != b2) {
                    i++;
                }
            }
            jI2 += (long) (uVar.f10898d - uVar.c);
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
            j3 = jI2;
        }
        return -1L;
        return ((long) (i - uVar.c)) + jI2;
    }

    @Override // okio.e
    public InputStream inputStream() {
        return new b();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public final Buffer j(Buffer out, long j, long j2) {
        Intrinsics.checkNotNullParameter(out, "out");
        _UtilKt.checkOffsetAndCount(I(), j, j2);
        if (j2 != 0) {
            out.x(out.I() + j2);
            u uVar = this.a;
            while (true) {
                Intrinsics.checkNotNull(uVar);
                int i = uVar.f10898d;
                int i2 = uVar.c;
                if (j < i - i2) {
                    break;
                }
                j -= (long) (i - i2);
                uVar = uVar.f10901g;
            }
            while (j2 > 0) {
                Intrinsics.checkNotNull(uVar);
                u uVarD = uVar.d();
                int i3 = uVarD.c + ((int) j);
                uVarD.c = i3;
                uVarD.f10898d = Math.min(i3 + ((int) j2), uVarD.f10898d);
                u uVar2 = out.a;
                if (uVar2 == null) {
                    uVarD.h = uVarD;
                    uVarD.f10901g = uVarD;
                    out.a = uVarD;
                } else {
                    Intrinsics.checkNotNull(uVar2);
                    u uVar3 = uVar2.h;
                    Intrinsics.checkNotNull(uVar3);
                    uVar3.c(uVarD);
                }
                j2 -= (long) (uVarD.f10898d - uVarD.c);
                uVar = uVar.f10901g;
                j = 0;
            }
        }
        return this;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public Buffer emit() {
        return this;
    }

    @Override // okio.d
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public Buffer emitCompleteSegments() {
        return this;
    }

    public final byte m(long j) {
        _UtilKt.checkOffsetAndCount(I(), j, 1L);
        u uVar = this.a;
        if (uVar == null) {
            Intrinsics.checkNotNull(null);
            throw null;
        }
        if (I() - j < j) {
            long jI = I();
            while (jI > j) {
                uVar = uVar.h;
                Intrinsics.checkNotNull(uVar);
                jI -= (long) (uVar.f10898d - uVar.c);
            }
            Intrinsics.checkNotNull(uVar);
            return uVar.b[(int) ((((long) uVar.c) + j) - jI)];
        }
        long j2 = 0;
        while (true) {
            long j3 = ((long) (uVar.f10898d - uVar.c)) + j2;
            if (j3 > j) {
                Intrinsics.checkNotNull(uVar);
                return uVar.b[(int) ((((long) uVar.c) + j) - j2)];
            }
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
            j2 = j3;
        }
    }

    @Override // okio.w
    public void n(Buffer source, long j) {
        u uVar;
        Intrinsics.checkNotNullParameter(source, "source");
        if (!(source != this)) {
            throw new IllegalArgumentException("source == this".toString());
        }
        _UtilKt.checkOffsetAndCount(source.I(), 0L, j);
        while (j > 0) {
            u uVar2 = source.a;
            Intrinsics.checkNotNull(uVar2);
            int i = uVar2.f10898d;
            Intrinsics.checkNotNull(source.a);
            if (j < i - r2.c) {
                u uVar3 = this.a;
                if (uVar3 != null) {
                    Intrinsics.checkNotNull(uVar3);
                    uVar = uVar3.h;
                } else {
                    uVar = null;
                }
                if (uVar != null && uVar.f10900f) {
                    if ((((long) uVar.f10898d) + j) - ((long) (uVar.f10899e ? 0 : uVar.c)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                        u uVar4 = source.a;
                        Intrinsics.checkNotNull(uVar4);
                        uVar4.g(uVar, (int) j);
                        source.x(source.I() - j);
                        x(I() + j);
                        return;
                    }
                }
                u uVar5 = source.a;
                Intrinsics.checkNotNull(uVar5);
                source.a = uVar5.e((int) j);
            }
            u uVar6 = source.a;
            Intrinsics.checkNotNull(uVar6);
            long j2 = uVar6.f10898d - uVar6.c;
            source.a = uVar6.b();
            u uVar7 = this.a;
            if (uVar7 == null) {
                this.a = uVar6;
                uVar6.h = uVar6;
                uVar6.f10901g = uVar6;
            } else {
                Intrinsics.checkNotNull(uVar7);
                u uVar8 = uVar7.h;
                Intrinsics.checkNotNull(uVar8);
                uVar8.c(uVar6).a();
            }
            source.x(source.I() - j2);
            x(I() + j2);
            j -= j2;
        }
    }

    public long o(ByteString bytes) throws IOException {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return p(bytes, 0L);
    }

    public long p(ByteString bytes, long j) throws IOException {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (!(bytes.F() > 0)) {
            throw new IllegalArgumentException("bytes is empty".toString());
        }
        long j2 = 0;
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("fromIndex < 0: ", Long.valueOf(j)).toString());
        }
        u uVar = this.a;
        if (uVar != null) {
            if (I() - j < j) {
                long jI = I();
                while (jI > j) {
                    uVar = uVar.h;
                    Intrinsics.checkNotNull(uVar);
                    jI -= (long) (uVar.f10898d - uVar.c);
                }
                byte[] bArrU = bytes.u();
                byte b2 = bArrU[0];
                int iF = bytes.F();
                long jI2 = (I() - ((long) iF)) + 1;
                u uVar2 = uVar;
                long j3 = jI;
                long j4 = j;
                while (j3 < jI2) {
                    byte[] bArr = uVar2.b;
                    long j5 = j4;
                    int iMin = (int) Math.min(uVar2.f10898d, (((long) uVar2.c) + jI2) - j3);
                    int i = (int) ((((long) uVar2.c) + j5) - j3);
                    if (i < iMin) {
                        while (true) {
                            int i2 = i + 1;
                            if (bArr[i] == b2 && _BufferKt.rangeEquals(uVar2, i2, bArrU, 1, iF)) {
                                return ((long) (i - uVar2.c)) + j3;
                            }
                            if (i2 >= iMin) {
                                break;
                            }
                            i = i2;
                        }
                    }
                    j3 += (long) (uVar2.f10898d - uVar2.c);
                    uVar2 = uVar2.f10901g;
                    Intrinsics.checkNotNull(uVar2);
                    j4 = j3;
                }
            } else {
                while (true) {
                    long j6 = ((long) (uVar.f10898d - uVar.c)) + j2;
                    if (j6 > j) {
                        break;
                    }
                    uVar = uVar.f10901g;
                    Intrinsics.checkNotNull(uVar);
                    j2 = j6;
                }
                byte[] bArrU2 = bytes.u();
                byte b3 = bArrU2[0];
                int iF2 = bytes.F();
                long jI3 = (I() - ((long) iF2)) + 1;
                long j7 = j2;
                long j8 = j;
                while (j7 < jI3) {
                    byte[] bArr2 = uVar.b;
                    long j9 = jI3;
                    int iMin2 = (int) Math.min(uVar.f10898d, (((long) uVar.c) + jI3) - j7);
                    int i3 = (int) ((((long) uVar.c) + j8) - j7);
                    if (i3 < iMin2) {
                        while (true) {
                            int i4 = i3 + 1;
                            if (bArr2[i3] == b3 && _BufferKt.rangeEquals(uVar, i4, bArrU2, 1, iF2)) {
                                return ((long) (i3 - uVar.c)) + j7;
                            }
                            if (i4 >= iMin2) {
                                break;
                            }
                            i3 = i4;
                        }
                    }
                    j7 += (long) (uVar.f10898d - uVar.c);
                    uVar = uVar.f10901g;
                    Intrinsics.checkNotNull(uVar);
                    j8 = j7;
                    jI3 = j9;
                }
            }
        }
        return -1L;
    }

    public long q(ByteString targetBytes) {
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        return r(targetBytes, 0L);
    }

    public long r(ByteString targetBytes, long j) {
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        long jI = 0;
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("fromIndex < 0: ", Long.valueOf(j)).toString());
        }
        u uVar = this.a;
        if (uVar == null) {
            return -1L;
        }
        if (I() - j < j) {
            jI = I();
            while (jI > j) {
                uVar = uVar.h;
                Intrinsics.checkNotNull(uVar);
                jI -= (long) (uVar.f10898d - uVar.c);
            }
            if (targetBytes.F() == 2) {
                byte bJ = targetBytes.j(0);
                byte bJ2 = targetBytes.j(1);
                while (jI < I()) {
                    byte[] bArr = uVar.b;
                    i = (int) ((((long) uVar.c) + j) - jI);
                    int i3 = uVar.f10898d;
                    while (i < i3) {
                        byte b2 = bArr[i];
                        if (b2 == bJ || b2 == bJ2) {
                            i2 = uVar.c;
                        } else {
                            i++;
                        }
                    }
                    jI += (long) (uVar.f10898d - uVar.c);
                    uVar = uVar.f10901g;
                    Intrinsics.checkNotNull(uVar);
                    j = jI;
                }
                return -1L;
            }
            byte[] bArrU = targetBytes.u();
            while (jI < I()) {
                byte[] bArr2 = uVar.b;
                i = (int) ((((long) uVar.c) + j) - jI);
                int i4 = uVar.f10898d;
                while (i < i4) {
                    byte b3 = bArr2[i];
                    int length = bArrU.length;
                    int i5 = 0;
                    while (i5 < length) {
                        byte b4 = bArrU[i5];
                        i5++;
                        if (b3 == b4) {
                            i2 = uVar.c;
                        }
                    }
                    i++;
                }
                jI += (long) (uVar.f10898d - uVar.c);
                uVar = uVar.f10901g;
                Intrinsics.checkNotNull(uVar);
                j = jI;
            }
            return -1L;
        }
        while (true) {
            long j2 = ((long) (uVar.f10898d - uVar.c)) + jI;
            if (j2 > j) {
                break;
            }
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
            jI = j2;
        }
        if (targetBytes.F() == 2) {
            byte bJ3 = targetBytes.j(0);
            byte bJ4 = targetBytes.j(1);
            while (jI < I()) {
                byte[] bArr3 = uVar.b;
                i = (int) ((((long) uVar.c) + j) - jI);
                int i6 = uVar.f10898d;
                while (i < i6) {
                    byte b5 = bArr3[i];
                    if (b5 == bJ3 || b5 == bJ4) {
                        i2 = uVar.c;
                    } else {
                        i++;
                    }
                }
                jI += (long) (uVar.f10898d - uVar.c);
                uVar = uVar.f10901g;
                Intrinsics.checkNotNull(uVar);
                j = jI;
            }
            return -1L;
        }
        byte[] bArrU2 = targetBytes.u();
        while (jI < I()) {
            byte[] bArr4 = uVar.b;
            i = (int) ((((long) uVar.c) + j) - jI);
            int i7 = uVar.f10898d;
            while (i < i7) {
                byte b6 = bArr4[i];
                int length2 = bArrU2.length;
                int i8 = 0;
                while (i8 < length2) {
                    byte b7 = bArrU2[i8];
                    i8++;
                    if (b6 == b7) {
                        i2 = uVar.c;
                    }
                }
                i++;
            }
            jI += (long) (uVar.f10898d - uVar.c);
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
            j = jI;
        }
        return -1L;
        return ((long) (i - i2)) + jI;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        u uVar = this.a;
        if (uVar == null) {
            return -1;
        }
        int iMin = Math.min(sink.remaining(), uVar.f10898d - uVar.c);
        sink.put(uVar.b, uVar.c, iMin);
        int i = uVar.c + iMin;
        uVar.c = i;
        this.b -= (long) iMin;
        if (i == uVar.f10898d) {
            this.a = uVar.b();
            SegmentPool.recycle(uVar);
        }
        return iMin;
    }

    public int read(byte[] sink, int i, int i2) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        _UtilKt.checkOffsetAndCount(sink.length, i, i2);
        u uVar = this.a;
        if (uVar == null) {
            return -1;
        }
        int iMin = Math.min(i2, uVar.f10898d - uVar.c);
        byte[] bArr = uVar.b;
        int i3 = uVar.c;
        ArraysKt___ArraysJvmKt.copyInto(bArr, sink, i, i3, i3 + iMin);
        uVar.c += iMin;
        x(I() - ((long) iMin));
        if (uVar.c == uVar.f10898d) {
            this.a = uVar.b();
            SegmentPool.recycle(uVar);
        }
        return iMin;
    }

    @Override // okio.y
    public long read(Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        if (I() == 0) {
            return -1L;
        }
        if (j > I()) {
            j = I();
        }
        sink.n(this, j);
        return j;
    }

    @Override // okio.e
    public byte readByte() throws EOFException {
        if (I() == 0) {
            throw new EOFException();
        }
        u uVar = this.a;
        Intrinsics.checkNotNull(uVar);
        int i = uVar.c;
        int i2 = uVar.f10898d;
        int i3 = i + 1;
        byte b2 = uVar.b[i];
        x(I() - 1);
        if (i3 == i2) {
            this.a = uVar.b();
            SegmentPool.recycle(uVar);
        } else {
            uVar.c = i3;
        }
        return b2;
    }

    @Override // okio.e
    public byte[] readByteArray() {
        return readByteArray(I());
    }

    @Override // okio.e
    public byte[] readByteArray(long j) throws EOFException {
        if (!(j >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j)).toString());
        }
        if (I() < j) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j];
        readFully(bArr);
        return bArr;
    }

    @Override // okio.e
    public ByteString readByteString() {
        return readByteString(I());
    }

    @Override // okio.e
    public ByteString readByteString(long j) throws EOFException {
        if (!(j >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j)).toString());
        }
        if (I() < j) {
            throw new EOFException();
        }
        if (j < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            return new ByteString(readByteArray(j));
        }
        ByteString byteStringK = K((int) j);
        skip(j);
        return byteStringK;
    }

    @Override // okio.e
    public long readDecimalLong() throws EOFException {
        if (I() == 0) {
            throw new EOFException();
        }
        long j = -7;
        int i = 0;
        long j2 = 0;
        boolean z = false;
        boolean z2 = false;
        do {
            u uVar = this.a;
            Intrinsics.checkNotNull(uVar);
            byte[] bArr = uVar.b;
            int i2 = uVar.c;
            int i3 = uVar.f10898d;
            while (i2 < i3) {
                byte b2 = bArr[i2];
                byte b3 = (byte) 48;
                if (b2 >= b3 && b2 <= ((byte) 57)) {
                    int i4 = b3 - b2;
                    if (j2 < -922337203685477580L || (j2 == -922337203685477580L && i4 < j)) {
                        Buffer bufferWriteByte = new Buffer().writeDecimalLong(j2).writeByte(b2);
                        if (!z) {
                            bufferWriteByte.readByte();
                        }
                        throw new NumberFormatException(Intrinsics.stringPlus("Number too large: ", bufferWriteByte.readUtf8()));
                    }
                    j2 = (j2 * 10) + ((long) i4);
                } else {
                    if (b2 != ((byte) 45) || i != 0) {
                        z2 = true;
                        break;
                    }
                    j--;
                    z = true;
                }
                i2++;
                i++;
            }
            if (i2 == i3) {
                this.a = uVar.b();
                SegmentPool.recycle(uVar);
            } else {
                uVar.c = i2;
            }
            if (z2) {
                break;
            }
        } while (this.a != null);
        x(I() - ((long) i));
        if (i >= (z ? 2 : 1)) {
            return z ? j2 : -j2;
        }
        if (I() == 0) {
            throw new EOFException();
        }
        throw new NumberFormatException((z ? "Expected a digit" : "Expected a digit or '-'") + " but was 0x" + _UtilKt.toHexString(m(0L)));
    }

    public void readFully(byte[] sink) throws EOFException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i = 0;
        while (i < sink.length) {
            int i2 = read(sink, i, sink.length - i);
            if (i2 == -1) {
                throw new EOFException();
            }
            i += i2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0098 A[EDGE_INSN: B:43:0x0098->B:37:0x0098 BREAK  A[LOOP:0: B:5:0x000d->B:45:?], SYNTHETIC] */
    @Override // okio.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long readHexadecimalUnsignedLong() throws java.io.EOFException {
        /*
            r15 = this;
            long r0 = r15.I()
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto La2
            r0 = 0
            r4 = r2
            r1 = 0
        Ld:
            okio.u r6 = r15.a
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            byte[] r7 = r6.b
            int r8 = r6.c
            int r9 = r6.f10898d
        L18:
            if (r8 >= r9) goto L84
            r10 = r7[r8]
            r11 = 48
            byte r11 = (byte) r11
            if (r10 < r11) goto L29
            r12 = 57
            byte r12 = (byte) r12
            if (r10 > r12) goto L29
            int r11 = r10 - r11
            goto L43
        L29:
            r11 = 97
            byte r11 = (byte) r11
            if (r10 < r11) goto L38
            r12 = 102(0x66, float:1.43E-43)
            byte r12 = (byte) r12
            if (r10 > r12) goto L38
        L33:
            int r11 = r10 - r11
            int r11 = r11 + 10
            goto L43
        L38:
            r11 = 65
            byte r11 = (byte) r11
            if (r10 < r11) goto L70
            r12 = 70
            byte r12 = (byte) r12
            if (r10 > r12) goto L70
            goto L33
        L43:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L53
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L18
        L53:
            okio.Buffer r0 = new okio.Buffer
            r0.<init>()
            okio.Buffer r0 = r0.writeHexadecimalUnsignedLong(r4)
            okio.Buffer r0 = r0.writeByte(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r0 = r0.readUtf8()
            java.lang.String r2 = "Number too large: "
            java.lang.String r0 = kotlin.jvm.internal.Intrinsics.stringPlus(r2, r0)
            r1.<init>(r0)
            throw r1
        L70:
            if (r0 == 0) goto L74
            r1 = 1
            goto L84
        L74:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = okio._UtilKt.toHexString(r10)
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.String r1 = kotlin.jvm.internal.Intrinsics.stringPlus(r2, r1)
            r0.<init>(r1)
            throw r0
        L84:
            if (r8 != r9) goto L90
            okio.u r7 = r6.b()
            r15.a = r7
            okio.SegmentPool.recycle(r6)
            goto L92
        L90:
            r6.c = r8
        L92:
            if (r1 != 0) goto L98
            okio.u r6 = r15.a
            if (r6 != 0) goto Ld
        L98:
            long r1 = r15.I()
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.x(r1)
            return r4
        La2:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readHexadecimalUnsignedLong():long");
    }

    @Override // okio.e
    public int readInt() throws EOFException {
        if (I() < 4) {
            throw new EOFException();
        }
        u uVar = this.a;
        Intrinsics.checkNotNull(uVar);
        int i = uVar.c;
        int i2 = uVar.f10898d;
        if (i2 - i < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = uVar.b;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & 255);
        x(I() - 4);
        if (i8 == i2) {
            this.a = uVar.b();
            SegmentPool.recycle(uVar);
        } else {
            uVar.c = i8;
        }
        return i9;
    }

    @Override // okio.e
    public int readIntLe() throws EOFException {
        return _UtilKt.reverseBytes(readInt());
    }

    public long readLong() throws EOFException {
        if (I() < 8) {
            throw new EOFException();
        }
        u uVar = this.a;
        Intrinsics.checkNotNull(uVar);
        int i = uVar.c;
        int i2 = uVar.f10898d;
        if (i2 - i < 8) {
            return ((((long) readInt()) & 4294967295L) << 32) | (4294967295L & ((long) readInt()));
        }
        byte[] bArr = uVar.b;
        int i3 = i + 1;
        long j = (((long) bArr[i]) & 255) << 56;
        int i4 = i3 + 1;
        long j2 = j | ((((long) bArr[i3]) & 255) << 48);
        int i5 = i4 + 1;
        long j3 = j2 | ((((long) bArr[i4]) & 255) << 40);
        int i6 = i5 + 1;
        long j4 = ((((long) bArr[i5]) & 255) << 32) | j3;
        int i7 = i6 + 1;
        long j5 = j4 | ((((long) bArr[i6]) & 255) << 24);
        int i8 = i7 + 1;
        long j6 = j5 | ((((long) bArr[i7]) & 255) << 16);
        int i9 = i8 + 1;
        long j7 = j6 | ((((long) bArr[i8]) & 255) << 8);
        int i10 = i9 + 1;
        long j8 = j7 | (((long) bArr[i9]) & 255);
        x(I() - 8);
        if (i10 == i2) {
            this.a = uVar.b();
            SegmentPool.recycle(uVar);
        } else {
            uVar.c = i10;
        }
        return j8;
    }

    @Override // okio.e
    public long readLongLe() throws EOFException {
        return _UtilKt.reverseBytes(readLong());
    }

    @Override // okio.e
    public short readShort() throws EOFException {
        if (I() < 2) {
            throw new EOFException();
        }
        u uVar = this.a;
        Intrinsics.checkNotNull(uVar);
        int i = uVar.c;
        int i2 = uVar.f10898d;
        if (i2 - i < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = uVar.b;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
        x(I() - 2);
        if (i4 == i2) {
            this.a = uVar.b();
            SegmentPool.recycle(uVar);
        } else {
            uVar.c = i4;
        }
        return (short) i5;
    }

    @Override // okio.e
    public short readShortLe() throws EOFException {
        return _UtilKt.reverseBytes(readShort());
    }

    public String readString(long j, Charset charset) throws EOFException {
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (!(j >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j)).toString());
        }
        if (this.b < j) {
            throw new EOFException();
        }
        if (j == 0) {
            return "";
        }
        u uVar = this.a;
        Intrinsics.checkNotNull(uVar);
        int i = uVar.c;
        if (((long) i) + j > uVar.f10898d) {
            return new String(readByteArray(j), charset);
        }
        int i2 = (int) j;
        String str = new String(uVar.b, i, i2, charset);
        int i3 = uVar.c + i2;
        uVar.c = i3;
        this.b -= j;
        if (i3 == uVar.f10898d) {
            this.a = uVar.b();
            SegmentPool.recycle(uVar);
        }
        return str;
    }

    @Override // okio.e
    public String readString(Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        return readString(this.b, charset);
    }

    public String readUtf8() {
        return readString(this.b, Charsets.b);
    }

    @Override // okio.e
    public String readUtf8(long j) throws EOFException {
        return readString(j, Charsets.b);
    }

    public int readUtf8CodePoint() throws EOFException {
        int i;
        int i2;
        int i3;
        if (I() == 0) {
            throw new EOFException();
        }
        byte bM = m(0L);
        boolean z = false;
        if ((bM & 128) == 0) {
            i = bM & Ascii.DEL;
            i2 = 1;
            i3 = 0;
        } else if ((bM & 224) == 192) {
            i = bM & Ascii.US;
            i2 = 2;
            i3 = 128;
        } else if ((bM & 240) == 224) {
            i = bM & Ascii.SI;
            i2 = 3;
            i3 = 2048;
        } else {
            if ((bM & 248) != 240) {
                skip(1L);
                return 65533;
            }
            i = bM & 7;
            i2 = 4;
            i3 = 65536;
        }
        long j = i2;
        if (I() < j) {
            throw new EOFException("size < " + i2 + ": " + I() + " (to read code point prefixed 0x" + _UtilKt.toHexString(bM) + ')');
        }
        if (1 < i2) {
            int i4 = 1;
            while (true) {
                int i5 = i4 + 1;
                long j2 = i4;
                byte bM2 = m(j2);
                if ((bM2 & 192) != 128) {
                    skip(j2);
                    return 65533;
                }
                i = (i << 6) | (bM2 & 63);
                if (i5 >= i2) {
                    break;
                }
                i4 = i5;
            }
        }
        skip(j);
        if (i > 1114111) {
            return 65533;
        }
        if (55296 <= i && i <= 57343) {
            z = true;
        }
        if (!z && i >= i3) {
            return i;
        }
        return 65533;
    }

    @Override // okio.e
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.e
    public String readUtf8LineStrict(long j) throws EOFException {
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("limit < 0: ", Long.valueOf(j)).toString());
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        byte b2 = (byte) 10;
        long jIndexOf = indexOf(b2, 0L, j2);
        if (jIndexOf != -1) {
            return _BufferKt.readUtf8Line(this, jIndexOf);
        }
        if (j2 < I() && m(j2 - 1) == ((byte) 13) && m(j2) == b2) {
            return _BufferKt.readUtf8Line(this, j2);
        }
        Buffer buffer = new Buffer();
        j(buffer, 0L, Math.min(32, I()));
        throw new EOFException("\\n not found: limit=" + Math.min(I(), j) + " content=" + buffer.readByteString().q() + (char) 8230);
    }

    @Override // okio.e
    public boolean request(long j) {
        return this.b >= j;
    }

    @Override // okio.e
    public void require(long j) throws EOFException {
        if (this.b < j) {
            throw new EOFException();
        }
    }

    public boolean s(long j, ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return t(j, bytes, 0, bytes.F());
    }

    @Override // okio.e
    public void skip(long j) throws EOFException {
        while (j > 0) {
            u uVar = this.a;
            if (uVar == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j, uVar.f10898d - uVar.c);
            long j2 = iMin;
            x(I() - j2);
            j -= j2;
            int i = uVar.c + iMin;
            uVar.c = i;
            if (i == uVar.f10898d) {
                this.a = uVar.b();
                SegmentPool.recycle(uVar);
            }
        }
    }

    public boolean t(long j, ByteString bytes, int i, int i2) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (j < 0 || i < 0 || i2 < 0 || I() - j < i2 || bytes.F() - i < i2) {
            return false;
        }
        if (i2 > 0) {
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (m(((long) i3) + j) != bytes.j(i3 + i)) {
                    return false;
                }
                if (i4 >= i2) {
                    break;
                }
                i3 = i4;
            }
        }
        return true;
    }

    @Override // okio.y
    public z timeout() {
        return z.b;
    }

    public String toString() {
        return J().toString();
    }

    public final a u(a unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return _BufferKt.commonReadAndWriteUnsafe(this, unsafeCursor);
    }

    public void v(Buffer sink, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (I() >= j) {
            sink.n(this, j);
        } else {
            sink.n(this, I());
            throw new EOFException();
        }
    }

    public final a w(a unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return _BufferKt.commonReadUnsafe(this, unsafeCursor);
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer source) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        int iRemaining = source.remaining();
        int i = iRemaining;
        while (i > 0) {
            u uVarL = L(1);
            int iMin = Math.min(i, 8192 - uVarL.f10898d);
            source.get(uVarL.b, uVarL.f10898d, iMin);
            i -= iMin;
            uVarL.f10898d += iMin;
        }
        this.b += (long) iRemaining;
        return iRemaining;
    }

    public final void x(long j) {
        this.b = j;
    }

    @Override // okio.e, okio.d
    public Buffer y() {
        return this;
    }
}
