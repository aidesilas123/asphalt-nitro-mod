package kotlin.io.encoding;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.share.internal.ShareConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.io.IOException;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: kotlin.io.encoding.b, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Base64IOStream.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\r\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u000e\u001a\u00020\u000fH\u0002J\b\u0010\u0010\u001a\u00020\u000fH\u0016J \u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\tH\u0002J\b\u0010\u0015\u001a\u00020\u000fH\u0002J \u0010\u0016\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\tH\u0002J\b\u0010\u0017\u001a\u00020\u000fH\u0016J \u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\tH\u0016J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lkotlin/io/encoding/EncodeOutputStream;", "Ljava/io/OutputStream;", "output", "base64", "Lkotlin/io/encoding/Base64;", "(Ljava/io/OutputStream;Lkotlin/io/encoding/Base64;)V", "byteBuffer", "", "byteBufferLength", "", "isClosed", "", "lineLength", "symbolBuffer", "checkOpen", "", "close", "copyIntoByteBuffer", ShareConstants.FEED_SOURCE_PARAM, "startIndex", "endIndex", "encodeByteBufferIntoOutput", "encodeIntoOutput", "flush", "write", TypedValues.CycleType.S_WAVE_OFFSET, "length", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
final class EncodeOutputStream extends OutputStream {
    private final OutputStream a;
    private final Base64 b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8898d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f8899e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final byte[] f8900f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f8901g;

    public EncodeOutputStream(OutputStream output, Base64 base64) {
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(base64, "base64");
        this.a = output;
        this.b = base64;
        this.f8898d = base64.getF8892f() ? 76 : -1;
        this.f8899e = new byte[1024];
        this.f8900f = new byte[3];
    }

    private final void d() throws IOException {
        if (this.c) {
            throw new IOException("The output stream is closed.");
        }
    }

    private final int e(byte[] bArr, int i, int i2) {
        int iMin = Math.min(3 - this.f8901g, i2 - i);
        ArraysKt___ArraysJvmKt.copyInto(bArr, this.f8900f, this.f8901g, i, i + iMin);
        int i3 = this.f8901g + iMin;
        this.f8901g = i3;
        if (i3 == 3) {
            f();
        }
        return iMin;
    }

    private final void f() {
        if (!(g(this.f8900f, 0, this.f8901g) == 4)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        this.f8901g = 0;
    }

    private final int g(byte[] bArr, int i, int i2) throws IOException {
        int iK = this.b.k(bArr, this.f8899e, 0, i, i2);
        if (this.f8898d == 0) {
            this.a.write(Base64.a.t());
            this.f8898d = 76;
            if (!(iK <= 76)) {
                throw new IllegalStateException("Check failed.".toString());
            }
        }
        this.a.write(this.f8899e, 0, iK);
        this.f8898d -= iK;
        return iK;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.c) {
            return;
        }
        this.c = true;
        if (this.f8901g != 0) {
            f();
        }
        this.a.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        d();
        this.a.flush();
    }

    @Override // java.io.OutputStream
    public void write(int b) throws IOException {
        d();
        byte[] bArr = this.f8900f;
        int i = this.f8901g;
        int i2 = i + 1;
        this.f8901g = i2;
        bArr[i] = (byte) b;
        if (i2 == 3) {
            f();
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] source, int offset, int length) throws IOException {
        int i;
        Intrinsics.checkNotNullParameter(source, "source");
        d();
        if (offset < 0 || length < 0 || (i = offset + length) > source.length) {
            throw new IndexOutOfBoundsException("offset: " + offset + ", length: " + length + ", source size: " + source.length);
        }
        if (length == 0) {
            return;
        }
        int i2 = this.f8901g;
        if (!(i2 < 3)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (i2 != 0) {
            offset += e(source, offset, i);
            if (this.f8901g != 0) {
                return;
            }
        }
        while (offset + 3 <= i) {
            int iMin = Math.min((this.b.getF8892f() ? this.f8898d : this.f8899e.length) / 4, (i - offset) / 3);
            int i3 = (iMin * 3) + offset;
            if (!(g(source, offset, i3) == iMin * 4)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            offset = i3;
        }
        ArraysKt___ArraysJvmKt.copyInto(source, this.f8900f, 0, offset, i);
        this.f8901g = i - offset;
    }
}
