package com.bykv.vk.openvk.component.video.a.b.f;

import android.text.TextUtils;
import androidx.work.WorkRequest;
import com.bykv.vk.openvk.component.video.a.b.d;
import com.bykv.vk.openvk.component.video.a.b.e;
import com.bykv.vk.openvk.component.video.a.b.f;
import com.bykv.vk.openvk.component.video.api.f.c;
import com.bytedance.sdk.component.utils.l;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: compiled from: VideoCachePreloader.java */
/* JADX INFO: loaded from: classes.dex */
public class a {
    public static final boolean a = c.c();
    private HashMap<String, Boolean> b;
    private C0088a c;

    /* JADX INFO: renamed from: com.bykv.vk.openvk.component.video.a.b.f.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: VideoCachePreloader.java */
    class C0088a extends Thread {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Queue<C0089a> f441d = new ArrayBlockingQueue(10);
        private Queue<C0089a> b = new LinkedBlockingQueue();
        private boolean c = true;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Queue<C0089a> f442e = new LinkedBlockingQueue();

        /* JADX INFO: renamed from: com.bykv.vk.openvk.component.video.a.b.f.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: VideoCachePreloader.java */
        private class C0089a {
            public int a;
            public String b;
            public String[] c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f443d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f444e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public com.bykv.vk.openvk.component.video.api.c.c f445f;

            public C0089a() {
            }
        }

        public C0088a() {
        }

        private C0089a a(int i, com.bykv.vk.openvk.component.video.api.c.c cVar) {
            b();
            l.b("VideoCachePreloader", "pool: " + this.f441d.size());
            C0089a c0089aPoll = this.f441d.poll();
            if (c0089aPoll == null) {
                c0089aPoll = new C0089a();
            }
            c0089aPoll.a = i;
            c0089aPoll.f445f = cVar;
            return c0089aPoll;
        }

        private void a() {
        }

        private void a(C0089a c0089a) {
            a();
            c0089a.c = null;
            c0089a.b = null;
            c0089a.a = -1;
            c0089a.f445f = null;
            this.f441d.offer(c0089a);
        }

        private void b() {
        }

        private synchronized void b(C0089a c0089a) {
            b();
            this.f442e.add(c0089a);
            notify();
        }

        private void c() {
            a();
            while (true) {
                C0089a c0089aPoll = this.f442e.poll();
                if (c0089aPoll == null) {
                    return;
                }
                c0089aPoll.b = c0089aPoll.f445f.m();
                c0089aPoll.c = new String[]{c0089aPoll.f445f.m()};
                int iA = c0089aPoll.f445f.a();
                if (iA <= 0) {
                    iA = c0089aPoll.f445f.c();
                }
                c0089aPoll.f443d = iA;
                c0089aPoll.f444e = c0089aPoll.f445f.n();
                if (!TextUtils.isEmpty(c0089aPoll.f445f.n())) {
                    c0089aPoll.b = c0089aPoll.f445f.n();
                }
                c0089aPoll.f445f = null;
                c(c0089aPoll);
            }
        }

        private void c(C0089a c0089a) {
            a();
            if (c0089a == null) {
                return;
            }
            this.b.offer(c0089a);
            notify();
        }

        public void a(com.bykv.vk.openvk.component.video.api.c.c cVar) {
            b(a(0, cVar));
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (this.c) {
                synchronized (this) {
                    if (!this.f442e.isEmpty()) {
                        c();
                    }
                    while (!this.b.isEmpty()) {
                        C0089a c0089aPoll = this.b.poll();
                        if (c0089aPoll != null) {
                            int i = c0089aPoll.a;
                            if (i == 0) {
                                String[] strArr = c0089aPoll.c;
                                if (strArr != null && strArr.length > 0) {
                                    ArrayList arrayList = new ArrayList();
                                    for (String str : c0089aPoll.c) {
                                        if (com.bykv.vk.openvk.component.video.a.c.a.a(str)) {
                                            arrayList.add(str);
                                        }
                                    }
                                    d.c().a(false, !TextUtils.isEmpty(c0089aPoll.f444e), c0089aPoll.f443d, c0089aPoll.b, (String[]) arrayList.toArray(new String[arrayList.size()]));
                                }
                            } else if (i == 1) {
                                d.c().a(c0089aPoll.b);
                            } else if (i == 2) {
                                d.c().d();
                            } else if (i == 3) {
                                d.c().d();
                                if (e.c() != null) {
                                    e.c().a();
                                }
                                if (e.b() != null) {
                                    e.b().a();
                                }
                            } else if (i == 4) {
                                d.c().d();
                                this.c = false;
                            }
                            a(c0089aPoll);
                        }
                    }
                    try {
                        wait();
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: VideoCachePreloader.java */
    private static class b {
        private static final a a = new a();
    }

    private a() {
        this.b = new HashMap<>();
        b();
    }

    public static a a() {
        return b.a;
    }

    private static com.bykv.vk.openvk.component.video.a.b.a.c c() {
        com.bykv.vk.openvk.component.video.a.b.a.c cVar;
        File file = new File(com.bykv.vk.openvk.component.video.api.c.a().getCacheDir(), "proxy_cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        com.bykv.vk.openvk.component.video.a.b.a.c cVar2 = null;
        try {
            cVar = new com.bykv.vk.openvk.component.video.a.b.a.c(file);
        } catch (IOException e2) {
            e = e2;
        }
        try {
            cVar.a(104857600L);
            return cVar;
        } catch (IOException e3) {
            e = e3;
            cVar2 = cVar;
            e.printStackTrace();
            return cVar2;
        }
    }

    public boolean a(com.bykv.vk.openvk.component.video.api.c.c cVar) {
        if (!b()) {
            return false;
        }
        this.c.a(cVar);
        return true;
    }

    public String b(com.bykv.vk.openvk.component.video.api.c.c cVar) {
        if (cVar == null) {
            return null;
        }
        boolean z = !TextUtils.isEmpty(cVar.n());
        return f.a().a(false, z, z ? cVar.n() : cVar.m(), cVar.m());
    }

    public boolean b() {
        if (this.c != null) {
            return true;
        }
        com.bykv.vk.openvk.component.video.a.b.a.c cVarC = c();
        if (cVarC == null) {
            return false;
        }
        e.a(true);
        e.b(true);
        e.a(1);
        f.a().d();
        try {
            C0088a c0088a = new C0088a();
            this.c = c0088a;
            c0088a.setName("csj_video_cache_preloader");
            this.c.start();
            e.a(cVarC, com.bykv.vk.openvk.component.video.api.c.a());
            d.c().a(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
            d.c().a(10485759);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
