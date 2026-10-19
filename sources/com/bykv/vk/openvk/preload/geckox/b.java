package com.bykv.vk.openvk.preload.geckox;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.net.INetWork;
import com.bykv.vk.openvk.preload.geckox.statistic.IStatisticMonitor;
import java.io.File;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: compiled from: GeckoConfig.java */
/* JADX INFO: loaded from: classes.dex */
public class b {
    private static ThreadPoolExecutor s;
    public final Context a;
    public final Executor b;
    final Executor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final com.bykv.vk.openvk.preload.geckox.j.a f565d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final IStatisticMonitor f566e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final INetWork f567f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<String> f568g;
    public final List<String> h;
    final com.bykv.vk.openvk.preload.geckox.a.a.a i;
    public final Long j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final File p;
    public final boolean q;
    public JSONObject r;

    /* JADX INFO: compiled from: GeckoConfig.java */
    public static class a {
        INetWork a;
        List<String> b;
        List<String> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Context f569d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Executor f570e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Executor f571f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        com.bykv.vk.openvk.preload.geckox.j.a f572g;
        IStatisticMonitor h;
        boolean i = true;
        com.bykv.vk.openvk.preload.geckox.a.a.a j;
        Long k;
        String l;
        String m;
        String n;
        File o;
        String p;
        String q;

        public a(Context context) {
            this.f569d = context.getApplicationContext();
        }
    }

    private b(a aVar) {
        Context context = aVar.f569d;
        this.a = context;
        if (context == null) {
            throw new IllegalArgumentException("context == null");
        }
        List<String> list = aVar.b;
        this.f568g = list;
        this.h = aVar.c;
        this.f565d = aVar.f572g;
        this.i = aVar.j;
        Long l = aVar.k;
        this.j = l;
        if (TextUtils.isEmpty(aVar.l)) {
            this.k = com.bykv.vk.openvk.preload.geckox.utils.a.a(context);
        } else {
            this.k = aVar.l;
        }
        String str = aVar.m;
        this.l = str;
        this.n = aVar.p;
        this.o = aVar.q;
        File file = aVar.o;
        if (file == null) {
            this.p = new File(context.getFilesDir(), "gecko_offline_res_x");
        } else {
            this.p = file;
        }
        String str2 = aVar.n;
        this.m = str2;
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("host == null");
        }
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException("access key empty");
        }
        if (l == null) {
            throw new IllegalArgumentException("appId == null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("deviceId key empty");
        }
        Executor executor = aVar.f570e;
        if (executor == null) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.bykv.vk.openvk.preload.geckox.b.1
                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    Thread thread = new Thread(runnable);
                    thread.setName("csj_gecko_update");
                    thread.setPriority(3);
                    return thread;
                }
            });
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            this.b = threadPoolExecutor;
        } else {
            this.b = executor;
        }
        Executor executor2 = aVar.f571f;
        if (executor2 == null) {
            ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.bykv.vk.openvk.preload.geckox.b.2
                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    Thread thread = new Thread(runnable);
                    thread.setName("csj_gecko_check_update");
                    thread.setPriority(3);
                    return thread;
                }
            });
            threadPoolExecutor2.allowCoreThreadTimeOut(true);
            this.c = threadPoolExecutor2;
        } else {
            this.c = executor2;
        }
        this.f567f = aVar.a;
        this.f566e = aVar.h;
        this.q = aVar.i;
    }

    /* synthetic */ b(a aVar, byte b) {
        this(aVar);
    }

    public static ThreadPoolExecutor a() {
        if (s == null) {
            synchronized (b.class) {
                if (s == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 2, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue());
                    s = threadPoolExecutor;
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                }
            }
        }
        return s;
    }

    public static void a(ThreadPoolExecutor threadPoolExecutor) {
        s = threadPoolExecutor;
    }
}
