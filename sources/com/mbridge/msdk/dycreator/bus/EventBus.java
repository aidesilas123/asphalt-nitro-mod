package com.mbridge.msdk.dycreator.bus;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public final class EventBus {
    private static volatile EventBus b;
    private boolean n;
    static ExecutorService a = Executors.newCachedThreadPool();
    public static String TAG = "Event";
    private static final Map<Class<?>, List<Class<?>>> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Class<?>, CopyOnWriteArrayList<Subscription>> f6911d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Object, List<Class<?>>> f6912e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<Class<?>, Object> f6913f = new ConcurrentHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ThreadLocal<List<Object>> f6914g = new ThreadLocal<List<Object>>() { // from class: com.mbridge.msdk.dycreator.bus.EventBus.1
        @Override // java.lang.ThreadLocal
        protected /* synthetic */ List<Object> initialValue() {
            return new ArrayList();
        }
    };
    private final ThreadLocal<BooleanWrapper> h = new ThreadLocal<BooleanWrapper>() { // from class: com.mbridge.msdk.dycreator.bus.EventBus.2
        @Override // java.lang.ThreadLocal
        protected /* synthetic */ BooleanWrapper initialValue() {
            return new BooleanWrapper();
        }
    };
    private String i = "onEvent";
    private final HandlerPoster j = new HandlerPoster(this, Looper.getMainLooper(), 10);
    private final BackgroundPoster k = new BackgroundPoster(this);
    private final AsyncPoster l = new AsyncPoster(this);
    private final SubscriberMethodFinder m = new SubscriberMethodFinder();
    private boolean o = true;
    private Map<String, Object> p = new ConcurrentHashMap();

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.bus.EventBus$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ThreadMode.values().length];
            a = iArr;
            try {
                iArr[ThreadMode.PostThread.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ThreadMode.MainThread.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[ThreadMode.BackgroundThread.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[ThreadMode.Async.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static final class BooleanWrapper {
        boolean a;

        BooleanWrapper() {
        }
    }

    interface PostCallback {
        void onPostCompleted(List<SubscriberExceptionEvent> list);
    }

    private List<Class<?>> a(Class<?> cls) {
        List<Class<?>> arrayList;
        Map<Class<?>, List<Class<?>>> map = c;
        synchronized (map) {
            arrayList = map.get(cls);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                    arrayList.add(superclass);
                    a(arrayList, superclass.getInterfaces());
                }
                c.put(cls, arrayList);
            }
        }
        return arrayList;
    }

    private void a(Subscription subscription, Object obj) throws Error {
        try {
            subscription.b.a.invoke(subscription.a, obj);
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Unexpected exception", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (!(obj instanceof SubscriberExceptionEvent)) {
                if (this.o) {
                    Log.e(TAG, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + subscription.a.getClass(), cause);
                }
                post(new SubscriberExceptionEvent(this, cause, obj, subscription.a));
                return;
            }
            Log.e(TAG, "SubscriberExceptionEvent subscriber " + subscription.a.getClass() + " threw an exception", cause);
            SubscriberExceptionEvent subscriberExceptionEvent = (SubscriberExceptionEvent) obj;
            Log.e(TAG, "Initial event " + subscriberExceptionEvent.causingEvent + " caused exception in " + subscriberExceptionEvent.causingSubscriber, subscriberExceptionEvent.throwable);
        }
    }

    private void a(Subscription subscription, Object obj, boolean z) {
        int i = AnonymousClass3.a[subscription.b.b.ordinal()];
        if (i == 1) {
            a(subscription, obj);
            return;
        }
        if (i == 2) {
            if (z) {
                a(subscription, obj);
                return;
            } else {
                this.j.a(subscription, obj);
                return;
            }
        }
        if (i == 3) {
            if (z) {
                this.k.enqueue(subscription, obj);
                return;
            } else {
                a(subscription, obj);
                return;
            }
        }
        if (i == 4) {
            this.l.enqueue(subscription, obj);
            return;
        }
        throw new IllegalStateException("Unknown thread mode: " + subscription.b.b);
    }

    private void a(Object obj, SubscriberMethod subscriberMethod, boolean z) {
        Object obj2;
        this.n = true;
        Class<?> cls = subscriberMethod.c;
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList = this.f6911d.get(cls);
        Subscription subscription = new Subscription(obj, subscriberMethod);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f6911d.put(cls, copyOnWriteArrayList);
        } else {
            Iterator<Subscription> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                if (it.next().equals(subscription)) {
                    throw new EventBusException("Subscriber " + obj.getClass() + " already registered to event " + cls);
                }
            }
        }
        subscriberMethod.a.setAccessible(true);
        copyOnWriteArrayList.add(subscription);
        List<Class<?>> arrayList = this.f6912e.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f6912e.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (z) {
            synchronized (this.f6913f) {
                obj2 = this.f6913f.get(cls);
            }
            if (obj2 != null) {
                a(subscription, obj2, Looper.getMainLooper() == Looper.myLooper());
            }
        }
    }

    private void a(Object obj, Class<?> cls) {
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList = this.f6911d.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i = 0;
            while (i < size) {
                if (copyOnWriteArrayList.get(i).a == obj) {
                    copyOnWriteArrayList.remove(i);
                    i--;
                    size--;
                }
                i++;
            }
        }
    }

    private void a(Object obj, String str, boolean z) {
        Iterator<SubscriberMethod> it = this.m.a(obj.getClass(), str).iterator();
        while (it.hasNext()) {
            a(obj, it.next(), z);
        }
    }

    private synchronized void a(Object obj, String str, boolean z, Class<?> cls, Class<?>... clsArr) {
        for (SubscriberMethod subscriberMethod : this.m.a(obj.getClass(), str)) {
            if (cls == subscriberMethod.c) {
                a(obj, subscriberMethod, z);
            } else if (clsArr != null) {
                int length = clsArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    if (clsArr[i] == subscriberMethod.c) {
                        a(obj, subscriberMethod, z);
                        break;
                    }
                    i++;
                }
            }
        }
    }

    private static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    public static void clearCaches() {
        SubscriberMethodFinder.a();
        c.clear();
    }

    public static void clearSkipMethodNameVerifications() {
        SubscriberMethodFinder.clearSkipMethodNameVerifications();
    }

    public static EventBus getDefault() {
        if (b == null) {
            synchronized (EventBus.class) {
                if (b == null) {
                    b = new EventBus();
                }
            }
        }
        return b;
    }

    public static void skipMethodNameVerificationFor(Class<?> cls) {
        SubscriberMethodFinder.a(cls);
    }

    final void a(PendingPost pendingPost) {
        Object obj = pendingPost.a;
        Subscription subscription = pendingPost.b;
        PendingPost.a(pendingPost);
        a(subscription, obj);
    }

    public final void configureLogSubscriberExceptions(boolean z) {
        if (this.n) {
            throw new EventBusException("This method must be called before any registration");
        }
        this.o = z;
    }

    public final Object getStickyEvent(Class<?> cls) {
        Object obj;
        synchronized (this.f6913f) {
            obj = this.f6913f.get(cls);
        }
        return obj;
    }

    public final void post(Object obj) {
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList;
        List<Object> list = this.f6914g.get();
        list.add(obj);
        BooleanWrapper booleanWrapper = this.h.get();
        if (booleanWrapper.a) {
            return;
        }
        boolean z = Looper.getMainLooper() == Looper.myLooper();
        booleanWrapper.a = true;
        while (!list.isEmpty()) {
            try {
                Object objRemove = list.remove(0);
                if (objRemove != null) {
                    try {
                        Class<?> cls = objRemove.getClass();
                        List<Class<?>> listA = a(cls);
                        int size = listA.size();
                        boolean z2 = false;
                        for (int i = 0; i < size; i++) {
                            Class<?> cls2 = listA.get(i);
                            synchronized (this) {
                                copyOnWriteArrayList = this.f6911d.get(cls2);
                            }
                            if (copyOnWriteArrayList != null) {
                                Iterator<Subscription> it = copyOnWriteArrayList.iterator();
                                while (it.hasNext()) {
                                    a(it.next(), objRemove, z);
                                }
                                z2 = true;
                            }
                        }
                        if (!z2) {
                            Log.d(TAG, "No subscripers registered for event " + cls);
                            if (cls != NoSubscriberEvent.class && cls != SubscriberExceptionEvent.class) {
                                post(new NoSubscriberEvent(this, objRemove));
                            }
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            } finally {
                booleanWrapper.a = false;
            }
        }
    }

    public final void postSticky(Object obj) {
        post(obj);
        synchronized (this.f6913f) {
            this.f6913f.put(obj.getClass(), obj);
        }
    }

    public final void register(Object obj) {
        a(obj, this.i, false);
    }

    public final void register(Object obj, Class<?> cls, Class<?>... clsArr) {
        a(obj, this.i, false, cls, clsArr);
    }

    public final void register(Object obj, String str) {
        a(obj, str, false);
    }

    public final synchronized void register(Object obj, String str, Class<?> cls, Class<?>... clsArr) {
        a(obj, str, false, cls, clsArr);
    }

    public final void register(String str, Object obj) {
        Map<String, Object> map = this.p;
        if (map != null && map.containsKey(str)) {
            unregister(this.p.get(str));
        }
        this.p.put(str, obj);
        a(obj, this.i, false);
    }

    public final void registerSticky(Object obj) {
        a(obj, this.i, true);
    }

    public final void registerSticky(Object obj, Class<?> cls, Class<?>... clsArr) {
        a(obj, this.i, true, cls, clsArr);
    }

    public final void registerSticky(Object obj, String str) {
        a(obj, str, true);
    }

    public final synchronized void registerSticky(Object obj, String str, Class<?> cls, Class<?>... clsArr) {
        a(obj, str, true, cls, clsArr);
    }

    public final void release() {
        if (b != null) {
            b = null;
            a = null;
            Map<Class<?>, List<Class<?>>> map = c;
            if (map != null && map.size() > 0) {
                map.clear();
            }
            Map<Class<?>, CopyOnWriteArrayList<Subscription>> map2 = this.f6911d;
            if (map2 != null && map2.size() > 0) {
                this.f6911d.clear();
            }
            Map<Object, List<Class<?>>> map3 = this.f6912e;
            if (map3 != null && map3.size() > 0) {
                this.f6912e.clear();
            }
            Map<Class<?>, Object> map4 = this.f6913f;
            if (map4 != null && map4.size() > 0) {
                this.f6913f.clear();
            }
            Map<String, Object> map5 = this.p;
            if (map5 == null || map5.size() <= 0) {
                return;
            }
            this.p.clear();
        }
    }

    public final Object removeStickyEvent(Class<?> cls) {
        Object objRemove;
        synchronized (this.f6913f) {
            objRemove = this.f6913f.remove(cls);
        }
        return objRemove;
    }

    public final boolean removeStickyEvent(Object obj) {
        synchronized (this.f6913f) {
            Class<?> cls = obj.getClass();
            if (!obj.equals(this.f6913f.get(cls))) {
                return false;
            }
            this.f6913f.remove(cls);
            return true;
        }
    }

    public final synchronized void unregister(Object obj) {
        List<Class<?>> list = this.f6912e.get(obj);
        if (list != null) {
            Iterator<Class<?>> it = list.iterator();
            while (it.hasNext()) {
                a(obj, it.next());
            }
            this.f6912e.remove(obj);
        } else {
            Log.w(TAG, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public final synchronized void unregister(Object obj, Class<?>... clsArr) {
        if (clsArr.length == 0) {
            throw new IllegalArgumentException("Provide at least one event class");
        }
        List<Class<?>> list = this.f6912e.get(obj);
        if (list != null) {
            for (Class<?> cls : clsArr) {
                a(obj, cls);
                list.remove(cls);
            }
            if (list.isEmpty()) {
                this.f6912e.remove(obj);
            }
        } else {
            Log.w(TAG, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public final synchronized void unregister(String str) {
        Map<String, Object> map = this.p;
        if (map != null && map.containsKey(str)) {
            Object objRemove = this.p.remove(str);
            List<Class<?>> list = this.f6912e.get(objRemove);
            if (list != null) {
                Iterator<Class<?>> it = list.iterator();
                while (it.hasNext()) {
                    a(objRemove, it.next());
                }
                this.f6912e.remove(objRemove);
            } else {
                Log.w(TAG, "Subscriber to unregister was not registered before: " + objRemove.getClass());
            }
        }
    }
}
