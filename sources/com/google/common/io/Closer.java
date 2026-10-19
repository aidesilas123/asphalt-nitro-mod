package com.google.common.io;

import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public final class Closer implements Closeable {
    private static final c a;
    final c b;
    private final Deque<Closeable> c = new ArrayDeque(4);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Throwable f3918d;

    static final class a implements c {
        static final a a = new a();

        a() {
        }

        @Override // com.google.common.io.Closer.c
        public void a(Closeable closeable, Throwable th, Throwable th2) {
            Logger logger = Closeables.a;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(closeable);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 42);
            sb.append("Suppressing exception thrown when closing ");
            sb.append(strValueOf);
            logger.log(level, sb.toString(), th2);
        }
    }

    static final class b implements c {
        private final Method a;

        private b(Method method) {
            this.a = method;
        }

        static b b() {
            try {
                return new b(Throwable.class.getMethod("addSuppressed", Throwable.class));
            } catch (Throwable unused) {
                return null;
            }
        }

        @Override // com.google.common.io.Closer.c
        public void a(Closeable closeable, Throwable th, Throwable th2) {
            if (th == th2) {
                return;
            }
            try {
                this.a.invoke(th, th2);
            } catch (Throwable unused) {
                a.a.a(closeable, th, th2);
            }
        }
    }

    interface c {
        void a(Closeable closeable, Throwable th, Throwable th2);
    }

    static {
        c cVarB = b.b();
        if (cVarB == null) {
            cVarB = a.a;
        }
        a = cVarB;
    }

    Closer(c cVar) {
        this.b = (c) Preconditions.checkNotNull(cVar);
    }

    public static Closer create() {
        return new Closer(a);
    }

    public <C extends Closeable> C a(C c2) {
        if (c2 != null) {
            this.c.addFirst(c2);
        }
        return c2;
    }

    public RuntimeException b(Throwable th) throws Throwable {
        Preconditions.checkNotNull(th);
        this.f3918d = th;
        Throwables.propagateIfPossible(th, IOException.class);
        throw new RuntimeException(th);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        Throwable th = this.f3918d;
        while (!this.c.isEmpty()) {
            Closeable closeableRemoveFirst = this.c.removeFirst();
            try {
                closeableRemoveFirst.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                } else {
                    this.b.a(closeableRemoveFirst, th, th2);
                }
            }
        }
        if (this.f3918d != null || th == null) {
            return;
        }
        Throwables.propagateIfPossible(th, IOException.class);
        throw new AssertionError(th);
    }
}
