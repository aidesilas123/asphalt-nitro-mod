package com.bykv.vk.openvk.component.video.a.b;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.bykv.vk.openvk.component.video.a.b.b;
import com.bykv.vk.openvk.component.video.a.b.i;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: Preloader.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile d f423e;
    private volatile int a = 163840;
    private final SparseArray<Map<String, com.bykv.vk.openvk.component.video.a.b.b>> b;
    private final b<Runnable> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ExecutorService f424d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile com.bykv.vk.openvk.component.video.a.b.b.c f425f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile com.bykv.vk.openvk.component.video.a.b.a.c f426g;
    private volatile com.bykv.vk.openvk.component.video.a.b.a.b h;
    private final HashSet<a> i;
    private final b.InterfaceC0087b j;
    private volatile c k;
    private volatile c l;
    private volatile String m;
    private volatile boolean n;

    /* JADX INFO: compiled from: Preloader.java */
    private static final class a {
        final boolean a;
        final boolean b;
        final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final String f428d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final Map<String, String> f429e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final String[] f430f;

        a(boolean z, boolean z2, int i, String str, Map<String, String> map, String[] strArr) {
            this.a = z;
            this.b = z2;
            this.c = i;
            this.f428d = str;
            this.f429e = map;
            this.f430f = strArr;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.a == aVar.a && this.b == aVar.b && this.c == aVar.c) {
                return this.f428d.equals(aVar.f428d);
            }
            return false;
        }

        public int hashCode() {
            return ((((((this.a ? 1 : 0) * 31) + (this.b ? 1 : 0)) * 31) + this.c) * 31) + this.f428d.hashCode();
        }
    }

    /* JADX INFO: compiled from: Preloader.java */
    private static final class b<T> extends LinkedBlockingDeque<T> {
        private ThreadPoolExecutor a;

        private b() {
        }

        public void a(ThreadPoolExecutor threadPoolExecutor) {
            synchronized (this) {
                if (this.a != null) {
                    throw new IllegalStateException("You can only call setExecutor() once!");
                }
                if (threadPoolExecutor == null) {
                    throw new NullPointerException("executor argument can't be null!");
                }
                this.a = threadPoolExecutor;
            }
        }

        @Override // java.util.concurrent.LinkedBlockingDeque, java.util.Queue, java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue, java.util.Deque
        public boolean offer(T t) {
            synchronized (this) {
                int poolSize = this.a.getPoolSize();
                int activeCount = this.a.getActiveCount();
                int maximumPoolSize = this.a.getMaximumPoolSize();
                if (activeCount < poolSize || poolSize >= maximumPoolSize) {
                    return offerFirst(t);
                }
                if (e.c) {
                    Log.i("TAG_PROXY_TT", "create new preloader thread");
                }
                return false;
            }
        }
    }

    private d() {
        SparseArray<Map<String, com.bykv.vk.openvk.component.video.a.b.b>> sparseArray = new SparseArray<>(2);
        this.b = sparseArray;
        this.i = new HashSet<>();
        this.j = new b.InterfaceC0087b() { // from class: com.bykv.vk.openvk.component.video.a.b.d.1
            @Override // com.bykv.vk.openvk.component.video.a.b.b.InterfaceC0087b
            public void a(com.bykv.vk.openvk.component.video.a.b.b bVar) {
                int iF = bVar.f();
                synchronized (d.this.b) {
                    Map map = (Map) d.this.b.get(iF);
                    if (map != null) {
                        map.remove(bVar.h);
                    }
                }
                if (e.c) {
                    Log.d("TAG_PROXY_Preloader", "afterExecute, key: " + bVar.h);
                }
            }
        };
        b<Runnable> bVar = new b<>();
        this.c = bVar;
        ExecutorService executorServiceA = a(bVar);
        this.f424d = executorServiceA;
        bVar.a((ThreadPoolExecutor) executorServiceA);
        sparseArray.put(0, new HashMap());
        sparseArray.put(1, new HashMap());
    }

    private static ExecutorService a(final b<Runnable> bVar) {
        int iA = com.bykv.vk.openvk.component.video.a.c.a.a();
        return new ThreadPoolExecutor(0, iA < 1 ? 1 : iA > 4 ? 4 : iA, 60L, TimeUnit.SECONDS, bVar, new ThreadFactory() { // from class: com.bykv.vk.openvk.component.video.a.b.d.4
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable) { // from class: com.bykv.vk.openvk.component.video.a.b.d.4.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            Process.setThreadPriority(10);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                        super.run();
                    }
                };
                thread.setName("csj_video_preload_" + thread.getId());
                thread.setDaemon(true);
                if (e.c) {
                    Log.i("TAG_PROXY_Preloader", "new preload thead: " + thread.getName());
                }
                return thread;
            }
        }, new RejectedExecutionHandler() { // from class: com.bykv.vk.openvk.component.video.a.b.d.5
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                try {
                    bVar.offerFirst(runnable);
                    if (e.c) {
                        Log.i("TAG_PROXY_TT", "task rejected in preloader, put first!!!");
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    public static d c() {
        if (f423e == null) {
            synchronized (d.class) {
                if (f423e == null) {
                    f423e = new d();
                }
            }
        }
        return f423e;
    }

    c a() {
        return this.k;
    }

    public void a(int i) {
        if (i > 0) {
            this.a = i;
        }
        if (e.c) {
            Log.i("TAG_PROXY_Preloader", "MaxPreloadSize: " + i);
        }
    }

    public synchronized void a(long j, long j2, long j3) {
    }

    void a(com.bykv.vk.openvk.component.video.a.b.a.c cVar) {
        this.f426g = cVar;
    }

    void a(com.bykv.vk.openvk.component.video.a.b.b.c cVar) {
        this.f425f = cVar;
    }

    public void a(String str) {
        a(false, false, str);
    }

    void a(boolean z, String str) throws Throwable {
        com.bykv.vk.openvk.component.video.a.b.b bVarRemove;
        this.m = str;
        this.n = z;
        if (e.c) {
            Log.i("TAG_PROXY_Preloader", "setCurrentPlayKey, " + str);
        }
        HashSet<com.bykv.vk.openvk.component.video.a.b.b> hashSet = null;
        HashSet<a> hashSet2 = null;
        if (str == null) {
            synchronized (this.i) {
                if (!this.i.isEmpty()) {
                    hashSet2 = new HashSet(this.i);
                    this.i.clear();
                }
            }
            if (hashSet2 != null) {
                for (a aVar : hashSet2) {
                    a(aVar.a, aVar.b, aVar.c, aVar.f428d, aVar.f429e, aVar.f430f);
                    if (e.c) {
                        Log.i("TAG_PROXY_Preloader", "setCurrentPlayKey, resume preload: " + aVar.f428d);
                    }
                }
                return;
            }
            return;
        }
        int i = e.h;
        if (i != 3 && i != 2) {
            if (i == 1) {
                synchronized (this.b) {
                    Map<String, com.bykv.vk.openvk.component.video.a.b.b> map = this.b.get(com.bykv.vk.openvk.component.video.a.b.b.b.a(z));
                    bVarRemove = map != null ? map.remove(str) : null;
                }
                if (bVarRemove != null) {
                    bVarRemove.a();
                    return;
                }
                return;
            }
            return;
        }
        synchronized (this.b) {
            int size = this.b.size();
            for (int i2 = 0; i2 < size; i2++) {
                SparseArray<Map<String, com.bykv.vk.openvk.component.video.a.b.b>> sparseArray = this.b;
                Map<String, com.bykv.vk.openvk.component.video.a.b.b> map2 = sparseArray.get(sparseArray.keyAt(i2));
                if (map2 != null) {
                    Collection<com.bykv.vk.openvk.component.video.a.b.b> collectionValues = map2.values();
                    if (collectionValues != null && !collectionValues.isEmpty()) {
                        if (hashSet == null) {
                            hashSet = new HashSet();
                        }
                        hashSet.addAll(collectionValues);
                    }
                    map2.clear();
                }
            }
        }
        if (hashSet == null || hashSet.isEmpty()) {
            return;
        }
        for (com.bykv.vk.openvk.component.video.a.b.b bVar : hashSet) {
            bVar.a();
            if (e.c) {
                Log.i("TAG_PROXY_Preloader", "setCurrentPlayKey, cancel preload: " + bVar.f410g);
            }
        }
        if (i == 3) {
            synchronized (this.i) {
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    a aVar2 = (a) ((com.bykv.vk.openvk.component.video.a.b.b) it.next()).n;
                    if (aVar2 != null) {
                        this.i.add(aVar2);
                    }
                }
            }
        }
    }

    public void a(boolean z, boolean z2, int i, String str, Map<String, String> map, String... strArr) throws Throwable {
        SparseArray<Map<String, com.bykv.vk.openvk.component.video.a.b.b>> sparseArray;
        boolean z3 = e.c;
        if (z3) {
            Log.d("TAG_PROXY_Preloader", "preload start ！！！！");
        }
        com.bykv.vk.openvk.component.video.a.b.a.a aVar = z ? this.h : this.f426g;
        com.bykv.vk.openvk.component.video.a.b.b.c cVar = this.f425f;
        if (aVar == null || cVar == null) {
            if (z3) {
                Log.e("TAG_PROXY_Preloader", "cache or videoProxyDB null in Preloader!!!");
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            return;
        }
        int i2 = i <= 0 ? this.a : i;
        String strA = z2 ? str : com.bykv.vk.openvk.component.video.api.f.b.a(str);
        File fileD = aVar.d(strA);
        if (fileD != null && fileD.length() >= i2) {
            if (z3) {
                Log.i("TAG_PROXY_Preloader", "no need preload, file size: " + fileD.length() + ", need preload size: " + i2);
                return;
            }
            return;
        }
        if (f.a().a(com.bykv.vk.openvk.component.video.a.b.b.b.a(z), strA)) {
            if (z3) {
                Log.w("TAG_PROXY_Preloader", "has running proxy task, skip preload for key: " + str);
                return;
            }
            return;
        }
        SparseArray<Map<String, com.bykv.vk.openvk.component.video.a.b.b>> sparseArray2 = this.b;
        synchronized (sparseArray2) {
            try {
                Map<String, com.bykv.vk.openvk.component.video.a.b.b> map2 = this.b.get(z ? 1 : 0);
                if (!map2.containsKey(strA)) {
                    int i3 = i2;
                    sparseArray = sparseArray2;
                    try {
                        a aVar2 = new a(z, z2, i2, str, map, strArr);
                        String str2 = this.m;
                        if (str2 != null) {
                            int i4 = e.h;
                            if (i4 == 3) {
                                synchronized (this.i) {
                                    this.i.add(aVar2);
                                }
                                if (z3) {
                                    Log.w("TAG_PROXY_Preloader", "cancel preload: " + str + ", add to pending queue");
                                }
                                return;
                            }
                            if (i4 == 2) {
                                if (z3) {
                                    Log.w("TAG_PROXY_Preloader", "cancel preload: " + str);
                                }
                                return;
                            }
                            if (i4 == 1 && this.n == z && str2.equals(strA)) {
                                if (z3) {
                                    Log.w("TAG_PROXY_Preloader", "cancel preload: " + str + ", it is playing");
                                }
                                return;
                            }
                        }
                        ArrayList arrayList = null;
                        List<i.b> listA = com.bykv.vk.openvk.component.video.a.c.a.a(com.bykv.vk.openvk.component.video.a.c.a.a(map));
                        if (listA != null) {
                            arrayList = new ArrayList(listA.size());
                            int size = listA.size();
                            for (int i5 = 0; i5 < size; i5++) {
                                i.b bVar = listA.get(i5);
                                if (bVar != null) {
                                    arrayList.add(new i.b(bVar.a, bVar.b));
                                }
                            }
                        }
                        com.bykv.vk.openvk.component.video.a.b.b bVarA = new b.a().a(aVar).a(cVar).a(str).b(strA).a(new l(com.bykv.vk.openvk.component.video.a.c.a.a(strArr))).a((List<i.b>) arrayList).a(i3).a(this.j).a(aVar2).a();
                        map2.put(strA, bVarA);
                        this.f424d.execute(bVarA);
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                sparseArray = sparseArray2;
            }
        }
    }

    public void a(boolean z, boolean z2, int i, String str, String... strArr) throws Throwable {
        a(z, z2, i, str, null, strArr);
    }

    public void a(final boolean z, final boolean z2, final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.bykv.vk.openvk.component.video.a.c.a.a(new com.bytedance.sdk.component.g.h("cancel b b S") { // from class: com.bykv.vk.openvk.component.video.a.b.d.2
            @Override // java.lang.Runnable
            public void run() {
                com.bykv.vk.openvk.component.video.a.b.b bVar;
                synchronized (d.this.b) {
                    Map map = (Map) d.this.b.get(com.bykv.vk.openvk.component.video.a.b.b.b.a(z));
                    if (map != null) {
                        bVar = (com.bykv.vk.openvk.component.video.a.b.b) map.remove(z2 ? str : com.bykv.vk.openvk.component.video.api.f.b.a(str));
                    } else {
                        bVar = null;
                    }
                }
                if (bVar != null) {
                    bVar.a();
                }
            }
        });
    }

    c b() {
        return this.l;
    }

    public void d() {
        com.bykv.vk.openvk.component.video.a.c.a.a(new com.bytedance.sdk.component.g.h("cancelAll") { // from class: com.bykv.vk.openvk.component.video.a.b.d.3
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<com.bykv.vk.openvk.component.video.a.b.b> arrayList = new ArrayList();
                synchronized (d.this.b) {
                    int size = d.this.b.size();
                    for (int i = 0; i < size; i++) {
                        Map map = (Map) d.this.b.get(d.this.b.keyAt(i));
                        if (map != null) {
                            arrayList.addAll(map.values());
                            map.clear();
                        }
                    }
                    d.this.c.clear();
                }
                for (com.bykv.vk.openvk.component.video.a.b.b bVar : arrayList) {
                    bVar.a();
                    if (e.c) {
                        Log.w("TAG_PROXY_Preloader", "PreloadTask: " + bVar + ", canceled!!!");
                    }
                }
            }
        });
    }
}
