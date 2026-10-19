package okio;

import java.io.IOException;
import java.util.zip.Deflater;
import kotlin.jvm.internal.Intrinsics;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: compiled from: DeflaterSink.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class h implements w {
    private final d a;
    private final Deflater b;
    private boolean c;

    public h(d sink, Deflater deflater) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        Intrinsics.checkNotNullParameter(deflater, "deflater");
        this.a = sink;
        this.b = deflater;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public h(w sink, Deflater deflater) {
        this(Okio.buffer(sink), deflater);
        Intrinsics.checkNotNullParameter(sink, "sink");
        Intrinsics.checkNotNullParameter(deflater, "deflater");
    }

    @IgnoreJRERequirement
    private final void a(boolean z) throws IOException {
        u uVarL;
        int iDeflate;
        Buffer bufferY = this.a.y();
        while (true) {
            uVarL = bufferY.L(1);
            if (z) {
                Deflater deflater = this.b;
                byte[] bArr = uVarL.b;
                int i = uVarL.f10898d;
                iDeflate = deflater.deflate(bArr, i, 8192 - i, 2);
            } else {
                Deflater deflater2 = this.b;
                byte[] bArr2 = uVarL.b;
                int i2 = uVarL.f10898d;
                iDeflate = deflater2.deflate(bArr2, i2, 8192 - i2);
            }
            if (iDeflate > 0) {
                uVarL.f10898d += iDeflate;
                bufferY.x(bufferY.I() + ((long) iDeflate));
                this.a.emitCompleteSegments();
            } else if (this.b.needsInput()) {
                break;
            }
        }
        if (uVarL.c == uVarL.f10898d) {
            bufferY.a = uVarL.b();
            SegmentPool.recycle(uVarL);
        }
    }

    @Override // okio.w, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.c) {
            return;
        }
        Throwable th = null;
        try {
            d();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.b.end();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.a.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.c = true;
        if (th != null) {
            throw th;
        }
    }

    public final void d() throws IOException {
        this.b.finish();
        a(false);
    }

    @Override // okio.w, java.io.Flushable
    public void flush() throws IOException {
        a(true);
        this.a.flush();
    }

    @Override // okio.w
    public void n(Buffer source, long j) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        _UtilKt.checkOffsetAndCount(source.I(), 0L, j);
        while (j > 0) {
            u uVar = source.a;
            Intrinsics.checkNotNull(uVar);
            int iMin = (int) Math.min(j, uVar.f10898d - uVar.c);
            this.b.setInput(uVar.b, uVar.c, iMin);
            a(false);
            long j2 = iMin;
            source.x(source.I() - j2);
            int i = uVar.c + iMin;
            uVar.c = i;
            if (i == uVar.f10898d) {
                source.a = uVar.b();
                SegmentPool.recycle(uVar);
            }
            j -= j2;
        }
    }

    @Override // okio.w
    public z timeout() {
        return this.a.timeout();
    }

    public String toString() {
        return "DeflaterSink(" + this.a + ')';
    }
}
