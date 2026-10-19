package g.a.a;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class c extends Thread {
    private final PipedInputStream a;
    private final PipedOutputStream b;
    private final Runnable c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Throwable f8115d;

    class a implements Runnable {
        final /* synthetic */ g.a.a.a a;
        final /* synthetic */ InputStream b;

        a(g.a.a.a aVar, InputStream inputStream) {
            this.a = aVar;
            this.b = inputStream;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.a.a(this.b, c.this.b);
                c cVar = c.this;
                cVar.e(cVar.b);
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public c(g.a.a.a aVar, InputStream inputStream) throws IOException {
        PipedInputStream pipedInputStream = new PipedInputStream();
        this.a = pipedInputStream;
        this.b = new PipedOutputStream(pipedInputStream);
        this.c = new a(aVar, inputStream);
    }

    public void c() throws IOException {
        Throwable th = this.f8115d;
        if (th != null) {
            if (!(th instanceof IOException)) {
                throw new IOException(this.f8115d);
            }
            throw ((IOException) th);
        }
    }

    protected boolean d(Closeable closeable) {
        if (closeable == null) {
            return false;
        }
        try {
            closeable.close();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    protected boolean e(Flushable flushable) {
        if (flushable == null) {
            return false;
        }
        try {
            flushable.flush();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public PipedInputStream f() {
        return this.a;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.c.run();
    }
}
