package com.mbridge.msdk.e;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: ReportManager.java */
/* JADX INFO: loaded from: classes4.dex */
final class r {
    private final c a;
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f6984d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k f6985e;
    private Handler i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicInteger f6986f = new AtomicInteger(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicInteger f6987g = new AtomicInteger(0);
    private final Object h = new Object();
    private boolean j = true;
    private long k = 0;
    private volatile boolean l = false;
    private volatile boolean m = false;

    /* JADX INFO: compiled from: ReportManager.java */
    private static final class a implements q {
        private final Handler a;
        private final r b;

        public a(Handler handler, r rVar) {
            this.a = handler;
            this.b = rVar;
        }

        @Override // com.mbridge.msdk.e.q
        public final void a(s sVar) {
            r.a(this.b, sVar.a());
            r.j(this.b);
            this.b.k = 0L;
            Handler handler = this.a;
            handler.sendMessage(Message.obtain(handler, 2));
            if (com.mbridge.msdk.e.a.a) {
                Log.d("TrackManager", "report success " + sVar.a().size() + " 剩余事件数：" + this.b.f6987g.get() + " 个，数据库记录数：" + this.b.a.a() + " 个");
            }
        }

        @Override // com.mbridge.msdk.e.q
        public final void a(s sVar, int i, String str) {
            r.b(this.b, sVar.a());
            this.b.k = System.currentTimeMillis();
            int iK = r.k(this.b);
            if (iK <= 10) {
                Handler handler = this.a;
                handler.sendMessageDelayed(Message.obtain(handler, 3), ((long) iK) * 1000);
            }
            if (com.mbridge.msdk.e.a.a) {
                Log.d("TrackManager", "report failed " + sVar.a().size() + " 剩余事件数：" + this.b.f6987g.get() + " 个，数据库记录数：" + this.b.a.a() + " 个 连续失败次数： " + iK);
            }
        }
    }

    /* JADX INFO: compiled from: ReportManager.java */
    private static final class b extends Handler {
        private final r a;

        public b(Looper looper, r rVar) {
            super(looper);
            this.a = rVar;
        }

        private void a() {
            try {
                r.f(this.a);
            } catch (Exception e2) {
                if (com.mbridge.msdk.e.a.a) {
                    Log.e("TrackManager", "report failed ", e2);
                }
            }
        }

        private void a(String str) {
            Log.d("TrackManager", str + this.a.f6987g.get() + " 数据库记录数：" + this.a.a.a());
        }

        private void b() {
            try {
                removeMessages(1);
                removeMessages(6);
                removeMessages(2);
                removeMessages(3);
            } catch (Exception e2) {
                if (com.mbridge.msdk.e.a.a) {
                    Log.e("TrackManager", "removeMessages failed ", e2);
                }
            }
            if (this.a.e()) {
                return;
            }
            try {
                sendMessageDelayed(Message.obtain(this, 1), y.a(this.a.f6986f.get(), this.a.k, this.a.c));
            } catch (Exception e3) {
                if (com.mbridge.msdk.e.a.a) {
                    Log.e("TrackManager", "sendMessageDelayed failed ", e3);
                }
            }
        }

        @Override // android.os.Handler
        public final void dispatchMessage(Message message) {
            super.dispatchMessage(message);
            int i = message.what;
            if (i == 2 || i == 3) {
                b();
                if (com.mbridge.msdk.e.a.a) {
                    a("触发上报（report result）当前 Event 数量：");
                }
                a();
                return;
            }
            if (i == 5) {
                if (com.mbridge.msdk.e.a.a) {
                    a("触发删除 当前 Event 数量：");
                }
                r.c(this.a);
                sendMessageDelayed(Message.obtain(this, 5), 120000L);
                return;
            }
            if (i != 6) {
                if (i == 7) {
                    this.a.c();
                    b();
                    if (com.mbridge.msdk.e.a.a) {
                        a("触发上报（flush）当前 Event 数量：");
                    }
                    a();
                    return;
                }
                b();
                if (y.a(this.a.f6985e.e())) {
                    if (com.mbridge.msdk.e.a.a) {
                        a("触发上报（timer）当前 Event 数量：");
                    }
                    a();
                    return;
                } else {
                    if (com.mbridge.msdk.e.a.a) {
                        Log.d("TrackManager", "当前网络不可用");
                        return;
                    }
                    return;
                }
            }
            r.a(this.a);
            Object obj = message.obj;
            e eVar = obj instanceof e ? (e) obj : null;
            boolean z = false;
            if (com.mbridge.msdk.e.a.a && !y.a(eVar)) {
                a(String.format("收到 Event( %s )，当前 Event 数量：", eVar.a()));
            }
            if (y.b(eVar) && eVar.c() == 1) {
                z = true;
            }
            if (z || this.a.d()) {
                b();
                if (com.mbridge.msdk.e.a.a) {
                    a("触发上报（notice check）当前 Event 数量：");
                }
                if (y.a(this.a.f6985e.e())) {
                    a();
                } else if (com.mbridge.msdk.e.a.a) {
                    Log.d("TrackManager", "当前网络不可用");
                }
            }
        }
    }

    public r(k kVar) {
        this.a = kVar.g();
        this.b = kVar.l();
        this.c = kVar.m();
        this.f6984d = kVar.n();
        this.f6985e = kVar;
    }

    static /* synthetic */ void a(r rVar) {
        rVar.f6987g.incrementAndGet();
    }

    static /* synthetic */ void a(r rVar, List list) {
        if (y.a((List<?>) list)) {
            return;
        }
        rVar.a.b((List<i>) list);
    }

    static /* synthetic */ void b(r rVar, List list) {
        if (y.a((List<?>) list)) {
            return;
        }
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            i iVar = (i) it.next();
            if (!y.a(iVar)) {
                boolean z = !iVar.b() && iVar.d() >= rVar.f6984d;
                boolean z2 = !iVar.a() && iVar.g() < System.currentTimeMillis();
                if (z || z2) {
                    iVar.b(-1);
                } else {
                    iVar.a(iVar.d() + 1);
                    iVar.b(3);
                    i++;
                }
            }
        }
        rVar.a.c((List<i>) list);
        AtomicInteger atomicInteger = rVar.f6987g;
        atomicInteger.set(atomicInteger.get() + i);
    }

