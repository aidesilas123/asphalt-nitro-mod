package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Timeout.kt */
/* JADX INFO: loaded from: classes5.dex */
public class z {
    public static final b a = new b(null);
    public static final z b = new a();
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f10904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f10905e;

    /* JADX INFO: compiled from: Timeout.kt */
    public static final class a extends z {
        a() {
        }

        @Override // okio.z
        public z d(long j) {
            return this;
        }

        @Override // okio.z
        public void f() {
        }

        @Override // okio.z
        public z g(long j, TimeUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            return this;
        }
    }

    /* JADX INFO: compiled from: Timeout.kt */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    public z a() {
        this.c = false;
        return this;
    }

    public z b() {
        this.f10905e = 0L;
        return this;
    }

    public long c() {
        if (this.c) {
            return this.f10904d;
        }
        throw new IllegalStateException("No deadline".toString());
    }

    public z d(long j) {
        this.c = true;
        this.f10904d = j;
        return this;
    }

    public boolean e() {
        return this.c;
    }

    public void f() throws IOException {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.c && this.f10904d - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public z g(long j, TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("timeout < 0: ", Long.valueOf(j)).toString());
        }
        this.f10905e = unit.toNanos(j);
        return this;
    }

    public long h() {
        return this.f10905e;
    }
}
