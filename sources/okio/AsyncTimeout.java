package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AsyncTimeout.kt */
/* JADX INFO: loaded from: classes5.dex */
public class AsyncTimeout extends z {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f10841f = new Companion(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final long f10842g;
    private static final long h;
    private static AsyncTimeout i;
    private boolean j;
    private AsyncTimeout k;
    private long l;

    /* JADX INFO: compiled from: AsyncTimeout.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean b(AsyncTimeout asyncTimeout) {
            synchronized (AsyncTimeout.class) {
                if (!asyncTimeout.j) {
                    return false;
                }
                asyncTimeout.j = false;
                for (AsyncTimeout asyncTimeout2 = AsyncTimeout.i; asyncTimeout2 != null; asyncTimeout2 = asyncTimeout2.k) {
                    if (asyncTimeout2.k == asyncTimeout) {
                        asyncTimeout2.k = asyncTimeout.k;
                        asyncTimeout.k = null;
                        return false;
                    }
                }
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void c(AsyncTimeout asyncTimeout, long j, boolean z) {
            synchronized (AsyncTimeout.class) {
                if (!(!asyncTimeout.j)) {
                    throw new IllegalStateException("Unbalanced enter/exit".toString());
                }
                asyncTimeout.j = true;
                if (AsyncTimeout.i == null) {
                    Companion companion = AsyncTimeout.f10841f;
                    AsyncTimeout.i = new AsyncTimeout();
                    new a().start();
                }
                long jNanoTime = System.nanoTime();
                if (j != 0 && z) {
                    asyncTimeout.l = Math.min(j, asyncTimeout.c() - jNanoTime) + jNanoTime;
                } else if (j != 0) {
                    asyncTimeout.l = j + jNanoTime;
                } else {
                    if (!z) {
                        throw new AssertionError();
                    }
                    asyncTimeout.l = asyncTimeout.c();
                }
                long jM = asyncTimeout.m(jNanoTime);
                AsyncTimeout asyncTimeout2 = AsyncTimeout.i;
                Intrinsics.checkNotNull(asyncTimeout2);
                while (asyncTimeout2.k != null) {
                    AsyncTimeout asyncTimeout3 = asyncTimeout2.k;
                    Intrinsics.checkNotNull(asyncTimeout3);
                    if (jM < asyncTimeout3.m(jNanoTime)) {
                        break;
                    }
                    asyncTimeout2 = asyncTimeout2.k;
                    Intrinsics.checkNotNull(asyncTimeout2);
                }
                asyncTimeout.k = asyncTimeout2.k;
                asyncTimeout2.k = asyncTimeout;
                if (asyncTimeout2 == AsyncTimeout.i) {
                    AsyncTimeout.class.notify();
                }
                kotlin.v vVar = kotlin.v.a;
            }
        }

        public final AsyncTimeout a() throws InterruptedException {
            AsyncTimeout asyncTimeout = AsyncTimeout.i;
            Intrinsics.checkNotNull(asyncTimeout);
            AsyncTimeout asyncTimeout2 = asyncTimeout.k;
            if (asyncTimeout2 == null) {
                long jNanoTime = System.nanoTime();
                AsyncTimeout.class.wait(AsyncTimeout.f10842g);
                AsyncTimeout asyncTimeout3 = AsyncTimeout.i;
                Intrinsics.checkNotNull(asyncTimeout3);
                if (asyncTimeout3.k != null || System.nanoTime() - jNanoTime < AsyncTimeout.h) {
                    return null;
                }
                return AsyncTimeout.i;
            }
            long jM = asyncTimeout2.m(System.nanoTime());
            if (jM > 0) {
                long j = jM / 1000000;
                AsyncTimeout.class.wait(j, (int) (jM - (1000000 * j)));
                return null;
            }
            AsyncTimeout asyncTimeout4 = AsyncTimeout.i;
            Intrinsics.checkNotNull(asyncTimeout4);
            asyncTimeout4.k = asyncTimeout2.k;
            asyncTimeout2.k = null;
            return asyncTimeout2;
        }
    }

    /* JADX INFO: compiled from: AsyncTimeout.kt */
    private static final class a extends Thread {
        public a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            AsyncTimeout asyncTimeoutA;
            while (true) {
                try {
                    synchronized (AsyncTimeout.class) {
                        asyncTimeoutA = AsyncTimeout.f10841f.a();
                        if (asyncTimeoutA == AsyncTimeout.i) {
                            AsyncTimeout.i = null;
                            return;
                        }
                        kotlin.v vVar = kotlin.v.a;
                    }
                    if (asyncTimeoutA != null) {
                        asyncTimeoutA.p();
                    }
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    /* JADX INFO: compiled from: AsyncTimeout.kt */
    public static final class b implements w {
        final /* synthetic */ w b;

        b(w wVar) {
            this.b = wVar;
        }

        @Override // okio.w, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            AsyncTimeout asyncTimeout = AsyncTimeout.this;
            w wVar = this.b;
            asyncTimeout.j();
            try {
                wVar.close();
                kotlin.v vVar = kotlin.v.a;
                if (asyncTimeout.k()) {
                    throw asyncTimeout.i(null);
                }
            } catch (IOException e2) {
                if (!asyncTimeout.k()) {
                    throw e2;
                }
                throw asyncTimeout.i(e2);
            } finally {
                asyncTimeout.k();
            }
        }

        @Override // okio.w
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public AsyncTimeout timeout() {
            return AsyncTimeout.this;
        }

        @Override // okio.w, java.io.Flushable
        public void flush() throws IOException {
            AsyncTimeout asyncTimeout = AsyncTimeout.this;
            w wVar = this.b;
            asyncTimeout.j();
            try {
                wVar.flush();
                kotlin.v vVar = kotlin.v.a;
                if (asyncTimeout.k()) {
                    throw asyncTimeout.i(null);
                }
            } catch (IOException e2) {
                if (!asyncTimeout.k()) {
                    throw e2;
                }
                throw asyncTimeout.i(e2);
            } finally {
                asyncTimeout.k();
            }
        }

        @Override // okio.w
        public void n(Buffer source, long j) throws IOException {
            Intrinsics.checkNotNullParameter(source, "source");
            _UtilKt.checkOffsetAndCount(source.I(), 0L, j);
            while (true) {
                long j2 = 0;
                if (j <= 0) {
                    return;
                }
                u uVar = source.a;
                Intrinsics.checkNotNull(uVar);
                while (true) {
                    if (j2 >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                        break;
                    }
                    j2 += (long) (uVar.f10898d - uVar.c);
                    if (j2 >= j) {
                        j2 = j;
                        break;
                    } else {
                        uVar = uVar.f10901g;
                        Intrinsics.checkNotNull(uVar);
                    }
                }
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                w wVar = this.b;
                asyncTimeout.j();
                try {
                    wVar.n(source, j2);
                    kotlin.v vVar = kotlin.v.a;
                    if (asyncTimeout.k()) {
                        throw asyncTimeout.i(null);
                    }
                    j -= j2;
                } catch (IOException e2) {
                    if (!asyncTimeout.k()) {
                        throw e2;
                    }
                    throw asyncTimeout.i(e2);
                } finally {
                    asyncTimeout.k();
                }
            }
        }

        public String toString() {
            return "AsyncTimeout.sink(" + this.b + ')';
        }
    }

    /* JADX INFO: compiled from: AsyncTimeout.kt */
    public static final class c implements y {
        final /* synthetic */ y b;

        c(y yVar) {
            this.b = yVar;
        }

        @Override // okio.y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            AsyncTimeout asyncTimeout = AsyncTimeout.this;
            y yVar = this.b;
            asyncTimeout.j();
            try {
                yVar.close();
                kotlin.v vVar = kotlin.v.a;
                if (asyncTimeout.k()) {
                    throw asyncTimeout.i(null);
                }
            } catch (IOException e2) {
                if (!asyncTimeout.k()) {
                    throw e2;
                }
                throw asyncTimeout.i(e2);
            } finally {
                asyncTimeout.k();
            }
        }

        @Override // okio.y
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public AsyncTimeout timeout() {
            return AsyncTimeout.this;
        }

        @Override // okio.y
        public long read(Buffer sink, long j) throws IOException {
            Intrinsics.checkNotNullParameter(sink, "sink");
            AsyncTimeout asyncTimeout = AsyncTimeout.this;
            y yVar = this.b;
            asyncTimeout.j();
            try {
                long j2 = yVar.read(sink, j);
                if (asyncTimeout.k()) {
                    throw asyncTimeout.i(null);
                }
                return j2;
            } catch (IOException e2) {
                if (asyncTimeout.k()) {
                    throw asyncTimeout.i(e2);
                }
                throw e2;
            } finally {
                asyncTimeout.k();
            }
        }

        public String toString() {
            return "AsyncTimeout.source(" + this.b + ')';
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f10842g = millis;
        h = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long m(long j) {
        return this.l - j;
    }

    public final IOException i(IOException iOException) {
        return l(iOException);
    }

    public final void j() {
        long jH = h();
        boolean zE = e();
        if (jH != 0 || zE) {
            f10841f.c(this, jH, zE);
        }
    }

    public final boolean k() {
        return f10841f.b(this);
    }

    protected IOException l(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final w n(w sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return new b(sink);
    }

    public final y o(y source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return new c(source);
    }

    protected void p() {
    }
}
