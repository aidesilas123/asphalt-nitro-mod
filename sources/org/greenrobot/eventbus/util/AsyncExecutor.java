package org.greenrobot.eventbus.util;

import java.lang.reflect.Constructor;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes5.dex */
public class AsyncExecutor {
    private final Executor a;
    private final Constructor<?> b;
    private final EventBus c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f10953d;

    public static class b {
        private Executor a;
        private Class<?> b;
        private EventBus c;

        private b() {
        }

        public AsyncExecutor a() {
            return b(null);
        }

        public AsyncExecutor b(Object obj) {
            if (this.c == null) {
                this.c = EventBus.getDefault();
            }
            if (this.a == null) {
                this.a = Executors.newCachedThreadPool();
            }
            if (this.b == null) {
                this.b = org.greenrobot.eventbus.util.a.class;
            }
            return new AsyncExecutor(this.a, this.c, this.b, obj);
        }
    }

    private AsyncExecutor(Executor executor, EventBus eventBus, Class<?> cls, Object obj) {
        this.a = executor;
        this.c = eventBus;
        this.f10953d = obj;
        try {
            this.b = cls.getConstructor(Throwable.class);
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException("Failure event class must have a constructor with one parameter of type Throwable", e2);
        }
    }

    public static b builder() {
        return new b();
    }

    public static AsyncExecutor create() {
        return new b().a();
    }
}
