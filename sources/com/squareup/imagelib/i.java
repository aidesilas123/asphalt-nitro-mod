package com.squareup.imagelib;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.json.o2;
import com.squareup.imagelib.p;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: Dispatcher.java */
/* JADX INFO: loaded from: classes4.dex */
class i {
    final b a;
    final Context b;
    final ExecutorService c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final j f7748d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Map<String, com.squareup.imagelib.c> f7749e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final Map<Object, com.squareup.imagelib.a> f7750f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Map<Object, com.squareup.imagelib.a> f7751g;
    final Set<Object> h;
    final Handler i;
    final Handler j;
    final d k;
    final w l;
    final List<com.squareup.imagelib.c> m;
    final c n;
    final boolean o;
    boolean p;

    /* JADX INFO: compiled from: Dispatcher.java */
    private static class a extends Handler {
        private final i a;

        /* JADX INFO: renamed from: com.squareup.imagelib.i$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Dispatcher.java */
        class RunnableC0444a implements Runnable {
            final /* synthetic */ Message a;

            RunnableC0444a(Message message) {
                this.a = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new AssertionError("Unknown handler message received: " + this.a.what);
            }
        }

        public a(Looper looper, i iVar) {
            super(looper);
            this.a = iVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    this.a.v((com.squareup.imagelib.a) message.obj);
                    break;
                case 2:
                    this.a.o((com.squareup.imagelib.a) message.obj);
                    break;
                case 3:
                case 8:
                default:
                    Picasso.a.post(new RunnableC0444a(message));
                    break;
                case 4:
                    this.a.p((com.squareup.imagelib.c) message.obj);
                    break;
                case 5:
                    this.a.u((com.squareup.imagelib.c) message.obj);
                    break;
                case 6:
                    this.a.q((com.squareup.imagelib.c) message.obj, false);
                    break;
                case 7:
                    this.a.n();
                    break;
                case 9:
                    this.a.r((NetworkInfo) message.obj);
                    break;
                case 10:
                    this.a.m(message.arg1 == 1);
                    break;
                case 11:
                    this.a.s(message.obj);
                    break;
                case 12:
                    this.a.t(message.obj);
                    break;
            }
        }
    }

    /* JADX INFO: compiled from: Dispatcher.java */
    static class b extends HandlerThread {
        b() {
            super("Picasso-Dispatcher", 10);
        }
    }

    /* JADX INFO: compiled from: Dispatcher.java */
    static class c extends BroadcastReceiver {
        private final i a;

        c(i iVar) {
            this.a = iVar;
        }

        void a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            if (this.a.o) {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
            this.a.b.registerReceiver(this, intentFilter);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            String action = intent.getAction();
            if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                if (intent.hasExtra("state")) {
                    this.a.b(intent.getBooleanExtra("state", false));
                }
            } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                this.a.f(((ConnectivityManager) a0.p(context, "connectivity")).getActiveNetworkInfo());
            }
        }
    }

    i(Context context, ExecutorService executorService, Handler handler, j jVar, d dVar, w wVar) {
        b bVar = new b();
        this.a = bVar;
        bVar.start();
        a0.j(bVar.getLooper());
        this.b = context;
        this.c = executorService;
        this.f7749e = new LinkedHashMap();
        this.f7750f = new WeakHashMap();
        this.f7751g = new WeakHashMap();
        this.h = new HashSet();
        this.i = new a(bVar.getLooper(), this);
        this.f7748d = jVar;
        this.j = handler;
        this.k = dVar;
        this.l = wVar;
        this.m = new ArrayList(4);
        this.p = a0.r(context);
        this.o = a0.q(context, "android.permission.ACCESS_NETWORK_STATE");
        c cVar = new c(this);
        this.n = cVar;
        cVar.a();
    }

    private void a(com.squareup.imagelib.c cVar) {
        if (cVar.u()) {
            return;
        }
        this.m.add(cVar);
        if (this.i.hasMessages(7)) {
            return;
        }
        this.i.sendEmptyMessageDelayed(7, 200L);
    }

    private void i() {
        if (this.f7750f.isEmpty()) {
            return;
        }
        Iterator<com.squareup.imagelib.a> it = this.f7750f.values().iterator();
        while (it.hasNext()) {
            com.squareup.imagelib.a next = it.next();
            it.remove();
            if (next.g().p) {
                a0.u("Dispatcher", "replaying", next.i().d());
            }
            w(next, false);
        }
    }

    private void j(List<com.squareup.imagelib.c> list) {
        if (list == null || list.isEmpty() || !list.get(0).q().p) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (com.squareup.imagelib.c cVar : list) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(a0.l(cVar));
        }
        a0.u("Dispatcher", "delivered", sb.toString());
    }

    private void k(com.squareup.imagelib.a aVar) {
        Object objK = aVar.k();
        if (objK != null) {
            aVar.k = true;
            this.f7750f.put(objK, aVar);
        }
    }

    private void l(com.squareup.imagelib.c cVar) {
        com.squareup.imagelib.a aVarH = cVar.h();
        if (aVarH != null) {
            k(aVarH);
        }
        List<com.squareup.imagelib.a> listI = cVar.i();
        if (listI != null) {
            int size = listI.size();
            for (int i = 0; i < size; i++) {
                k(listI.get(i));
            }
        }
    }

    void b(boolean z) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(10, z ? 1 : 0, 0));
    }

    void c(com.squareup.imagelib.a aVar) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(2, aVar));
    }

    void d(com.squareup.imagelib.c cVar) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(4, cVar));
    }

    void e(com.squareup.imagelib.c cVar) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(6, cVar));
    }

    void f(NetworkInfo networkInfo) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(9, networkInfo));
    }

    void g(com.squareup.imagelib.c cVar) {
        Handler handler = this.i;
        handler.sendMessageDelayed(handler.obtainMessage(5, cVar), 500L);
    }

    void h(com.squareup.imagelib.a aVar) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(1, aVar));
    }

    void m(boolean z) {
        this.p = z;
    }

    void n() {
        ArrayList arrayList = new ArrayList(this.m);
        this.m.clear();
        Handler handler = this.j;
        handler.sendMessage(handler.obtainMessage(8, arrayList));
        j(arrayList);
    }

    void o(com.squareup.imagelib.a aVar) {
        String strD = aVar.d();
        com.squareup.imagelib.c cVar = this.f7749e.get(strD);
        if (cVar != null) {
            cVar.f(aVar);
            if (cVar.c()) {
                this.f7749e.remove(strD);
                if (aVar.g().p) {
                    a0.u("Dispatcher", "canceled", aVar.i().d());
                }
            }
        }
        if (this.h.contains(aVar.j())) {
            this.f7751g.remove(aVar.k());
            if (aVar.g().p) {
                a0.v("Dispatcher", "canceled", aVar.i().d(), "because paused request got canceled");
            }
        }
        com.squareup.imagelib.a aVarRemove = this.f7750f.remove(aVar.k());
        if (aVarRemove == null || !aVarRemove.g().p) {
            return;
        }
        a0.v("Dispatcher", "canceled", aVarRemove.i().d(), "from replaying");
    }

    void p(com.squareup.imagelib.c cVar) {
        if (MemoryPolicy.g(cVar.p())) {
            this.k.b(cVar.n(), cVar.s());
        }
        this.f7749e.remove(cVar.n());
        a(cVar);
        if (cVar.q().p) {
            a0.v("Dispatcher", "batched", a0.l(cVar), "for completion");
        }
    }

    void q(com.squareup.imagelib.c cVar, boolean z) {
        if (cVar.q().p) {
            String strL = a0.l(cVar);
            StringBuilder sb = new StringBuilder();
            sb.append("for error");
            sb.append(z ? " (will replay)" : "");
            a0.v("Dispatcher", "batched", strL, sb.toString());
        }
        this.f7749e.remove(cVar.n());
        a(cVar);
    }

    void r(NetworkInfo networkInfo) {
        ExecutorService executorService = this.c;
        if (executorService instanceof r) {
            ((r) executorService).a(networkInfo);
        }
        if (networkInfo == null || !networkInfo.isConnected()) {
            return;
        }
        i();
    }

    void s(Object obj) {
        if (this.h.add(obj)) {
            Iterator<com.squareup.imagelib.c> it = this.f7749e.values().iterator();
            while (it.hasNext()) {
                com.squareup.imagelib.c next = it.next();
                boolean z = next.q().p;
                com.squareup.imagelib.a aVarH = next.h();
                List<com.squareup.imagelib.a> listI = next.i();
                boolean z2 = (listI == null || listI.isEmpty()) ? false : true;
                if (aVarH != null || z2) {
                    if (aVarH != null && aVarH.j().equals(obj)) {
                        next.f(aVarH);
                        this.f7751g.put(aVarH.k(), aVarH);
                        if (z) {
                            a0.v("Dispatcher", o2.h.f0, aVarH.b.d(), "because tag '" + obj + "' was paused");
                        }
                    }
                    if (z2) {
                        for (int size = listI.size() - 1; size >= 0; size--) {
                            com.squareup.imagelib.a aVar = listI.get(size);
                            if (aVar.j().equals(obj)) {
                                next.f(aVar);
                                this.f7751g.put(aVar.k(), aVar);
                                if (z) {
                                    a0.v("Dispatcher", o2.h.f0, aVar.b.d(), "because tag '" + obj + "' was paused");
                                }
                            }
                        }
                    }
                    if (next.c()) {
                        it.remove();
                        if (z) {
                            a0.v("Dispatcher", "canceled", a0.l(next), "all actions paused");
                        }
                    }
                }
            }
        }
    }

    void t(Object obj) {
        if (this.h.remove(obj)) {
            ArrayList arrayList = null;
            Iterator<com.squareup.imagelib.a> it = this.f7751g.values().iterator();
            while (it.hasNext()) {
                com.squareup.imagelib.a next = it.next();
                if (next.j().equals(obj)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(next);
                    it.remove();
                }
            }
            if (arrayList != null) {
                Handler handler = this.j;
                handler.sendMessage(handler.obtainMessage(13, arrayList));
            }
        }
    }

    void u(com.squareup.imagelib.c cVar) {
        if (cVar.u()) {
            return;
        }
        boolean z = false;
        if (this.c.isShutdown()) {
            q(cVar, false);
            return;
        }
        NetworkInfo activeNetworkInfo = this.o ? ((ConnectivityManager) a0.p(this.b, "connectivity")).getActiveNetworkInfo() : null;
        boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        boolean zW = cVar.w(this.p, activeNetworkInfo);
        boolean zX = cVar.x();
        if (!zW) {
            if (this.o && zX) {
                z = true;
            }
            q(cVar, z);
            if (z) {
                l(cVar);
                return;
            }
            return;
        }
        if (this.o && !z2) {
            q(cVar, zX);
            if (zX) {
                l(cVar);
                return;
            }
            return;
        }
        if (cVar.q().p) {
            a0.u("Dispatcher", "retrying", a0.l(cVar));
        }
        if (cVar.k() instanceof p.a) {
            cVar.m |= NetworkPolicy.NO_CACHE.f7728e;
        }
        cVar.r = this.c.submit(cVar);
    }

    void v(com.squareup.imagelib.a aVar) {
        w(aVar, true);
    }

    void w(com.squareup.imagelib.a aVar, boolean z) {
        if (this.h.contains(aVar.j())) {
            this.f7751g.put(aVar.k(), aVar);
            if (aVar.g().p) {
                a0.v("Dispatcher", o2.h.f0, aVar.b.d(), "because tag '" + aVar.j() + "' is paused");
                return;
            }
            return;
        }
        com.squareup.imagelib.c cVar = this.f7749e.get(aVar.d());
        if (cVar != null) {
            cVar.b(aVar);
            return;
        }
        if (this.c.isShutdown()) {
            if (aVar.g().p) {
                a0.v("Dispatcher", "ignored", aVar.b.d(), "because shut down");
                return;
            }
            return;
        }
        com.squareup.imagelib.c cVarG = com.squareup.imagelib.c.g(aVar.g(), this, this.k, this.l, aVar);
        cVarG.r = this.c.submit(cVarG);
        this.f7749e.put(aVar.d(), cVarG);
        if (z) {
            this.f7750f.remove(aVar.k());
        }
        if (aVar.g().p) {
            a0.u("Dispatcher", "enqueued", aVar.b.d());
        }
    }
}
