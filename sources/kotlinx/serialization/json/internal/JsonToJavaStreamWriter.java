package kotlinx.serialization.json.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: renamed from: kotlinx.serialization.json.internal.d0, reason: from Kotlin metadata */
/* JADX INFO: compiled from: JvmJsonStreams.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0011\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\nH\u0082\bJ\u0018\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J\b\u0010\u0015\u001a\u00020\fH\u0002J\b\u0010\u0016\u001a\u00020\fH\u0016J\t\u0010\u0017\u001a\u00020\nH\u0082\bJ\u0011\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\nH\u0082\bJ\u0010\u0010\u0018\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u000fH\u0016J\u0010\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u000fH\u0016J\u0018\u0010\"\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010#\u001a\u00020\nH\u0002J\u0010\u0010$\u001a\u00020\f2\u0006\u0010%\u001a\u00020\nH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;", "Lkotlinx/serialization/json/internal/JsonWriter;", "stream", "Ljava/io/OutputStream;", "(Ljava/io/OutputStream;)V", "buffer", "", "charArray", "", "indexInBuffer", "", "appendStringSlowPath", "", "currentSize", TypedValues.Custom.S_STRING, "", "ensure", "bytesCount", "ensureTotalCapacity", "oldSize", "additional", "flush", "release", "rest", "write", "byte", "text", "writeChar", "char", "", "writeLong", "value", "", "writeQuoted", "writeUtf8", "count", "writeUtf8CodePoint", "codePoint", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public final class JsonToJavaStreamWriter implements JsonWriter {
    private final OutputStream a;
    private final byte[] b;
    private char[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10496d;

    public JsonToJavaStreamWriter(OutputStream stream) {
        Intrinsics.checkNotNullParameter(stream, "stream");
        this.a = stream;
        this.b = ByteArrayPool.a.b();
        this.c = CharArrayPool.a.b();
    }

    private final void d(int i, String str) throws IOException {
        byte b;
        int length = str.length();
        for (int i2 = i - 1; i2 < length; i2++) {
            int iE = e(i, 2);
            char cCharAt = str.charAt(i2);
            if (cCharAt >= StringOpsKt.getESCAPE_MARKERS().length || (b = StringOpsKt.getESCAPE_MARKERS()[cCharAt]) == 0) {
                int i3 = iE + 1;
                this.c[iE] = cCharAt;
                i = i3;
            } else {
                if (b == 1) {
                    String str2 = StringOpsKt.getESCAPE_STRINGS()[cCharAt];
                    Intrinsics.checkNotNull(str2);
                    int iE2 = e(iE, str2.length());
                    str2.getChars(0, str2.length(), this.c, iE2);
                    i = iE2 + str2.length();
                } else {
                    char[] cArr = this.c;
                    cArr[iE] = '\\';
                    cArr[iE + 1] = (char) b;
                    i = iE + 2;
                }
            }
        }
        e(i, 1);
        char[] cArr2 = this.c;
        cArr2[i] = '\"';
        h(cArr2, i + 1);
        f();
    }

    private final int e(int i, int i2) {
        int i3 = i2 + i;
        char[] cArr = this.c;
        if (cArr.length <= i3) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, RangesKt___RangesKt.coerceAtLeast(i3, i * 2));
            Intrinsics.checkNotNullExpressionValue(cArrCopyOf, "copyOf(this, newSize)");
            this.c = cArrCopyOf;
        }
        return i;
    }

    private final void f() throws IOException {
        this.a.write(this.b, 0, this.f10496d);
        this.f10496d = 0;
    }

    private final void h(char[] cArr, int i) throws IOException {
        if (!(i >= 0)) {
            throw new IllegalArgumentException("count < 0".toString());
        }
        if (!(i <= cArr.length)) {
            throw new IllegalArgumentException(("count > string.length: " + i + " > " + cArr.length).toString());
        }
        int i2 = 0;
        while (i2 < i) {
            char c = cArr[i2];
            if (c < 128) {
                if (this.b.length - this.f10496d < 1) {
                    f();
                }
                byte[] bArr = this.b;
                int i3 = this.f10496d;
                int i4 = i3 + 1;
                this.f10496d = i4;
                bArr[i3] = (byte) c;
                i2++;
                int iMin = Math.min(i, (bArr.length - i4) + i2);
                while (i2 < iMin) {
                    char c2 = cArr[i2];
                    if (c2 < 128) {
                        byte[] bArr2 = this.b;
                        int i5 = this.f10496d;
                        this.f10496d = i5 + 1;
                        bArr2[i5] = (byte) c2;
                        i2++;
                    }
                }
            } else {
                if (c < 2048) {
                    if (this.b.length - this.f10496d < 2) {
                        f();
                    }
                    int i6 = (c >> 6) | PsExtractor.AUDIO_STREAM;
                    byte[] bArr3 = this.b;
                    int i7 = this.f10496d;
                    int i8 = i7 + 1;
                    this.f10496d = i8;
                    bArr3[i7] = (byte) i6;
                    this.f10496d = i8 + 1;
                    bArr3[i8] = (byte) ((c & '?') | 128);
                } else if (c < 55296 || c > 57343) {
                    if (this.b.length - this.f10496d < 3) {
                        f();
                    }
                    byte[] bArr4 = this.b;
                    int i9 = this.f10496d;
                    int i10 = i9 + 1;
                    this.f10496d = i10;
                    bArr4[i9] = (byte) ((c >> '\f') | 224);
                    int i11 = i10 + 1;
                    this.f10496d = i11;
                    bArr4[i10] = (byte) (((c >> 6) & 63) | 128);
                    this.f10496d = i11 + 1;
                    bArr4[i11] = (byte) ((c & '?') | 128);
                } else {
                    int i12 = i2 + 1;
                    char c3 = i12 < i ? cArr[i12] : (char) 0;
                    if (c <= 56319) {
                        if (56320 <= c3 && c3 < 57344) {
                            int i13 = (((c & 1023) << 10) | (c3 & 1023)) + 65536;
                            if (this.b.length - this.f10496d < 4) {
                                f();
                            }
                            int i14 = (i13 >> 18) | PsExtractor.VIDEO_STREAM_MASK;
                            byte[] bArr5 = this.b;
                            int i15 = this.f10496d;
                            int i16 = i15 + 1;
                            this.f10496d = i16;
                            bArr5[i15] = (byte) i14;
                            int i17 = i16 + 1;
                            this.f10496d = i17;
                            bArr5[i16] = (byte) (((i13 >> 12) & 63) | 128);
                            int i18 = i17 + 1;
                            this.f10496d = i18;
                            bArr5[i17] = (byte) (((i13 >> 6) & 63) | 128);
                            this.f10496d = i18 + 1;
                            bArr5[i18] = (byte) ((i13 & 63) | 128);
                            i2 += 2;
                        }
                    }
                    if (this.b.length - this.f10496d < 1) {
                        f();
                    }
                    byte[] bArr6 = this.b;
                    int i19 = this.f10496d;
                    this.f10496d = i19 + 1;
                    bArr6[i19] = (byte) 63;
                    i2 = i12;
                }
                i2++;
            }
        }
    }

    private final void i(int i) throws IOException {
        if (i < 128) {
            if (this.b.length - this.f10496d < 1) {
                f();
            }
            byte[] bArr = this.b;
            int i2 = this.f10496d;
            this.f10496d = i2 + 1;
            bArr[i2] = (byte) i;
            return;
        }
        if (i < 2048) {
            if (this.b.length - this.f10496d < 2) {
                f();
            }
            int i3 = (i >> 6) | PsExtractor.AUDIO_STREAM;
            byte[] bArr2 = this.b;
            int i4 = this.f10496d;
            int i5 = i4 + 1;
            this.f10496d = i5;
            bArr2[i4] = (byte) i3;
            this.f10496d = i5 + 1;
            bArr2[i5] = (byte) ((i & 63) | 128);
            return;
        }
        boolean z = false;
        if (55296 <= i && i < 57344) {
            z = true;
        }
        if (z) {
            if (this.b.length - this.f10496d < 1) {
                f();
            }
            byte[] bArr3 = this.b;
            int i6 = this.f10496d;
            this.f10496d = i6 + 1;
            bArr3[i6] = (byte) 63;
            return;
        }
        if (i < 65536) {
            if (this.b.length - this.f10496d < 3) {
                f();
            }
            byte[] bArr4 = this.b;
            int i7 = this.f10496d;
            int i8 = i7 + 1;
            this.f10496d = i8;
            bArr4[i7] = (byte) ((i >> 12) | 224);
            int i9 = i8 + 1;
            this.f10496d = i9;
            bArr4[i8] = (byte) (((i >> 6) & 63) | 128);
            this.f10496d = i9 + 1;
            bArr4[i9] = (byte) ((i & 63) | 128);
            return;
        }
        if (i > 1114111) {
            throw new JsonEncodingException("Unexpected code point: " + i);
        }
        if (this.b.length - this.f10496d < 4) {
            f();
        }
        int i10 = (i >> 18) | PsExtractor.VIDEO_STREAM_MASK;
        byte[] bArr5 = this.b;
        int i11 = this.f10496d;
        int i12 = i11 + 1;
        this.f10496d = i12;
        bArr5[i11] = (byte) i10;
        int i13 = i12 + 1;
        this.f10496d = i13;
        bArr5[i12] = (byte) (((i >> 12) & 63) | 128);
        int i14 = i13 + 1;
        this.f10496d = i14;
        bArr5[i13] = (byte) (((i >> 6) & 63) | 128);
        this.f10496d = i14 + 1;
        bArr5[i14] = (byte) ((i & 63) | 128);
    }

    @Override // kotlinx.serialization.json.internal.JsonWriter
    public void a(char c) throws IOException {
        i(c);
    }

    @Override // kotlinx.serialization.json.internal.JsonWriter
    public void b(String text) throws IOException {
        Intrinsics.checkNotNullParameter(text, "text");
        e(0, text.length() + 2);
        char[] cArr = this.c;
        cArr[0] = '\"';
        int length = text.length();
        text.getChars(0, length, cArr, 1);
        int i = length + 1;
        for (int i2 = 1; i2 < i; i2++) {
            char c = cArr[i2];
            if (c < StringOpsKt.getESCAPE_MARKERS().length && StringOpsKt.getESCAPE_MARKERS()[c] != 0) {
                d(i2, text);
                return;
            }
        }
        cArr[i] = '\"';
        h(cArr, length + 2);
        f();
    }

    @Override // kotlinx.serialization.json.internal.JsonWriter
    public void c(String text) throws IOException {
        Intrinsics.checkNotNullParameter(text, "text");
        int length = text.length();
        e(0, length);
        text.getChars(0, length, this.c, 0);
        h(this.c, length);
    }

    public void g() throws IOException {
        f();
        CharArrayPool.a.a(this.c);
        ByteArrayPool.a.a(this.b);
    }

    @Override // kotlinx.serialization.json.internal.JsonWriter
    public void writeLong(long value) throws IOException {
        c(String.valueOf(value));
    }
}
