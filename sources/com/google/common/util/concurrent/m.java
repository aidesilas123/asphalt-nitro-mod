package com.google.common.util.concurrent;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.base.Throwables;
import com.google.common.util.concurrent.internal.InternalFutures;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: AbstractFuture.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class m<V> extends com.google.common.util.concurrent.internal.a implements h0<V> {
    static final boolean a;
    private static final Logger b;
    private static final b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f3996d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile Object f3997e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile e f3998f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile l f3999g;

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static abstract class b {
        private b() {
        }

        abstract boolean a(m<?> mVar, e eVar, e eVar2);

        abstract boolean b(m<?> mVar, Object obj, Object obj2);

        abstract boolean c(m<?> mVar, l lVar, l lVar2);

        abstract e d(m<?> mVar, e eVar);

        abstract l e(m<?> mVar, l lVar);

        abstract void f(l lVar, l lVar2);

        abstract void g(l lVar, Thread thread);
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class c {
        static final c a;
        static final c b;
        final boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Throwable f4000d;

        static {
            if (m.a) {
                b = null;
                a = null;
            } else {
                b = new c(false, null);
                a = new c(true, null);
            }
        }

        c(boolean z, Throwable th) {
            this.c = z;
            this.f4000d = th;
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class d {
        static final d a = new d(new a("Failure occurred while trying to finish a future."));
        final Throwable b;

        /* JADX INFO: compiled from: AbstractFuture.java */
        class a extends Throwable {
            a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        d(Throwable th) {
            this.b = (Throwable) Preconditions.checkNotNull(th);
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class e {
        static final e a = new e();
        final Runnable b;
        final Executor c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        e f4001d;

        e() {
            this.b = null;
            this.c = null;
        }

        e(Runnable runnable, Executor executor) {
            this.b = runnable;
            this.c = executor;
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class f extends b {
        final AtomicReferenceFieldUpdater<l, Thread> a;
        final AtomicReferenceFieldUpdater<l, l> b;
        final AtomicReferenceFieldUpdater<m, l> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<m, e> f4002d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<m, Object> f4003e;

        f(AtomicReferenceFieldUpdater<l, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<l, l> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<m, l> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<m, e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<m, Object> atomicReferenceFieldUpdater5) {
            super();
            this.a = atomicReferenceFieldUpdater;
            this.b = atomicReferenceFieldUpdater2;
            this.c = atomicReferenceFieldUpdater3;
            this.f4002d = atomicReferenceFieldUpdater4;
            this.f4003e = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.common.util.concurrent.m.b
        boolean a(m<?> mVar, e eVar, e eVar2) {
            return this.f4002d.compareAndSet(mVar, eVar, eVar2);
        }

        @Override // com.google.common.util.concurrent.m.b
        boolean b(m<?> mVar, Object obj, Object obj2) {
            return this.f4003e.compareAndSet(mVar, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.m.b
        boolean c(m<?> mVar, l lVar, l lVar2) {
            return this.c.compareAndSet(mVar, lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.m.b
        e d(m<?> mVar, e eVar) {
            return this.f4002d.getAndSet(mVar, eVar);
        }

        @Override // com.google.common.util.concurrent.m.b
        l e(m<?> mVar, l lVar) {
            return this.c.getAndSet(mVar, lVar);
        }

        @Override // com.google.common.util.concurrent.m.b
        void f(l lVar, l lVar2) {
            this.b.lazySet(lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.m.b
        void g(l lVar, Thread thread) {
            this.a.lazySet(lVar, thread);
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class g<V> implements Runnable {
        final m<V> a;
        final h0<? extends V> b;

        g(m<V> mVar, h0<? extends V> h0Var) {
            this.a = mVar;
            this.b = h0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((m) this.a).f3997e != this) {
                return;
            }
            if (m.c.b(this.a, this, m.u(this.b))) {
                m.r(this.a);
            }
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class h extends b {
        private h() {
            super();
        }

        @Override // com.google.common.util.concurrent.m.b
        boolean a(m<?> mVar, e eVar, e eVar2) {
            synchronized (mVar) {
                if (((m) mVar).f3998f != eVar) {
                    return false;
                }
                ((m) mVar).f3998f = eVar2;
                return true;
            }
        }

        @Override // com.google.common.util.concurrent.m.b
        boolean b(m<?> mVar, Object obj, Object obj2) {
            synchronized (mVar) {
                if (((m) mVar).f3997e != obj) {
                    return false;
                }
                ((m) mVar).f3997e = obj2;
                return true;
            }
        }

        @Override // com.google.common.util.concurrent.m.b
        boolean c(m<?> mVar, l lVar, l lVar2) {
            synchronized (mVar) {
                if (((m) mVar).f3999g != lVar) {
                    return false;
                }
                ((m) mVar).f3999g = lVar2;
                return true;
            }
        }

        @Override // com.google.common.util.concurrent.m.b
        e d(m<?> mVar, e eVar) {
            e eVar2;
            synchronized (mVar) {
                eVar2 = ((m) mVar).f3998f;
                if (eVar2 != eVar) {
                    ((m) mVar).f3998f = eVar;
                }
            }
            return eVar2;
        }

        @Override // com.google.common.util.concurrent.m.b
        l e(m<?> mVar, l lVar) {
            l lVar2;
            synchronized (mVar) {
                lVar2 = ((m) mVar).f3999g;
                if (lVar2 != lVar) {
                    ((m) mVar).f3999g = lVar;
                }
            }
            return lVar2;
        }

        @Override // com.google.common.util.concurrent.m.b
        void f(l lVar, l lVar2) {
            lVar.c = lVar2;
        }

        @Override // com.google.common.util.concurrent.m.b
        void g(l lVar, Thread thread) {
            lVar.b = thread;
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    interface i<V> extends h0<V> {
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    static abstract class j<V> extends m<V> implements i<V> {
        j() {
        }

        @Override // com.google.common.util.concurrent.m, com.google.common.util.concurrent.h0
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
        public final V get() throws ExecutionException, InterruptedException {
            return (V) super.get();
        }

        @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
        public final V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return (V) super.get(j, timeUnit);
        }

        @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class k extends b {
        static final Unsafe a;
        static final long b;
        static final long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final long f4004d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static final long f4005e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        static final long f4006f;

        /* JADX INFO: compiled from: AbstractFuture.java */
        class a implements PrivilegedExceptionAction<Unsafe> {
            a() {
            }

            @Override // java.security.PrivilegedExceptionAction
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Unsafe run() throws Exception {
                for (Field field : Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj = field.get(null);
                    if (Unsafe.class.isInstance(obj)) {
                        return (Unsafe) Unsafe.class.cast(obj);
                    }
                }
                throw new NoSuchFieldError("the Unsafe");
            }
        }

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new a());
            }
            try {
                c = unsafe.objectFieldOffset(m.class.getDeclaredField("g"));
                b = unsafe.objectFieldOffset(m.class.getDeclaredField(InneractiveMediationDefs.GENDER_FEMALE));
                f4004d = unsafe.objectFieldOffset(m.class.getDeclaredField("e"));
                f4005e = unsafe.objectFieldOffset(l.class.getDeclaredField(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B));
                f4006f = unsafe.objectFieldOffset(l.class.getDeclaredField("c"));
                a = unsafe;
            } catch (Exception e3) {
                Throwables.throwIfUnchecked(e3);
                throw new RuntimeException(e3);
            }
        }

        private k() {
            super();
        }

        @Override // com.google.common.util.concurrent.m.b
        boolean a(m<?> mVar, e eVar, e eVar2) {
            return a.compareAndSwapObject(mVar, b, eVar, eVar2);
        }

        @Override // com.google.common.util.concurrent.m.b
        boolean b(m<?> mVar, Object obj, Object obj2) {
            return a.compareAndSwapObject(mVar, f4004d, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.m.b
        boolean c(m<?> mVar, l lVar, l lVar2) {
            return a.compareAndSwapObject(mVar, c, lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.m.b
        e d(m<?> mVar, e eVar) {
            e eVar2;
            do {
                eVar2 = ((m) mVar).f3998f;
                if (eVar == eVar2) {
                    return eVar2;
                }
            } while (!a(mVar, eVar2, eVar));
            return eVar2;
        }

        @Override // com.google.common.util.concurrent.m.b
        l e(m<?> mVar, l lVar) {
            l lVar2;
            do {
                lVar2 = ((m) mVar).f3999g;
                if (lVar == lVar2) {
                    return lVar2;
                }
            } while (!c(mVar, lVar2, lVar));
            return lVar2;
        }

        @Override // com.google.common.util.concurrent.m.b
        void f(l lVar, l lVar2) {
            a.putObject(lVar, f4006f, lVar2);
        }

        @Override // com.google.common.util.concurrent.m.b
        void g(l lVar, Thread thread) {
            a.putObject(lVar, f4005e, thread);
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class l {
        static final l a = new l(false);
        volatile Thread b;
        volatile l c;

        l() {
            m.c.g(this, Thread.currentThread());
        }

        l(boolean z) {
        }

        void a(l lVar) {
            m.c.f(this, lVar);
        }

        void b() {
            Thread thread = this.b;
            if (thread != null) {
                this.b = null;
                LockSupport.unpark(thread);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.logging.Logger] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.common.util.concurrent.m$a] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Throwable] */
    static {
        boolean z;
        b hVar;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        a = z;
        b = Logger.getLogger(m.class.getName());
        ?? r1 = 0;
        r1 = 0;
        try {
            hVar = new k();
            th = null;
        } catch (Throwable th) {
            th = th;
            try {
                hVar = new f(AtomicReferenceFieldUpdater.newUpdater(l.class, Thread.class, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B), AtomicReferenceFieldUpdater.newUpdater(l.class, l.class, "c"), AtomicReferenceFieldUpdater.newUpdater(m.class, l.class, "g"), AtomicReferenceFieldUpdater.newUpdater(m.class, e.class, InneractiveMediationDefs.GENDER_FEMALE), AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "e"));
            } catch (Throwable th2) {
                hVar = new h();
                r1 = th2;
            }
        }
        c = hVar;
        if (r1 != 0) {
            ?? r0 = b;
            Level level = Level.SEVERE;
            r0.log(level, "UnsafeAtomicHelper is broken!", th);
            r0.log(level, "SafeAtomicHelper is broken!", r1);
        }
        f3996d = new Object();
    }

    protected m() {
    }

    private void A(l lVar) {
        lVar.b = null;
        while (true) {
            l lVar2 = this.f3999g;
            if (lVar2 == l.a) {
                return;
            }
            l lVar3 = null;
            while (lVar2 != null) {
                l lVar4 = lVar2.c;
                if (lVar2.b != null) {
                    lVar3 = lVar2;
                } else if (lVar3 != null) {
                    lVar3.c = lVar4;
                    if (lVar3.b == null) {
                        break;
                    }
                } else if (!c.c(this, lVar2, lVar4)) {
                    break;
                }
                lVar2 = lVar4;
            }
            return;
        }
    }

    private void k(StringBuilder sb) {
        try {
            Object objV = v(this);
            sb.append("SUCCESS, result=[");
            n(sb, objV);
            sb.append(o2.i.f6491e);
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append(o2.i.f6491e);
        }
    }

    private void l(StringBuilder sb) {
        String string;
        int length = sb.length();
        sb.append("PENDING");
        Object obj = this.f3997e;
        if (obj instanceof g) {
            sb.append(", setFuture=[");
            o(sb, ((g) obj).b);
            sb.append(o2.i.f6491e);
        } else {
            try {
                string = Strings.emptyToNull(y());
            } catch (RuntimeException | StackOverflowError e2) {
                String strValueOf = String.valueOf(e2.getClass());
                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 38);
                sb2.append("Exception thrown from implementation: ");
                sb2.append(strValueOf);
                string = sb2.toString();
            }
            if (string != null) {
                sb.append(", info=[");
                sb.append(string);
                sb.append(o2.i.f6491e);
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            k(sb);
        }
    }

    private void n(StringBuilder sb, Object obj) {
        if (obj == null) {
            sb.append("null");
        } else {
            if (obj == this) {
                sb.append("this future");
                return;
            }
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    private void o(StringBuilder sb, Object obj) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (RuntimeException | StackOverflowError e2) {
            sb.append("Exception thrown from implementation: ");
            sb.append(e2.getClass());
        }
    }

    private static CancellationException p(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    private e q(e eVar) {
        e eVar2 = eVar;
        e eVarD = c.d(this, e.a);
        while (eVarD != null) {
            e eVar3 = eVarD.f4001d;
            eVarD.f4001d = eVar2;
            eVar2 = eVarD;
            eVarD = eVar3;
        }
        return eVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void r(m<?> mVar) {
        e eVar = null;
        while (true) {
            mVar.z();
            mVar.m();
            e eVarQ = mVar.q(eVar);
            while (eVarQ != null) {
                eVar = eVarQ.f4001d;
                Runnable runnable = eVarQ.b;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof g) {
                    g gVar = (g) runnable2;
                    mVar = gVar.a;
                    if (((m) mVar).f3997e == gVar) {
                        if (c.b(mVar, gVar, u(gVar.b))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = eVarQ.c;
                    Objects.requireNonNull(executor);
                    s(runnable2, executor);
                }
                eVarQ = eVar;
            }
            return;
        }
    }

    private static void s(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = b;
            Level level = Level.SEVERE;
            String strValueOf = String.valueOf(runnable);
            String strValueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 57 + strValueOf2.length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(strValueOf);
            sb.append(" with executor ");
            sb.append(strValueOf2);
            logger.log(level, sb.toString(), (Throwable) e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private V t(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            throw p("Task was cancelled.", ((c) obj).f4000d);
        }
        if (obj instanceof d) {
            throw new ExecutionException(((d) obj).b);
        }
        return obj == f3996d ? (V) m0.b() : obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Object u(h0<?> h0Var) {
        Throwable thTryInternalFastPathGetFailure;
        if (h0Var instanceof i) {
            Object cVar = ((m) h0Var).f3997e;
            if (cVar instanceof c) {
                c cVar2 = (c) cVar;
                if (cVar2.c) {
                    cVar = cVar2.f4000d != null ? new c(false, cVar2.f4000d) : c.b;
                }
            }
            Objects.requireNonNull(cVar);
            return cVar;
        }
        if ((h0Var instanceof com.google.common.util.concurrent.internal.a) && (thTryInternalFastPathGetFailure = InternalFutures.tryInternalFastPathGetFailure((com.google.common.util.concurrent.internal.a) h0Var)) != null) {
            return new d(thTryInternalFastPathGetFailure);
        }
        boolean zIsCancelled = h0Var.isCancelled();
        if ((!a) && zIsCancelled) {
            c cVar3 = c.b;
            Objects.requireNonNull(cVar3);
            return cVar3;
        }
        try {
            Object objV = v(h0Var);
            if (!zIsCancelled) {
                return objV == null ? f3996d : objV;
            }
            String strValueOf = String.valueOf(h0Var);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 84);
            sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
            sb.append(strValueOf);
            return new c(false, new IllegalArgumentException(sb.toString()));
        } catch (CancellationException e2) {
            if (zIsCancelled) {
                return new c(false, e2);
            }
            String strValueOf2 = String.valueOf(h0Var);
            StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 77);
            sb2.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
            sb2.append(strValueOf2);
            return new d(new IllegalArgumentException(sb2.toString(), e2));
        } catch (ExecutionException e3) {
            if (!zIsCancelled) {
                return new d(e3.getCause());
            }
            String strValueOf3 = String.valueOf(h0Var);
            StringBuilder sb3 = new StringBuilder(strValueOf3.length() + 84);
            sb3.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
            sb3.append(strValueOf3);
            return new c(false, new IllegalArgumentException(sb3.toString(), e3));
        } catch (Throwable th) {
            return new d(th);
        }
    }

    private static <V> V v(Future<V> future) throws ExecutionException {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    private void z() {
        for (l lVarE = c.e(this, l.a); lVarE != null; lVarE = lVarE.c) {
            lVarE.b();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    protected boolean B(V v) {
        if (v == null) {
            v = (V) f3996d;
        }
        if (!c.b(this, null, v)) {
            return false;
        }
        r(this);
        return true;
    }

    protected boolean C(Throwable th) {
        if (!c.b(this, null, new d((Throwable) Preconditions.checkNotNull(th)))) {
            return false;
        }
        r(this);
        return true;
    }

    protected boolean D(h0<? extends V> h0Var) {
        d dVar;
        Preconditions.checkNotNull(h0Var);
        Object obj = this.f3997e;
        if (obj == null) {
            if (h0Var.isDone()) {
                if (!c.b(this, null, u(h0Var))) {
                    return false;
                }
                r(this);
                return true;
            }
            g gVar = new g(this, h0Var);
            if (c.b(this, null, gVar)) {
                try {
                    h0Var.addListener(gVar, DirectExecutor.INSTANCE);
                } catch (Throwable th) {
                    try {
                        dVar = new d(th);
                    } catch (Throwable unused) {
                        dVar = d.a;
                    }
                    c.b(this, gVar, dVar);
                }
                return true;
            }
            obj = this.f3997e;
        }
        if (obj instanceof c) {
            h0Var.cancel(((c) obj).c);
        }
        return false;
    }

    protected final boolean E() {
        Object obj = this.f3997e;
        return (obj instanceof c) && ((c) obj).c;
    }

    @Override // com.google.common.util.concurrent.internal.a
    protected final Throwable a() {
        if (!(this instanceof i)) {
            return null;
        }
        Object obj = this.f3997e;
        if (obj instanceof d) {
            return ((d) obj).b;
        }
        return null;
    }

    public void addListener(Runnable runnable, Executor executor) {
        e eVar;
        Preconditions.checkNotNull(runnable, "Runnable was null.");
        Preconditions.checkNotNull(executor, "Executor was null.");
        if (!isDone() && (eVar = this.f3998f) != e.a) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.f4001d = eVar;
                if (c.a(this, eVar, eVar2)) {
                    return;
                } else {
                    eVar = this.f3998f;
                }
            } while (eVar != e.a);
        }
        s(runnable, executor);
    }

    public boolean cancel(boolean z) {
        c cVar;
        Object obj = this.f3997e;
        if (!(obj == null) && !(obj instanceof g)) {
            return false;
        }
        if (a) {
            cVar = new c(z, new CancellationException("Future.cancel() was called."));
        } else {
            cVar = z ? c.a : c.b;
            Objects.requireNonNull(cVar);
        }
        boolean z2 = false;
        m<V> mVar = this;
        while (true) {
            if (c.b(mVar, obj, cVar)) {
                if (z) {
                    mVar.w();
                }
                r(mVar);
                if (!(obj instanceof g)) {
                    return true;
                }
                h0<? extends V> h0Var = ((g) obj).b;
                if (!(h0Var instanceof i)) {
                    h0Var.cancel(z);
                    return true;
                }
                mVar = (m) h0Var;
                obj = mVar.f3997e;
                if (!(obj == null) && !(obj instanceof g)) {
                    return true;
                }
                z2 = true;
            } else {
                obj = mVar.f3997e;
                if (!(obj instanceof g)) {
                    return z2;
                }
            }
        }
    }

    public V get() throws ExecutionException, InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f3997e;
        if ((obj2 != null) && (!(obj2 instanceof g))) {
            return t(obj2);
        }
        l lVar = this.f3999g;
        if (lVar != l.a) {
            l lVar2 = new l();
            do {
                lVar2.a(lVar);
                if (c.c(this, lVar, lVar2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            A(lVar2);
                            throw new InterruptedException();
                        }
                        obj = this.f3997e;
                    } while (!((obj != null) & (!(obj instanceof g))));
                    return t(obj);
                }
                lVar = this.f3999g;
            } while (lVar != l.a);
        }
        Object obj3 = this.f3997e;
        Objects.requireNonNull(obj3);
        return t(obj3);
    }

    public V get(long j2, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j2);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f3997e;
        if ((obj != null) && (!(obj instanceof g))) {
            return t(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            l lVar = this.f3999g;
            if (lVar != l.a) {
                l lVar2 = new l();
                do {
                    lVar2.a(lVar);
                    if (c.c(this, lVar, lVar2)) {
                        do {
                            n0.a(this, nanos);
                            if (Thread.interrupted()) {
                                A(lVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f3997e;
                            if ((obj2 != null) && (!(obj2 instanceof g))) {
                                return t(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        A(lVar2);
                    } else {
                        lVar = this.f3999g;
                    }
                } while (lVar != l.a);
            }
            Object obj3 = this.f3997e;
            Objects.requireNonNull(obj3);
            return t(obj3);
        }
        while (nanos > 0) {
            Object obj4 = this.f3997e;
            if ((obj4 != null) && (!(obj4 instanceof g))) {
                return t(obj4);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String lowerCase2 = timeUnit.toString().toLowerCase(locale);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase2).length() + 28);
        sb.append("Waited ");
        sb.append(j2);
        sb.append(" ");
        sb.append(lowerCase2);
        String string3 = sb.toString();
        if (nanos + 1000 < 0) {
            String strConcat = String.valueOf(string3).concat(" (plus ");
            long j3 = -nanos;
            long jConvert = timeUnit.convert(j3, TimeUnit.NANOSECONDS);
            long nanos2 = j3 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String strValueOf = String.valueOf(strConcat);
                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 21 + String.valueOf(lowerCase).length());
                sb2.append(strValueOf);
                sb2.append(jConvert);
                sb2.append(" ");
                sb2.append(lowerCase);
                String string4 = sb2.toString();
                if (z) {
                    string4 = String.valueOf(string4).concat(",");
                }
                strConcat = String.valueOf(string4).concat(" ");
            }
            if (z) {
                String strValueOf2 = String.valueOf(strConcat);
                StringBuilder sb3 = new StringBuilder(strValueOf2.length() + 33);
                sb3.append(strValueOf2);
                sb3.append(nanos2);
                sb3.append(" nanoseconds ");
                strConcat = sb3.toString();
            }
            string3 = String.valueOf(strConcat).concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(String.valueOf(string3).concat(" but future completed as timeout expired"));
        }
        StringBuilder sb4 = new StringBuilder(String.valueOf(string3).length() + 5 + String.valueOf(string).length());
        sb4.append(string3);
        sb4.append(" for ");
        sb4.append(string);
        throw new TimeoutException(sb4.toString());
    }

    public boolean isCancelled() {
        return this.f3997e instanceof c;
    }

    public boolean isDone() {
        return (!(r0 instanceof g)) & (this.f3997e != null);
    }

    protected void m() {
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            k(sb);
        } else {
            l(sb);
        }
        sb.append(o2.i.f6491e);
        return sb.toString();
    }

    protected void w() {
    }

    final void x(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(E());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected String y() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
        StringBuilder sb = new StringBuilder(41);
        sb.append("remaining delay=[");
        sb.append(delay);
        sb.append(" ms]");
        return sb.toString();
    }
}
