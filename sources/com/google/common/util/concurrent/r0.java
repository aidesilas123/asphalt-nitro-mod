package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.lang.Thread;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: ThreadFactoryBuilder.java */
/* JADX INFO: loaded from: classes3.dex */
public final class r0 {
    private String a = null;
    private Boolean b = null;
    private Integer c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f4012d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ThreadFactory f4013e = null;

    /* JADX INFO: compiled from: ThreadFactoryBuilder.java */
    class a implements ThreadFactory {
        final /* synthetic */ ThreadFactory a;
        final /* synthetic */ String b;
        final /* synthetic */ AtomicLong c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Boolean f4014d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Integer f4015e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Thread.UncaughtExceptionHandler f4016f;

        a(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.a = threadFactory;
            this.b = str;
            this.c = atomicLong;
            this.f4014d = bool;
            this.f4015e = num;
            this.f4016f = uncaughtExceptionHandler;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread threadNewThread = this.a.newThread(runnable);
            String str = this.b;
            if (str != null) {
                AtomicLong atomicLong = this.c;
                Objects.requireNonNull(atomicLong);
                threadNewThread.setName(r0.d(str, Long.valueOf(atomicLong.getAndIncrement())));
            }
            Boolean bool = this.f4014d;
            if (bool != null) {
                threadNewThread.setDaemon(bool.booleanValue());
            }
            Integer num = this.f4015e;
            if (num != null) {
                threadNewThread.setPriority(num.intValue());
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f4016f;
            if (uncaughtExceptionHandler != null) {
                threadNewThread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
            }
            return threadNewThread;
        }
    }

    private static ThreadFactory c(r0 r0Var) {
        String str = r0Var.a;
        Boolean bool = r0Var.b;
        Integer num = r0Var.c;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = r0Var.f4012d;
        ThreadFactory threadFactoryDefaultThreadFactory = r0Var.f4013e;
        if (threadFactoryDefaultThreadFactory == null) {
            threadFactoryDefaultThreadFactory = Executors.defaultThreadFactory();
        }
        return new a(threadFactoryDefaultThreadFactory, str, str != null ? new AtomicLong(0L) : null, bool, num, uncaughtExceptionHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    public ThreadFactory b() {
        return c(this);
    }

    public r0 e(boolean z) {
        this.b = Boolean.valueOf(z);
        return this;
    }

    public r0 f(String str) {
        d(str, 0);
        this.a = str;
        return this;
    }

    public r0 g(ThreadFactory threadFactory) {
        this.f4013e = (ThreadFactory) Preconditions.checkNotNull(threadFactory);
        return this;
    }
}
