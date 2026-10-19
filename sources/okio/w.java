package okio;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* JADX INFO: compiled from: Sink.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface w extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;

    void n(Buffer buffer, long j) throws IOException;

    z timeout();
}
