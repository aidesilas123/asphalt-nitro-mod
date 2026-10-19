package com.google.common.util.concurrent;

import com.json.o2;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.AbstractOwnableSynchronizer;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: InterruptibleTask.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class g0<T> extends AtomicReference<Runnable> implements Runnable {
    private static final Runnable a;
    private static final Runnable b;

    /* JADX INFO: compiled from: InterruptibleTask.java */
    static final class b extends AbstractOwnableSynchronizer implements Runnable {
        private final g0<?> a;

        private b(g0<?> g0Var) {
            this.a = g0Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(Thread thread) {
            super.setExclusiveOwnerThread(thread);
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return this.a.toString();
        }
    }

    /* JADX INFO: compiled from: InterruptibleTask.java */
    private static final class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    static {
        a = new c();
        b = new c();
    }

    g0() {
    }

    private void g(Thread thread) {
        Runnable runnable = get();
        b bVar = null;
        boolean z = false;
        int i = 0;
        while (true) {
            boolean z2 = runnable instanceof b;
            if (!z2 && runnable != b) {
                break;
            }
            if (z2) {
                bVar = (b) runnable;
            }
            i++;
            if (i > 1000) {
                Runnable runnable2 = b;
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    z = Thread.interrupted() || z;
                    LockSupport.park(bVar);
                }
            } else {
                Thread.yield();
            }
            runnable = get();
        }
        if (z) {
            thread.interrupt();
        }
    }

    abstract void a(Throwable th);

    abstract void b(T t);

    final void c() {
        Runnable runnable = get();
        if (runnable instanceof Thread) {
            b bVar = new b();
            bVar.b(Thread.currentThread());
            if (compareAndSet(runnable, bVar)) {
                try {
                    ((Thread) runnable).interrupt();
                } finally {
                    if (getAndSet(a) == b) {
                        LockSupport.unpark((Thread) runnable);
                    }
                }
            }
        }
    }

    abstract boolean d();

    abstract T e() throws Exception;

    abstract String f();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Thread threadCurrentThread = Thread.currentThread();
        Object objE = null;
        if (compareAndSet(null, threadCurrentThread)) {
            boolean z = !d();
            if (z) {
                try {
                    objE = e();
                } catch (Throwable th) {
                    if (!compareAndSet(threadCurrentThread, a)) {
                        g(threadCurrentThread);
                    }
                    if (z) {
                        a(th);
                        return;
                    }
                    return;
                }
            }
            if (!compareAndSet(threadCurrentThread, a)) {
                g(threadCurrentThread);
            }
            if (z) {
                b(m0.a(objE));
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String string;
        Runnable runnable = get();
        if (runnable == a) {
            string = "running=[DONE]";
        } else if (runnable instanceof b) {
            string = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 21);
            sb.append("running=[RUNNING ON ");
            sb.append(name);
            sb.append(o2.i.f6491e);
            string = sb.toString();
        } else {
            string = "running=[NOT STARTED YET]";
        }
        String strF = f();
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 2 + String.valueOf(strF).length());
        sb2.append(string);
        sb2.append(", ");
        sb2.append(strF);
        return sb2.toString();
    }
}
