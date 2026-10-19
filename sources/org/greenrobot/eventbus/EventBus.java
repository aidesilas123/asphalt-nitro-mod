package org.greenrobot.eventbus;

import com.json.o2;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import org.greenrobot.eventbus.android.AndroidDependenciesDetector;

/* JADX INFO: loaded from: classes5.dex */
public class EventBus {
    static volatile EventBus a;
    private static final org.greenrobot.eventbus.c b = new org.greenrobot.eventbus.c();
    private static final Map<Class<?>, List<Class<?>>> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Class<?>, CopyOnWriteArrayList<o>> f10930d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Object, List<Class<?>>> f10931e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<Class<?>, Object> f10932f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ThreadLocal<c> f10933g;
    private final f h;
    private final j i;
    private final org.greenrobot.eventbus.b j;
    private final org.greenrobot.eventbus.a k;
    private final n l;
    private final ExecutorService m;
    private final boolean n;
    private final boolean o;
    private final boolean p;
    private final boolean q;
    private final boolean r;
    private final boolean s;
    private final int t;
    private final Logger u;

    class a extends ThreadLocal<c> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c initialValue() {
            return new c();
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ThreadMode.values().length];
            a = iArr;
            try {
                iArr[ThreadMode.POSTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ThreadMode.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[ThreadMode.MAIN_ORDERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[ThreadMode.BACKGROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[ThreadMode.ASYNC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    static final class c {
        final List<Object> a = new ArrayList();
        boolean b;
        boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        o f10934d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Object f10935e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f10936f;

        c() {
        }
    }

    public EventBus() {
        this(b);
    }

    EventBus(org.greenrobot.eventbus.c cVar) {
        this.f10933g = new a();
        this.u = cVar.a();
        this.f10930d = new HashMap();
        this.f10931e = new HashMap();
        this.f10932f = new ConcurrentHashMap();
        f fVarB = cVar.b();
        this.h = fVarB;
        this.i = fVarB != null ? fVarB.a(this) : null;
        this.j = new org.greenrobot.eventbus.b(this);
        this.k = new org.greenrobot.eventbus.a(this);
        List<org.greenrobot.eventbus.p.b> list = cVar.k;
        this.t = list != null ? list.size() : 0;
        this.l = new n(cVar.k, cVar.i, cVar.h);
        this.o = cVar.b;
        this.p = cVar.c;
        this.q = cVar.f10937d;
        this.r = cVar.f10938e;
        this.n = cVar.f10939f;
        this.s = cVar.f10940g;
        this.m = cVar.j;
    }

    static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    private void b(o oVar, Object obj) {
        if (obj != null) {
            n(oVar, obj, h());
        }
    }

    public static org.greenrobot.eventbus.c builder() {
        return new org.greenrobot.eventbus.c();
    }

    public static void clearCaches() {
        n.a();
        c.clear();
    }

    private void e(o oVar, Object obj, Throwable th) {
        if (!(obj instanceof l)) {
            if (this.n) {
                throw new d("Invoking subscriber failed", th);
            }
            if (this.o) {
                this.u.a(Level.SEVERE, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + oVar.a.getClass(), th);
            }
            if (this.q) {
                k(new l(this, th, obj, oVar.a));
                return;
            }
            return;
        }
        if (this.o) {
            Logger logger = this.u;
            Level level = Level.SEVERE;
            logger.a(level, "SubscriberExceptionEvent subscriber " + oVar.a.getClass() + " threw an exception", th);
            l lVar = (l) obj;
            this.u.a(level, "Initial event " + lVar.c + " caused exception in " + lVar.f10943d, lVar.b);
        }
    }

    public static EventBus getDefault() {
        EventBus eventBus = a;
        if (eventBus == null) {
            synchronized (EventBus.class) {
                eventBus = a;
                if (eventBus == null) {
                    eventBus = new EventBus();
                    a = eventBus;
                }
            }
        }
        return eventBus;
    }

    private boolean h() {
        f fVar = this.h;
        return fVar == null || fVar.b();
    }

    private static List<Class<?>> j(Class<?> cls) {
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

    private void l(Object obj, c cVar) throws Error {
        boolean zM;
        Class<?> cls = obj.getClass();
        if (this.s) {
            List<Class<?>> listJ = j(cls);
            int size = listJ.size();
            zM = false;
            for (int i = 0; i < size; i++) {
                zM |= m(obj, cVar, listJ.get(i));
            }
        } else {
            zM = m(obj, cVar, cls);
        }
        if (zM) {
            return;
        }
        if (this.p) {
            this.u.b(Level.FINE, "No subscribers registered for event " + cls);
        }
        if (!this.r || cls == g.class || cls == l.class) {
            return;
        }
        k(new g(this, obj));
    }

    private boolean m(Object obj, c cVar, Class<?> cls) {
        CopyOnWriteArrayList<o> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.f10930d.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        for (o oVar : copyOnWriteArrayList) {
            cVar.f10935e = obj;
            cVar.f10934d = oVar;
            try {
                n(oVar, obj, cVar.c);
                if (cVar.f10936f) {
                    return true;
                }
            } finally {
                cVar.f10935e = null;
                cVar.f10934d = null;
                cVar.f10936f = false;
            }
        }
        return true;
    }

    private void n(o oVar, Object obj, boolean z) {
        int i = b.a[oVar.b.b.ordinal()];
        if (i == 1) {
            g(oVar, obj);
            return;
        }
        if (i == 2) {
            if (z) {
                g(oVar, obj);
                return;
            } else {
                this.i.a(oVar, obj);
                return;
            }
        }
        if (i == 3) {
            j jVar = this.i;
            if (jVar != null) {
                jVar.a(oVar, obj);
                return;
            } else {
                g(oVar, obj);
                return;
            }
        }
        if (i == 4) {
            if (z) {
                this.j.a(oVar, obj);
                return;
            } else {
                g(oVar, obj);
                return;
            }
        }
        if (i == 5) {
            this.k.a(oVar, obj);
            return;
        }
        throw new IllegalStateException("Unknown thread mode: " + oVar.b.b);
    }

    private void p(Object obj, m mVar) {
        Class<?> cls = mVar.c;
        o oVar = new o(obj, mVar);
        CopyOnWriteArrayList<o> copyOnWriteArrayList = this.f10930d.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f10930d.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(oVar)) {
            throw new d("Subscriber " + obj.getClass() + " already registered to event " + cls);
        }
        int size = copyOnWriteArrayList.size();
        for (int i = 0; i <= size; i++) {
            if (i == size || mVar.f10944d > copyOnWriteArrayList.get(i).b.f10944d) {
                copyOnWriteArrayList.add(i, oVar);
                break;
            }
        }
        List<Class<?>> arrayList = this.f10931e.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f10931e.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (mVar.f10945e) {
            if (!this.s) {
                b(oVar, this.f10932f.get(cls));
                return;
            }
            for (Map.Entry<Class<?>, Object> entry : this.f10932f.entrySet()) {
                if (cls.isAssignableFrom(entry.getKey())) {
                    b(oVar, entry.getValue());
                }
            }
        }
    }

    private void r(Object obj, Class<?> cls) {
        CopyOnWriteArrayList<o> copyOnWriteArrayList = this.f10930d.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i = 0;
            while (i < size) {
                o oVar = copyOnWriteArrayList.get(i);
                if (oVar.a == obj) {
                    oVar.c = false;
                    copyOnWriteArrayList.remove(i);
                    i--;
                    size--;
                }
                i++;
            }
        }
    }

    ExecutorService c() {
        return this.m;
    }

    public Logger d() {
        return this.u;
    }

    void f(h hVar) {
        Object obj = hVar.b;
        o oVar = hVar.c;
        h.b(hVar);
        if (oVar.c) {
            g(oVar, obj);
        }
    }

    void g(o oVar, Object obj) {
        try {
            oVar.b.a.invoke(oVar.a, obj);
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Unexpected exception", e2);
        } catch (InvocationTargetException e3) {
            e(oVar, obj, e3.getCause());
        }
    }

    public synchronized boolean i(Object obj) {
        return this.f10931e.containsKey(obj);
    }

    public void k(Object obj) {
        c cVar = this.f10933g.get();
        List<Object> list = cVar.a;
        list.add(obj);
        if (cVar.b) {
            return;
        }
        cVar.c = h();
        cVar.b = true;
        if (cVar.f10936f) {
            throw new d("Internal error. Abort state was not reset");
        }
        while (true) {
            try {
                if (list.isEmpty()) {
                    return;
                } else {
                    l(list.remove(0), cVar);
                }
            } finally {
                cVar.b = false;
                cVar.c = false;
            }
        }
    }

    public void o(Object obj) {
        if (AndroidDependenciesDetector.isAndroidSDKAvailable() && !AndroidDependenciesDetector.areAndroidComponentsAvailable()) {
            throw new RuntimeException("It looks like you are using EventBus on Android, make sure to add the \"eventbus\" Android library to your dependencies.");
        }
        List<m> listB = this.l.b(obj.getClass());
        synchronized (this) {
            Iterator<m> it = listB.iterator();
            while (it.hasNext()) {
                p(obj, it.next());
            }
        }
    }

    public synchronized void q(Object obj) {
        List<Class<?>> list = this.f10931e.get(obj);
        if (list != null) {
            Iterator<Class<?>> it = list.iterator();
            while (it.hasNext()) {
                r(obj, it.next());
            }
            this.f10931e.remove(obj);
        } else {
            this.u.b(Level.WARNING, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public String toString() {
        return "EventBus[indexCount=" + this.t + ", eventInheritance=" + this.s + o2.i.f6491e;
    }
}
