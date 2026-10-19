package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.collect.Ordering;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes3.dex */
final class FuturesGetChecked {
    private static final Ordering<Constructor<?>> a = Ordering.natural().e(new a()).f();

    static class GetCheckedTypeValidatorHolder {
        static final b a = a();

        enum WeakSetValidator implements b {
            INSTANCE;

            private static final Set<WeakReference<Class<? extends Exception>>> b = new CopyOnWriteArraySet();

            @Override // com.google.common.util.concurrent.FuturesGetChecked.b
            public void a(Class<? extends Exception> cls) {
                Iterator<WeakReference<Class<? extends Exception>>> it = b.iterator();
                while (it.hasNext()) {
                    if (cls.equals(it.next().get())) {
                        return;
                    }
                }
                FuturesGetChecked.b(cls);
                Set<WeakReference<Class<? extends Exception>>> set = b;
                if (set.size() > 1000) {
                    set.clear();
                }
                set.add(new WeakReference<>(cls));
            }
        }

        static b a() {
            return FuturesGetChecked.k();
        }
    }

    class a implements com.google.common.base.f<Constructor<?>, Boolean> {
        a() {
        }

        @Override // com.google.common.base.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean apply(Constructor<?> constructor) {
            return Boolean.valueOf(Arrays.asList(constructor.getParameterTypes()).contains(String.class));
        }
    }

    interface b {
        void a(Class<? extends Exception> cls);
    }

    private static b a() {
        return GetCheckedTypeValidatorHolder.a;
    }

    static void b(Class<? extends Exception> cls) {
        Preconditions.checkArgument(g(cls), "Futures.getChecked exception type (%s) must not be a RuntimeException", cls);
        Preconditions.checkArgument(f(cls), "Futures.getChecked exception type (%s) must be an accessible class with an accessible constructor whose parameters (if any) must be of type String and/or Throwable", cls);
    }

    static <V, X extends Exception> V c(b bVar, Future<V> future, Class<X> cls) throws Exception {
        bVar.a(cls);
        try {
            return future.get();
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            throw i(cls, e2);
        } catch (ExecutionException e3) {
            l(e3.getCause(), cls);
            throw new AssertionError();
        }
    }

    static <V, X extends Exception> V d(Future<V> future, Class<X> cls) throws Exception {
        return (V) c(a(), future, cls);
    }

    static <V, X extends Exception> V e(Future<V> future, Class<X> cls, long j, TimeUnit timeUnit) throws Exception {
        a().a(cls);
        try {
            return future.get(j, timeUnit);
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            throw i(cls, e2);
        } catch (ExecutionException e3) {
            l(e3.getCause(), cls);
            throw new AssertionError();
        } catch (TimeoutException e4) {
            throw i(cls, e4);
        }
    }

    private static boolean f(Class<? extends Exception> cls) {
        try {
            i(cls, new Exception());
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    static boolean g(Class<? extends Exception> cls) {
        return !RuntimeException.class.isAssignableFrom(cls);
    }

    private static <X> X h(Constructor<X> constructor, Throwable th) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Object[] objArr = new Object[parameterTypes.length];
        for (int i = 0; i < parameterTypes.length; i++) {
            Class<?> cls = parameterTypes[i];
            if (cls.equals(String.class)) {
                objArr[i] = th.toString();
            } else {
                if (!cls.equals(Throwable.class)) {
                    return null;
                }
                objArr[i] = th;
            }
        }
        try {
            return constructor.newInstance(objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    private static <X extends Exception> X i(Class<X> cls, Throwable th) {
        Iterator it = j(Arrays.asList(cls.getConstructors())).iterator();
        while (it.hasNext()) {
            X x = (X) h((Constructor) it.next(), th);
            if (x != null) {
                if (x.getCause() == null) {
                    x.initCause(th);
                }
                return x;
            }
        }
        String strValueOf = String.valueOf(cls);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 82);
        sb.append("No appropriate constructor for exception of type ");
        sb.append(strValueOf);
        sb.append(" in response to chained exception");
        throw new IllegalArgumentException(sb.toString(), th);
    }

    private static <X extends Exception> List<Constructor<X>> j(List<Constructor<X>> list) {
        return (List<Constructor<X>>) a.g(list);
    }

    static b k() {
        return GetCheckedTypeValidatorHolder.WeakSetValidator.INSTANCE;
    }

    private static <X extends Exception> void l(Throwable th, Class<X> cls) throws Exception {
        if (th instanceof Error) {
            throw new u((Error) th);
        }
        if (!(th instanceof RuntimeException)) {
            throw i(cls, th);
        }
        throw new u0(th);
    }
}
