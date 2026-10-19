package okio;

import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JvmOkio.kt */
/* JADX INFO: loaded from: classes5.dex */
class o implements y {
    private final InputStream a;
    private final z b;

    public o(InputStream input, z timeout) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        this.a = input;
        this.b = timeout;
    }

    @Override // okio.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.a.close();
    }

    @Override // okio.y
    public long read(Buffer sink, long j) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j == 0) {
            return 0L;
        }
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        try {
            this.b.f();
            u uVarL = sink.L(1);
            int i = this.a.read(uVarL.b, uVarL.f10898d, (int) Math.min(j, 8192 - uVarL.f10898d));
            if (i != -1) {
                uVarL.f10898d += i;
                long j2 = i;
                sink.x(sink.I() + j2);
                return j2;
            }
            if (uVarL.c != uVarL.f10898d) {
                return -1L;
            }
            sink.a = uVarL.b();
            SegmentPool.recycle(uVarL);
            return -1L;
        } catch (AssertionError e2) {
            if (Okio.isAndroidGetsocknameError(e2)) {
                throw new IOException(e2);
            }
            throw e2;
        }
    }

    @Override // okio.y
    public z timeout() {
        return this.b;
    }

    public String toString() {
        return "source(" + this.a + ')';
    }
}