    static /* synthetic */ void c(r rVar) {
        int iB = rVar.a.b();
        if (com.mbridge.msdk.e.a.a) {
            Log.d("TrackManager", "删除无效数据的数量 = " + iB + " 当前剩余事件数 = " + rVar.f6987g.get() + " 数据库中剩余事件数 = " + rVar.a.a());
        }
    }

    static /* synthetic */ void f(r rVar) {
        List<i> listA = rVar.a.a(rVar.b);
        if (y.a((List<?>) listA)) {
            if (com.mbridge.msdk.e.a.a) {
                Log.d("TrackManager", "report: 没有可以上报的数据");
                return;
            }
            return;
        }
        rVar.a.a(listA);
        AtomicInteger atomicInteger = rVar.f6987g;
        atomicInteger.set(atomicInteger.get() - listA.size());
        if (com.mbridge.msdk.e.a.a) {
            Log.d("TrackManager", "report: 上报的数量 = " + listA.size() + " 当前剩余事件数 = " + rVar.f6987g.get() + " 数据库中剩余事件数 = " + rVar.a.a());
        }
        boolean zP = false;
        try {
            zP = rVar.f6985e.p();
        } catch (IllegalStateException e2) {
            if (com.mbridge.msdk.e.a.a) {
                Log.e("TrackManager", "report environment check failed ", e2);
            }
        }
        if (!zP) {
            if (com.mbridge.msdk.e.a.a) {
                Log.e("TrackManager", "report 失败，请检查 TrackConfig 配置是否正确");
                return;
            }
            return;
        }
        n nVarQ = rVar.f6985e.q();
        nVarQ.a(new a(rVar.i, rVar));
        Map<String, String> map = new HashMap<>();
        try {
            map = rVar.f6985e.j().a(rVar.f6985e.k(), listA, rVar.f6985e.f());
        } catch (Exception e3) {
            if (com.mbridge.msdk.e.a.a) {
                Log.e("TrackManager", "report decorate request params failed ", e3);
            }
        }
        nVarQ.a(new s(listA), map, y.b(listA));
    }

    static /* synthetic */ void j(r rVar) {
        rVar.f6986f.set(0);
    }

    static /* synthetic */ int k(r rVar) {
        return rVar.f6986f.getAndIncrement();
    }

    public final void a() {
        HandlerThread handlerThread = new HandlerThread("report_timer");
        handlerThread.start();
        b bVar = new b(handlerThread.getLooper(), this);
        this.i = bVar;
        bVar.sendMessageDelayed(Message.obtain(bVar, 5), 5000L);
        Handler handler = this.i;
        handler.sendMessageDelayed(Message.obtain(handler, 1), this.c);
        this.j = false;
    }

    public final void a(e eVar) {
        Handler handler = this.i;
        handler.sendMessage(Message.obtain(handler, 6, eVar));
    }

    public final void b() {
        this.i.removeMessages(1);
        Handler handler = this.i;
        handler.sendMessage(Message.obtain(handler, 7));
    }

    public final void c() {
        synchronized (this.h) {
            if (!this.l) {
                this.l = true;
                this.a.c();
            }
            if (!this.m) {
                this.m = true;
                this.f6987g.set(this.a.a());
            }
        }
    }

    protected final boolean d() {
        return this.f6987g.get() >= this.b;
    }

    final boolean e() {
        return this.j;
    }
}
