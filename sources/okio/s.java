package okio;

import java.io.IOException;
import java.io.OutputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JvmOkio.kt */
/* JADX INFO: loaded from: classes5.dex */
final class s implements w {
    private final OutputStream a;
    private final z b;

    public s(OutputStream out, z timeout) {
        Intrinsics.checkNotNullParameter(out, "out");
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        this.a = out;
        this.b = timeout;
    }

    @Override // okio.w, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.a.close();
    }

    @Override // okio.w, java.io.Flushable
    public void flush() throws IOException {
        this.a.flush();
    }

    @Override // okio.w
    public void n(Buffer source, long j) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        _UtilKt.checkOffsetAndCount(source.I(), 0L, j);
        while (j > 0) {
            this.b.f();
            u uVar = source.a;
            Intrinsics.checkNotNull(uVar);
            int iMin = (int) Math.min(j, uVar.f10898d - uVar.c);
            this.a.write(uVar.b, uVar.c, iMin);
            uVar.c += iMin;
            long j2 = iMin;
            j -= j2;
            source.x(source.I() - j2);
            if (uVar.c == uVar.f10898d) {
                source.a = uVar.b();
                SegmentPool.recycle(uVar);
            }
        }
    }

    @Override // okio.w
    public z timeout() {
        return this.b;
    }

    public String toString() {
        return "sink(" + this.a + ')';
    }
}
