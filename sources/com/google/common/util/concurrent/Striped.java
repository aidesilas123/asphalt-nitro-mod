package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.collect.MapMaker;
import com.google.common.math.IntMath;
import com.google.common.util.concurrent.Striped;
import java.lang.ref.ReferenceQueue;
import java.math.RoundingMode;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Striped<L> {

    private static class b<L> extends f<L> {
        private final Object[] b;

        private b(int i, com.google.common.base.m<L> mVar) {
            super(i);
            int i2 = 0;
            Preconditions.checkArgument(i <= 1073741824, "Stripes must be <= 2^30)");
            this.b = new Object[this.a + 1];
            while (true) {
                Object[] objArr = this.b;
                if (i2 >= objArr.length) {
                    return;
                }
                objArr[i2] = mVar.get();
                i2++;
            }
        }
    }

    static class c<L> extends f<L> {
        final ConcurrentMap<Integer, L> b;
        final com.google.common.base.m<L> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f3993d;

        c(int i, com.google.common.base.m<L> mVar) {
            super(i);
            int i2 = this.a;
            this.f3993d = i2 == -1 ? Integer.MAX_VALUE : i2 + 1;
            this.c = mVar;
            this.b = new MapMaker().m().i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class d extends ReentrantLock {
        d() {
            super(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class e extends Semaphore {
        e(int i) {
            super(i, false);
        }
    }

    private static abstract class f<L> extends Striped<L> {
        final int a;

        f(int i) {
            super();
            Preconditions.checkArgument(i > 0, "Stripes must be positive");
            this.a = i > 1073741824 ? -1 : Striped.b(i) - 1;
        }
    }

    static class g<L> extends f<L> {
        final AtomicReferenceArray<?> b;
        final com.google.common.base.m<L> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f3994d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final ReferenceQueue<L> f3995e;

        g(int i, com.google.common.base.m<L> mVar) {
            super(i);
            this.f3995e = new ReferenceQueue<>();
            int i2 = this.a;
            int i3 = i2 == -1 ? Integer.MAX_VALUE : i2 + 1;
            this.f3994d = i3;
            this.b = new AtomicReferenceArray<>(i3);
            this.c = mVar;
        }
    }

    private static final class h extends x {
        private final Condition a;
        private final j b;

        h(Condition condition, j jVar) {
            this.a = condition;
            this.b = jVar;
        }

        @Override // com.google.common.util.concurrent.x
        Condition a() {
            return this.a;
        }
    }

    private static final class i extends b0 {
        private final Lock a;
        private final j b;

        i(Lock lock, j jVar) {
            this.a = lock;
            this.b = jVar;
        }

        @Override // com.google.common.util.concurrent.b0
        Lock a() {
            return this.a;
        }

        @Override // java.util.concurrent.locks.Lock
        public Condition newCondition() {
            return new h(this.a.newCondition(), this.b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class j implements ReadWriteLock {
        private final ReadWriteLock a = new ReentrantReadWriteLock();

        j() {
        }

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock readLock() {
            return new i(this.a.readLock(), this);
        }

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock writeLock() {
            return new i(this.a.writeLock(), this);
        }
    }

    private Striped() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(int i2) {
        return 1 << IntMath.log2(i2, RoundingMode.CEILING);
    }

    static <L> Striped<L> c(int i2, com.google.common.base.m<L> mVar) {
        return new b(i2, mVar);
    }

    static /* synthetic */ Lock d() {
        return new ReentrantLock(false);
    }

    static /* synthetic */ Semaphore e(int i2) {
        return new Semaphore(i2, false);
    }

    static /* synthetic */ Semaphore f(int i2) {
        return new e(i2);
    }

    private static <L> Striped<L> g(int i2, com.google.common.base.m<L> mVar) {
        return i2 < 1024 ? new g(i2, mVar) : new c(i2, mVar);
    }

    public static Striped<Lock> lazyWeakLock(int i2) {
        return g(i2, new com.google.common.base.m() { // from class: com.google.common.util.concurrent.i
            @Override // com.google.common.base.m
            public final Object get() {
                return Striped.d();
            }
        });
    }

    public static Striped<ReadWriteLock> lazyWeakReadWriteLock(int i2) {
        return g(i2, new com.google.common.base.m() { // from class: com.google.common.util.concurrent.g
            @Override // com.google.common.base.m
            public final Object get() {
                return new Striped.j();
            }
        });
    }

    public static Striped<Semaphore> lazyWeakSemaphore(int i2, final int i3) {
        return g(i2, new com.google.common.base.m() { // from class: com.google.common.util.concurrent.h
            @Override // com.google.common.base.m
            public final Object get() {
                return Striped.e(i3);
            }
        });
    }

    public static Striped<Lock> lock(int i2) {
        return c(i2, new com.google.common.base.m() { // from class: com.google.common.util.concurrent.k
            @Override // com.google.common.base.m
            public final Object get() {
                return new Striped.d();
            }
        });
    }

    public static Striped<ReadWriteLock> readWriteLock(int i2) {
        return c(i2, new com.google.common.base.m() { // from class: com.google.common.util.concurrent.e
            @Override // com.google.common.base.m
            public final Object get() {
                return new ReentrantReadWriteLock();
            }
        });
    }

    public static Striped<Semaphore> semaphore(int i2, final int i3) {
        return c(i2, new com.google.common.base.m() { // from class: com.google.common.util.concurrent.j
            @Override // com.google.common.base.m
            public final Object get() {
                return Striped.f(i3);
            }
        });
    }
}
