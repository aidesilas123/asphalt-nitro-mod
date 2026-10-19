package okio;

import java.io.EOFException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Okio.kt */
/* JADX INFO: loaded from: classes5.dex */
final class c implements w {
    @Override // okio.w, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // okio.w, java.io.Flushable
    public void flush() {
    }

    @Override // okio.w
    public void n(Buffer source, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(source, "source");
        source.skip(j);
    }

    @Override // okio.w
    public z timeout() {
        return z.b;
    }
}
