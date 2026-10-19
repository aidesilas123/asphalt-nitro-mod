package app.cash.quickjs;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class QuickJs implements Closeable {
    private long a;

    static {
        a.a();
    }

    private QuickJs(long j) {
        this.a = j;
    }

    private native Object call(long j, long j2, Object obj, Object[] objArr);

    private native byte[] compile(long j, String str, String str2);

    @NonNull
    public static QuickJs create() {
        long jCreateContext = createContext();
        if (jCreateContext != 0) {
            return new QuickJs(jCreateContext);
        }
        throw new OutOfMemoryError("Cannot create QuickJs instance");
    }

    private static native long createContext();

    private native void destroyContext(long j);

    private native Object evaluate(long j, String str, String str2);

    private native Object execute(long j, byte[] bArr);

    private native long get(long j, String str, Object[] objArr);

    private native void set(long j, String str, Object obj, Object[] objArr);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        long j = this.a;
        if (j != 0) {
            this.a = 0L;
            destroyContext(j);
        }
    }

    protected void finalize() {
        if (this.a != 0) {
            Logger.getLogger(QuickJs.class.getName()).warning("QuickJs instance leaked!");
        }
    }

    @Nullable
    public Object i(@NonNull String str) {
        return evaluate(this.a, str, "?");
    }
}
