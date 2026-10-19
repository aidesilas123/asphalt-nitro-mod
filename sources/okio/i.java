package okio;

import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ForwardingSink.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class i implements w {
    private final w a;

    public i(w delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.a = delegate;
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
        this.a.n(source, j);
    }

    @Override // okio.w
    public z timeout() {
        return this.a.timeout();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((Object) getClass().getSimpleName());
        sb.append('(');
        sb.append(this.a);
        sb.append(')');
        return sb.toString();
    }
}
