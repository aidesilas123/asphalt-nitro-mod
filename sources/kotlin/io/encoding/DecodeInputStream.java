package kotlin.io.encoding;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.share.internal.ShareConstants;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: kotlin.io.encoding.a, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Base64IOStream.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u000f\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0013\u001a\u00020\u0014H\u0016J \u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tH\u0002J(\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\tH\u0002J\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\tH\u0002J\b\u0010\u001d\u001a\u00020\tH\u0016J \u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tH\u0016J\b\u0010 \u001a\u00020\tH\u0002J\b\u0010!\u001a\u00020\u0014H\u0002J\b\u0010\"\u001a\u00020\u0014H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lkotlin/io/encoding/DecodeInputStream;", "Ljava/io/InputStream;", "input", "base64", "Lkotlin/io/encoding/Base64;", "(Ljava/io/InputStream;Lkotlin/io/encoding/Base64;)V", "byteBuffer", "", "byteBufferEndIndex", "", "byteBufferLength", "getByteBufferLength", "()I", "byteBufferStartIndex", "isClosed", "", "isEOF", "singleByteBuffer", "symbolBuffer", "close", "", "copyByteBufferInto", "dst", "dstOffset", "length", "decodeSymbolBufferInto", "dstEndIndex", "symbolBufferLength", "handlePaddingSymbol", "read", ShareConstants.DESTINATION, TypedValues.CycleType.S_WAVE_OFFSET, "readNextSymbol", "resetByteBufferIfEmpty", "shiftByteBufferToStartIfNeeded", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
final class DecodeInputStream extends InputStream {
    private final InputStream a;
    private final Base64 b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f8894d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f8895e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final byte[] f8896f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final byte[] f8897g;
    private int h;
    private int i;

    public DecodeInputStream(InputStream input, Base64 base64) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(base64, "base64");
        this.a = input;
        this.b = base64;
        this.f8895e = new byte[1];
        this.f8896f = new byte[1024];
        this.f8897g = new byte[1024];
    }

    private final void a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.f8897g;
        int i3 = this.h;
        ArraysKt___ArraysJvmKt.copyInto(bArr2, bArr, i, i3, i3 + i2);
        this.h += i2;
        g();
    }

    private final int b(byte[] bArr, int i, int i2, int i3) {
        int i4 = this.i;
        this.i = i4 + this.b.h(this.f8896f, this.f8897g, i4, 0, i3);
        int iMin = Math.min(d(), i2 - i);
        a(bArr, i, iMin);
        h();
        return iMin;
    }

    private final int d() {
        return this.i - this.h;
    }

    private final int e(int i) throws IOException {
        this.f8896f[i] = 61;
        if ((i & 3) != 2) {
            return i + 1;
        }
        int iF = f();
        if (iF >= 0) {
            this.f8896f[i + 1] = (byte) iF;
        }
        return i + 2;
    }

    private final int f() throws IOException {
        int i;
        if (!this.b.getF8892f()) {
            return this.a.read();
        }
        do {
            i = this.a.read();
            if (i == -1) {
                break;
            }
        } while (!Base64Kt.isInMimeAlphabet(i));
        return i;
    }

    private final void g() {
        if (this.h == this.i) {
            this.h = 0;
            this.i = 0;
        }
    }

    private final void h() {
        byte[] bArr = this.f8897g;
        int length = bArr.length;
        int i = this.i;
        if ((this.f8896f.length / 4) * 3 > length - i) {
            ArraysKt___ArraysJvmKt.copyInto(bArr, bArr, 0, this.h, i);
            this.i -= this.h;
            this.h = 0;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.c) {
            return;
        }
        this.c = true;
        this.a.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = this.h;
        if (i < this.i) {
            int i2 = this.f8897g[i] & 255;
            this.h = i + 1;
            g();
            return i2;
        }
        int i3 = read(this.f8895e, 0, 1);
        if (i3 == -1) {
            return -1;
        }
        if (i3 == 1) {
            return this.f8895e[0] & 255;
        }
        throw new IllegalStateException("Unreachable".toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0081, code lost:
    
        if (r4 != r11) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0083, code lost:
    
        if (r5 == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0088, code lost:
    
        return r4 - r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
    
        return -1;
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int read(byte[] r10, int r11, int r12) throws java.io.IOException {
        /*
            r9 = this;
            java.lang.String r0 = "destination"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            if (r11 < 0) goto L91
            if (r12 < 0) goto L91
            int r0 = r11 + r12
            int r1 = r10.length
            if (r0 > r1) goto L91
            boolean r1 = r9.c
            if (r1 != 0) goto L89
            boolean r1 = r9.f8894d
            r2 = -1
            if (r1 == 0) goto L18
            return r2
        L18:
            r1 = 0
            if (r12 != 0) goto L1c
            return r1
        L1c:
            int r3 = r9.d()
            if (r3 < r12) goto L26
            r9.a(r10, r11, r12)
            return r12
        L26:
            int r3 = r9.d()
            int r12 = r12 - r3
            int r12 = r12 + 3
            r3 = 1
            int r12 = r12 - r3
            int r12 = r12 / 3
            int r12 = r12 * 4
            r4 = r11
        L34:
            boolean r5 = r9.f8894d
            if (r5 != 0) goto L81
            if (r12 <= 0) goto L81
            byte[] r5 = r9.f8896f
            int r5 = r5.length
            int r5 = java.lang.Math.min(r5, r12)
            r6 = 0
        L42:
            boolean r7 = r9.f8894d
            if (r7 != 0) goto L64
            if (r6 >= r5) goto L64
            int r7 = r9.f()
            if (r7 == r2) goto L61
            r8 = 61
            if (r7 == r8) goto L5a
            byte[] r8 = r9.f8896f
            byte r7 = (byte) r7
            r8[r6] = r7
            int r6 = r6 + 1
            goto L42
        L5a:
            int r6 = r9.e(r6)
            r9.f8894d = r3
            goto L42
        L61:
            r9.f8894d = r3
            goto L42
        L64:
            if (r7 != 0) goto L6b
            if (r6 != r5) goto L69
            goto L6b
        L69:
            r5 = 0
            goto L6c
        L6b:
            r5 = 1
        L6c:
            if (r5 == 0) goto L75
            int r12 = r12 - r6
            int r5 = r9.b(r10, r4, r0, r6)
            int r4 = r4 + r5
            goto L34
        L75:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "Check failed."
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            throw r10
        L81:
            if (r4 != r11) goto L86
            if (r5 == 0) goto L86
            goto L88
        L86:
            int r2 = r4 - r11
        L88:
            return r2
        L89:
            java.io.IOException r10 = new java.io.IOException
            java.lang.String r11 = "The input stream is closed."
            r10.<init>(r11)
            throw r10
        L91:
            java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "offset: "
            r1.append(r2)
            r1.append(r11)
            java.lang.String r11 = ", length: "
            r1.append(r11)
            r1.append(r12)
            java.lang.String r11 = ", buffer size: "
            r1.append(r11)
            int r10 = r10.length
            r1.append(r10)
            java.lang.String r10 = r1.toString()
            r0.<init>(r10)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.encoding.DecodeInputStream.read(byte[], int, int):int");
    }
}
