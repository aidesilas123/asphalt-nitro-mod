package okio;

import java.io.IOException;
import javax.crypto.Cipher;
import javax.crypto.ShortBufferException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CipherSink.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class f implements w {
    private final d a;
    private final Cipher b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f10862d;

    public f(d sink, Cipher cipher) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        this.a = sink;
        this.b = cipher;
        int blockSize = cipher.getBlockSize();
        this.c = blockSize;
        if (!(blockSize > 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("Block cipher required ", e()).toString());
        }
    }

    private final Throwable d() {
        int outputSize = this.b.getOutputSize(0);
        Throwable th = null;
        if (outputSize == 0) {
            return null;
        }
        Buffer bufferY = this.a.y();
        u uVarL = bufferY.L(outputSize);
        try {
            int iDoFinal = this.b.doFinal(uVarL.b, uVarL.f10898d);
            uVarL.f10898d += iDoFinal;
            bufferY.x(bufferY.I() + ((long) iDoFinal));
        } catch (Throwable th2) {
            th = th2;
        }
        if (uVarL.c == uVarL.f10898d) {
            bufferY.a = uVarL.b();
            SegmentPool.recycle(uVarL);
        }
        return th;
    }

    private final int f(Buffer buffer, long j) throws IOException, ShortBufferException {
        u uVar = buffer.a;
        Intrinsics.checkNotNull(uVar);
        int iMin = (int) Math.min(j, uVar.f10898d - uVar.c);
        Buffer bufferY = this.a.y();
        int outputSize = this.b.getOutputSize(iMin);
        while (outputSize > 8192) {
            int i = this.c;
            if (!(iMin > i)) {
                throw new IllegalStateException(("Unexpected output size " + outputSize + " for input size " + iMin).toString());
            }
            iMin -= i;
            outputSize = this.b.getOutputSize(iMin);
        }
        u uVarL = bufferY.L(outputSize);
        int iUpdate = this.b.update(uVar.b, uVar.c, iMin, uVarL.b, uVarL.f10898d);
        uVarL.f10898d += iUpdate;
        bufferY.x(bufferY.I() + ((long) iUpdate));
        if (uVarL.c == uVarL.f10898d) {
            bufferY.a = uVarL.b();
            SegmentPool.recycle(uVarL);
        }
        this.a.emitCompleteSegments();
        buffer.x(buffer.I() - ((long) iMin));
        int i2 = uVar.c + iMin;
        uVar.c = i2;
        if (i2 == uVar.f10898d) {
            buffer.a = uVar.b();
            SegmentPool.recycle(uVar);
        }
        return iMin;
    }

    @Override // okio.w, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f10862d) {
            return;
        }
        this.f10862d = true;
        Throwable thD = d();
        try {
            this.a.close();
        } catch (Throwable th) {
            if (thD == null) {
                thD = th;
            }
        }
        if (thD != null) {
            throw thD;
        }
    }

    public final Cipher e() {
        return this.b;
    }

    @Override // okio.w, java.io.Flushable
    public void flush() throws IOException {
        this.a.flush();
    }

    @Override // okio.w
    public void n(Buffer source, long j) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        _UtilKt.checkOffsetAndCount(source.I(), 0L, j);
        if (!(!this.f10862d)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j > 0) {
            j -= (long) f(source, j);
        }
    }

    @Override // okio.w
    public z timeout() {
        return this.a.timeout();
    }
}
