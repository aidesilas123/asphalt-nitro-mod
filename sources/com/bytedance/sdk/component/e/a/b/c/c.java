package com.bytedance.sdk.component.e.a.b.c;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.bytedance.sdk.component.e.a.a.d;
import com.bytedance.sdk.component.e.a.e;
import com.bytedance.sdk.component.e.a.f;
import com.bytedance.sdk.component.e.a.i;
import com.facebook.internal.security.CertificateUtil;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: AdPriorityLogThread.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends HandlerThread implements Handler.Callback {
    private static int q = 10;
    private static int r = 200;
    protected d a;
    private volatile boolean b;
    private final Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.e.a.b.c f1014d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final PriorityBlockingQueue<com.bytedance.sdk.component.e.a.d.a> f1015e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile int f1016f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile long f1017g;
    private volatile long h;
    private final AtomicInteger i;
    private final long j;
    private final long k;
    private final AtomicInteger l;
    private volatile Handler m;
    private final List<com.bytedance.sdk.component.e.a.d.a> n;
    private final AtomicInteger o;
    private final AtomicInteger p;
    private final int s;
    private final int t;
    private final int u;

    public c(PriorityBlockingQueue<com.bytedance.sdk.component.e.a.d.a> priorityBlockingQueue) {
        super("csj_log");
        this.b = true;
        this.c = new Object();
        this.f1017g = 0L;
        this.h = 0L;
        this.i = new AtomicInteger(0);
        this.j = 5000L;
        this.k = 5000000000L;
        this.l = new AtomicInteger(0);
        this.n = new ArrayList();
        this.o = new AtomicInteger(0);
        this.p = new AtomicInteger(0);
        this.s = 1;
        this.t = 2;
        this.u = 3;
        this.f1015e = priorityBlockingQueue;
        this.a = new com.bytedance.sdk.component.e.a.a.b();
    }

    public static void a(int i) {
        q = i;
        com.bytedance.sdk.component.e.a.c.c.b("PADLT", "config size=" + i);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0087 A[Catch: all -> 0x0150, TryCatch #0 {, blocks: (B:5:0x0005, B:8:0x000b, B:10:0x001d, B:12:0x0023, B:62:0x0110, B:64:0x0114, B:65:0x011e, B:23:0x003c, B:25:0x004f, B:26:0x0054, B:28:0x0056, B:30:0x0063, B:31:0x0068, B:33:0x006a, B:35:0x007d, B:36:0x0082, B:37:0x0087, B:39:0x008d, B:41:0x0091, B:43:0x009d, B:44:0x00a2, B:46:0x00aa, B:47:0x00af, B:48:0x00d1, B:50:0x00df, B:51:0x00e4, B:53:0x00e6, B:55:0x00f3, B:56:0x00f8, B:58:0x00fa, B:60:0x0108, B:61:0x010d, B:68:0x014e), top: B:73:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d1 A[Catch: all -> 0x0150, TryCatch #0 {, blocks: (B:5:0x0005, B:8:0x000b, B:10:0x001d, B:12:0x0023, B:62:0x0110, B:64:0x0114, B:65:0x011e, B:23:0x003c, B:25:0x004f, B:26:0x0054, B:28:0x0056, B:30:0x0063, B:31:0x0068, B:33:0x006a, B:35:0x007d, B:36:0x0082, B:37:0x0087, B:39:0x008d, B:41:0x0091, B:43:0x009d, B:44:0x00a2, B:46:0x00aa, B:47:0x00af, B:48:0x00d1, B:50:0x00df, B:51:0x00e4, B:53:0x00e6, B:55:0x00f3, B:56:0x00f8, B:58:0x00fa, B:60:0x0108, B:61:0x010d, B:68:0x014e), top: B:73:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(int r6, java.util.List<com.bytedance.sdk.component.e.a.d.a> r7, long r8) {
        /*
            Method dump skipped, instruction units count: 339
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.e.a.b.c.c.a(int, java.util.List, long):void");
    }

    private void a(b bVar, List<com.bytedance.sdk.component.e.a.d.a> list) {
        if (bVar == null || !bVar.a) {
            return;
        }
        List<e> listA = com.bytedance.sdk.component.e.a.b.a();
        if (list == null || listA == null || listA.size() == 0) {
            return;
        }
        for (com.bytedance.sdk.component.e.a.d.a aVar : list) {
            if (aVar.e() == 1) {
                String strA = com.bytedance.sdk.component.e.a.c.a.a(aVar);
                String strE = com.bytedance.sdk.component.e.a.c.a.e(aVar);
                for (e eVar : listA) {
                    if (eVar != null) {
                        eVar.a(strA, strE);
                    }
                }
            }
        }
    }

    private void a(com.bytedance.sdk.component.e.a.d.a aVar) {
        this.i.set(0);
        com.bytedance.sdk.component.e.a.b.d dVar = com.bytedance.sdk.component.e.a.b.d.a;
        if (dVar.b) {
            this.f1016f = 5;
        } else if (dVar.c) {
            this.f1016f = 7;
        } else {
            this.f1016f = 4;
        }
        com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.U(), 1);
        this.a.a(aVar, this.f1016f);
        com.bytedance.sdk.component.e.a.c.a.g(aVar);
    }

    private void a(com.bytedance.sdk.component.e.a.d.a aVar, int i) {
        this.i.set(0);
        com.bytedance.sdk.component.e.a.c.c.a("handleThreadMessage()");
        if (i == 0) {
            this.f1016f = ((com.bytedance.sdk.component.e.a.d.b) aVar).k();
            if (this.f1016f != 6) {
                com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.N(), 1);
                b(aVar);
                return;
            }
            return;
        }
        com.bytedance.sdk.component.e.a.d.b bVar = (com.bytedance.sdk.component.e.a.d.b) aVar;
        if (bVar.k() == 1) {
            this.f1016f = 1;
            b(aVar);
            return;
        }
        if (bVar.k() == 2) {
            com.bytedance.sdk.component.e.a.c.c.a("before size:" + i);
            f();
            com.bytedance.sdk.component.e.a.c.c.a("after size :" + i);
            this.f1016f = 2;
            b(aVar);
        }
    }

    private void a(String str) {
        if (this.m.hasMessages(11)) {
            this.m.removeMessages(11);
            com.bytedance.sdk.component.e.a.c.c.a("_opt", "handler remove delay opt message");
        }
        if (this.n.size() == 0) {
            com.bytedance.sdk.component.e.a.c.c.a("_opt", " delayList is empty ：" + str);
            return;
        }
        ArrayList arrayList = new ArrayList(this.n);
        this.n.clear();
        a((List<com.bytedance.sdk.component.e.a.d.a>) arrayList, false, "before_" + str);
        i();
        com.bytedance.sdk.component.e.a.c.c.c("PADLT", "applog batch reporting size = " + arrayList.size());
    }

    private void a(List<com.bytedance.sdk.component.e.a.d.a> list) {
        if (list.size() == 0) {
            h();
            com.bytedance.sdk.component.e.a.c.c.a("_opt", "list is empty");
            return;
        }
        com.bytedance.sdk.component.e.a.c.a.a(list, this.f1015e.size());
        if (list.size() > 1 || com.bytedance.sdk.component.e.a.c.a.c()) {
            com.bytedance.sdk.component.e.a.c.c.b("PADLT", "Batch report（ local or stats ）");
            a(list, "batchRead");
            return;
        }
        com.bytedance.sdk.component.e.a.d.a aVar = list.get(0);
        if (aVar == null) {
            com.bytedance.sdk.component.e.a.c.c.a("_opt", "adLogEvent is null");
            return;
        }
        if (aVar.e() == 1) {
            a(list, "highPriority");
            com.bytedance.sdk.component.e.a.c.c.b("PADLT", "Single high priority （ applog ）");
            return;
        }
        if (aVar.d() == 0 && aVar.e() == 2) {
            if (aVar.b() == 3) {
                a(list, "version_v3");
                return;
            } else {
                b(list);
                return;
            }
        }
        if (aVar.d() == 1) {
            com.bytedance.sdk.component.e.a.c.c.b("PADLT", "Stats batch report （ stats ）");
            a(list, "stats");
        } else if (aVar.d() == 3) {
            a(list, "adType_v3");
        } else if (aVar.d() != 2) {
            com.bytedance.sdk.component.e.a.c.c.a("_opt", "adLogEvent adType error");
        } else {
            com.bytedance.sdk.component.e.a.c.c.b("PADLT", "Single high priority （ stats ）");
            a(list, "other");
        }
    }

    private void a(List<com.bytedance.sdk.component.e.a.d.a> list, String str) {
        a(str);
        a(list, false, str);
        i();
    }

    private void a(final List<com.bytedance.sdk.component.e.a.d.a> list, final boolean z, final long j) {
        f fVarP = i.g().p();
        if (fVarP != null) {
            Executor executorF = fVarP.f();
            if (list.get(0).e() == 1) {
                executorF = fVarP.e();
            }
            if (executorF == null) {
                return;
            }
            this.l.incrementAndGet();
            executorF.execute(new com.bytedance.sdk.component.e.a.e.e("csj_log_upload") { // from class: com.bytedance.sdk.component.e.a.b.c.c.1
                @Override // java.lang.Runnable
                public void run() {
                    c cVar = c.this;
                    cVar.a((List<com.bytedance.sdk.component.e.a.d.a>) list, z, j, cVar.f1016f);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<com.bytedance.sdk.component.e.a.d.a> list, boolean z, long j, int i) {
        b bVarA;
        try {
            com.bytedance.sdk.component.e.a.d.a aVar = list.get(0);
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.ad(), 1);
            if (aVar.d() == 0) {
                bVarA = i.e().a(list);
                a(bVarA, list);
                if (bVarA != null) {
                    com.bytedance.sdk.component.e.a.c.a.a(list, bVarA.f1012d);
                }
            } else {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONArray jSONArray = new JSONArray();
                    Iterator<com.bytedance.sdk.component.e.a.d.a> it = list.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(it.next().g());
                    }
                    jSONObject.put("stats_list", jSONArray);
                } catch (Exception e2) {
                    com.bytedance.sdk.component.e.a.c.c.d("json exception:" + e2.getMessage());
                }
                bVarA = i.e().a(jSONObject);
            }
            b bVar = bVarA;
            this.l.decrementAndGet();
            a(z, bVar, list, j);
        } catch (Throwable th) {
            com.bytedance.sdk.component.e.a.c.c.d("inner exception:" + th.getMessage());
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.K(), 1);
            this.l.decrementAndGet();
        }
    }

    private void a(List<com.bytedance.sdk.component.e.a.d.a> list, boolean z, String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.bytedance.sdk.component.e.a.c.a.a(list, this.f1016f, str);
        com.bytedance.sdk.component.e.a.b.c cVarH = i.g().h();
        this.f1014d = cVarH;
        if (cVarH != null) {
            b(list, z, jCurrentTimeMillis);
        } else {
            a(list, z, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, b bVar, List<com.bytedance.sdk.component.e.a.d.a> list, long j) {
        if (z || bVar == null) {
            return;
        }
        int i = bVar.b;
        int i2 = -2;
        if (bVar.f1013e) {
            i = -1;
        } else if (i < 0) {
            i = -2;
        }
        if (i == 510 || i == 511) {
            i = -2;
        }
        if (bVar.a || ((i < 500 || i >= 509) && i <= 513)) {
            i2 = i;
        }
        if (list != null) {
            com.bytedance.sdk.component.e.a.c.c.a("preprocessResult code is " + i2 + " sz:" + list.size() + "  count:" + this.l.get());
        }
        a(i2, list, j);
    }

    private void b() {
        com.bytedance.sdk.component.e.a.c.c.a("sendServerBusyOrRoutineErrorRetryMessage");
        c();
        com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.I(), 1);
        c(1);
    }

    public static void b(int i) {
        r = i;
        com.bytedance.sdk.component.e.a.c.c.b("PADLT", "applog_interval=" + i);
    }

    private void b(com.bytedance.sdk.component.e.a.d.a aVar) {
        if (com.bytedance.sdk.component.e.a.c.a.b() && i.g().a()) {
            com.bytedance.sdk.component.e.a.c.c.c("upload cancel meet delay");
            return;
        }
        int i = 0;
        if (g()) {
            com.bytedance.sdk.component.e.a.c.c.c("upload cancel:" + com.bytedance.sdk.component.e.a.c.a.a(this.f1016f));
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.l(), 1);
            if (this.f1015e.size() != 0) {
                return;
            }
            if (this.m.hasMessages(2)) {
                a(false);
                return;
            }
            com.bytedance.sdk.component.e.a.b.d.a.b = false;
            this.h = 0L;
            this.f1017g = 0L;
            this.o.set(0);
            this.p.set(0);
        }
        do {
            boolean zA = a(this.f1016f, com.bytedance.sdk.component.e.a.b.d.a.b);
            com.bytedance.sdk.component.e.a.c.a.a(zA, this.f1016f, aVar);
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.m(), 1);
            if (zA) {
                List<com.bytedance.sdk.component.e.a.d.a> listA = this.a.a(this.f1016f, -1, null);
                if (listA != null) {
                    com.bytedance.sdk.component.e.a.c.c.b("_opt", "prepare upload size=" + listA.size() + "  times=" + i);
                    a(listA);
                } else {
                    com.bytedance.sdk.component.e.a.c.c.b("_opt", " no event need upload");
                    h();
                }
            } else {
                h();
            }
            i++;
            com.bytedance.sdk.component.e.a.c.c.b("_opt", "loop times=" + i + " needupload:" + zA);
            if (!zA) {
                return;
            }
        } while (i <= 6);
    }

    private void b(List<com.bytedance.sdk.component.e.a.d.a> list) {
        this.n.addAll(list);
        com.bytedance.sdk.component.e.a.c.c.b("PADLT", "a batch applog generation cur=" + this.n.size());
        f fVarP = i.g().p();
        if (fVarP != null && fVarP.m() != null) {
            q = fVarP.m().b();
        }
        if (this.n.size() >= q) {
            if (this.m.hasMessages(11)) {
                this.m.removeMessages(11);
            }
            ArrayList arrayList = new ArrayList(this.n);
            this.n.clear();
            a((List<com.bytedance.sdk.component.e.a.d.a>) arrayList, false, "max_size_dispatch");
            i();
            com.bytedance.sdk.component.e.a.c.c.b("PADLT", "batch applog report ( size ) " + q);
            return;
        }
        if (this.f1015e.size() != 0) {
            com.bytedance.sdk.component.e.a.c.c.a("_opt", "continue save event until size >= 10 ：" + this.b + " " + this.n.size());
            return;
        }
        a(false);
        if (this.m.hasMessages(11)) {
            this.m.removeMessages(11);
        }
        if (this.m.hasMessages(1)) {
            this.m.removeMessages(1);
        }
        long jA = r;
        if (fVarP != null && fVarP.m() != null) {
            jA = fVarP.m().a();
        }
        this.m.sendEmptyMessageDelayed(11, jA);
        com.bytedance.sdk.component.e.a.c.c.b("PADLT", "batch applog report delay ( time )" + jA);
    }

    private void b(List<com.bytedance.sdk.component.e.a.d.a> list, final boolean z, final long j) {
        this.l.incrementAndGet();
        com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.ad(), 1);
        try {
            HashMap map = new HashMap();
            Iterator<com.bytedance.sdk.component.e.a.d.a> it = list.iterator();
            while (it.hasNext()) {
                com.bytedance.sdk.component.e.a.d.a next = it.next();
                int iJ = next == null ? 0 : next.j();
                if (map.get(Integer.valueOf(iJ)) == null) {
                    map.put(Integer.valueOf(iJ), new ArrayList());
                }
                ((List) map.get(Integer.valueOf(iJ))).add(next);
            }
            Iterator it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                int iIntValue = ((Integer) it2.next()).intValue();
                if (iIntValue == 0 || i.g().c() == null || i.g().c().get(Integer.valueOf(iIntValue)) == null) {
                    this.f1014d.a(list, new com.bytedance.sdk.component.e.a.b.b() { // from class: com.bytedance.sdk.component.e.a.b.c.c.2
                        @Override // com.bytedance.sdk.component.e.a.b.b
                        public void a(List<a> list2) {
                            try {
                                c.this.l.decrementAndGet();
                                if (list2 == null || list2.size() == 0) {
                                    return;
                                }
                                int size = list2.size();
                                for (int i = 0; i < size; i++) {
                                    a aVar = list2.get(i);
                                    if (aVar != null) {
                                        c.this.a(z, aVar.a(), aVar.b(), j);
                                    }
                                }
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                    });
                } else {
                    i.g().c().get(Integer.valueOf(iIntValue)).a(list, new com.bytedance.sdk.component.e.a.b.b() { // from class: com.bytedance.sdk.component.e.a.b.c.c.3
                        @Override // com.bytedance.sdk.component.e.a.b.b
                        public void a(List<a> list2) {
                            try {
                                c.this.l.decrementAndGet();
                                if (list2 == null || list2.size() == 0) {
                                    return;
                                }
                                int size = list2.size();
                                for (int i = 0; i < size; i++) {
                                    a aVar = list2.get(i);
                                    if (aVar != null) {
                                        c.this.a(z, aVar.a(), aVar.b(), j);
                                    }
                                }
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                    });
                }
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.e.a.c.c.d("outer exception：" + e2.getMessage());
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.K(), 1);
            this.l.decrementAndGet();
        }
    }

    private void c() {
        if (!isAlive()) {
            com.bytedance.sdk.component.e.a.c.c.a("th dead");
            com.bytedance.sdk.component.e.a.b.d.a.d();
        } else {
            if (a()) {
                return;
            }
            com.bytedance.sdk.component.e.a.c.c.a("monitor  mLogThread ");
            c(6);
        }
    }

    private void d() {
        while (a()) {
            try {
                com.bytedance.sdk.component.e.a.b.a.a aVar = com.bytedance.sdk.component.e.a.b.d.f1019d;
                com.bytedance.sdk.component.e.a.c.b.a(aVar.h(), 1);
                com.bytedance.sdk.component.e.a.d.a aVarPoll = this.f1015e.poll(ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS, TimeUnit.MILLISECONDS);
                int size = this.f1015e.size();
                com.bytedance.sdk.component.e.a.c.c.a("poll size:" + size);
                if (aVarPoll instanceof com.bytedance.sdk.component.e.a.d.b) {
                    a(aVarPoll, size);
                } else if (aVarPoll == null) {
                    int iIncrementAndGet = this.i.incrementAndGet();
                    com.bytedance.sdk.component.e.a.c.b.a(aVar.O(), 1);
                    if (d(iIncrementAndGet)) {
                        e();
                        return;
                    } else if (iIncrementAndGet < 4) {
                        com.bytedance.sdk.component.e.a.c.c.a("timeoutCount:" + iIncrementAndGet);
                        this.f1016f = 1;
                        b((com.bytedance.sdk.component.e.a.d.a) null);
                    }
                } else {
                    a(aVarPoll);
                    b(aVarPoll);
                }
            } catch (Throwable th) {
                th.printStackTrace();
                com.bytedance.sdk.component.e.a.c.c.d("run exception:" + th.getMessage());
                com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.K(), 1);
            }
        }
    }

    private boolean d(int i) {
        if (i >= 4 && this.l.get() == 0) {
            com.bytedance.sdk.component.e.a.b.d dVar = com.bytedance.sdk.component.e.a.b.d.a;
            if (!dVar.b && !dVar.c) {
                return true;
            }
        }
        return false;
    }

    private void e() {
        com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.v(), 1);
        a(false);
        com.bytedance.sdk.component.e.a.b.d.a.c();
        com.bytedance.sdk.component.e.a.c.c.c("exit log thread");
    }

    private void e(int i) {
        if (a()) {
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.a(), 1);
            return;
        }
        if (this.m == null) {
            return;
        }
        com.bytedance.sdk.component.e.a.b.a.a aVar = com.bytedance.sdk.component.e.a.b.d.f1019d;
        com.bytedance.sdk.component.e.a.c.b.a(aVar.c(), 1);
        if (this.m.hasMessages(1)) {
            return;
        }
        if (i == 1) {
            com.bytedance.sdk.component.e.a.c.b.a(aVar.f(), 1);
        } else if (i == 2) {
            com.bytedance.sdk.component.e.a.c.b.a(aVar.d(), 1);
        } else if (i == 3) {
            com.bytedance.sdk.component.e.a.c.b.a(aVar.e(), 1);
        }
        this.m.sendEmptyMessage(1);
    }

    private void f() {
        if (this.f1015e.size() >= 100) {
            for (int i = 0; i < 100; i++) {
                com.bytedance.sdk.component.e.a.d.a aVarPoll = this.f1015e.poll();
                if (aVarPoll instanceof com.bytedance.sdk.component.e.a.d.b) {
                    com.bytedance.sdk.component.e.a.c.c.a("ignore tm");
                } else if (aVarPoll != null) {
                    a(aVarPoll);
                } else {
                    com.bytedance.sdk.component.e.a.c.c.d("event == null");
                }
            }
        }
    }

    private boolean g() {
        return com.bytedance.sdk.component.e.a.b.d.a.b && (this.f1016f == 4 || this.f1016f == 7 || this.f1016f == 6 || this.f1016f == 5 || this.f1016f == 2);
    }

    private void h() {
        try {
            if (this.f1015e.size() == 0 && this.m.hasMessages(11) && a()) {
                a(false);
                com.bytedance.sdk.component.e.a.c.c.a("_opt", "on handler block");
            } else {
                com.bytedance.sdk.component.e.a.c.c.a("_opt", "on eventLoop block");
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.e.a.c.c.d(e2.getMessage());
        }
    }

    private void i() {
        long jNanoTime;
        com.bytedance.sdk.component.e.a.b.d dVar;
        if (this.m.hasMessages(11)) {
            h();
        } else {
            e(1);
        }
        com.bytedance.sdk.component.e.a.c.c.a("afterUpload message:" + this.f1016f);
        com.bytedance.sdk.component.e.a.b.a.a aVar = com.bytedance.sdk.component.e.a.b.d.f1019d;
        com.bytedance.sdk.component.e.a.c.b.a(aVar.b(), 1);
        if (this.f1016f == 2) {
            com.bytedance.sdk.component.e.a.c.b.a(aVar.g(), 1);
            synchronized (this.c) {
                try {
                    try {
                        long jNanoTime2 = System.nanoTime();
                        this.c.wait(5000L);
                        jNanoTime = System.nanoTime() - jNanoTime2;
                        StringBuilder sb = new StringBuilder();
                        sb.append("afterUpload delta:");
                        sb.append(jNanoTime);
                        sb.append(" start:");
                        sb.append(jNanoTime2);
                        sb.append(" condition:");
                        dVar = com.bytedance.sdk.component.e.a.b.d.a;
                        sb.append(dVar.b || dVar.c);
                        com.bytedance.sdk.component.e.a.c.c.a(sb.toString());
                    } catch (InterruptedException e2) {
                        com.bytedance.sdk.component.e.a.c.c.d("wait exception:" + e2.getMessage());
                        e2.printStackTrace();
                    }
                    if (jNanoTime < 5000000000L && 5000000000L - jNanoTime >= 50000000) {
                        if (!dVar.b && !dVar.c) {
                            com.bytedance.sdk.component.e.a.c.c.c("afterUpload meet notifyRunOnce again");
                            com.bytedance.sdk.component.e.a.c.b.a(aVar.J(), 1);
                            c(2);
                            return;
                        }
                        com.bytedance.sdk.component.e.a.c.b.a(aVar.k(), 1);
                        com.bytedance.sdk.component.e.a.c.c.d("afterUpload wait serverBusy");
                        return;
                    }
                    com.bytedance.sdk.component.e.a.c.c.d("afterUpload wait timeout");
                    com.bytedance.sdk.component.e.a.c.b.a(aVar.j(), 1);
                } finally {
                }
            }
        }
    }

    public void a(int i, long j) {
        if (this.m == null) {
            com.bytedance.sdk.component.e.a.c.c.d("mHandler == null");
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = i;
        if (i == 2) {
            int iIncrementAndGet = this.o.incrementAndGet();
            long j2 = ((long) (((iIncrementAndGet - 1) % 4) + 1)) * j;
            com.bytedance.sdk.component.e.a.c.c.a("sendMonitorMessage:" + i + "  busy:" + iIncrementAndGet + "  l:" + j2);
            this.m.sendMessageDelayed(messageObtain, j2);
            return;
        }
        if (i != 3) {
            com.bytedance.sdk.component.e.a.c.c.d("sendMonitorMessage error state");
            return;
        }
        int iIncrementAndGet2 = this.p.incrementAndGet();
        com.bytedance.sdk.component.e.a.c.c.a("sendMonitorMessage:" + i + "  error:" + iIncrementAndGet2);
        this.m.sendMessageDelayed(messageObtain, ((long) (((iIncrementAndGet2 + (-1)) % 4) + 1)) * j);
    }

    public void a(com.bytedance.sdk.component.e.a.d.a aVar, boolean z) {
        if (aVar == null) {
            return;
        }
        com.bytedance.sdk.component.e.a.c.c.a("ignore result : " + z + CertificateUtil.DELIMITER + this.b + " adType: " + ((int) aVar.d()));
        if (!z) {
            this.f1015e.add(aVar);
            e(2);
        } else {
            if (this.m == null) {
                com.bytedance.sdk.component.e.a.c.c.d("handler is null，ignore is true");
                return;
            }
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(aVar);
            a((List<com.bytedance.sdk.component.e.a.d.a>) arrayList, true, "ignore_result_dispatch");
        }
    }

    public void a(boolean z) {
        this.b = z;
    }

    public boolean a() {
        return this.b;
    }

    public boolean a(int i, boolean z) {
        f fVarP = i.g().p();
        if (fVarP != null && fVarP.a(i.g().f())) {
            return this.a.a(i, z);
        }
        com.bytedance.sdk.component.e.a.c.c.d("AdThread NET IS NOT AVAILABLE!!!");
        return false;
    }

    public void c(int i) {
        try {
            boolean zA = a(i, com.bytedance.sdk.component.e.a.b.d.a.b);
            com.bytedance.sdk.component.e.a.c.c.c("notify flush : " + zA + " " + i);
            if (i == 6 || zA) {
                com.bytedance.sdk.component.e.a.d.b bVar = new com.bytedance.sdk.component.e.a.d.b();
                bVar.b(i);
                this.f1015e.add(bVar);
                e(3);
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.e.a.c.c.d(th.getMessage());
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        try {
        } catch (Throwable th) {
            com.bytedance.sdk.component.e.a.c.c.d("error:" + th.getMessage());
        }
        if (i == 1) {
            com.bytedance.sdk.component.e.a.c.c.a("HANDLER_MESSAGE_INIT");
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.i(), 1);
            a(true);
            d();
        } else {
            if (i != 2 && i != 3) {
                if (i == 11) {
                    com.bytedance.sdk.component.e.a.c.c.a("_opt", "do upload");
                    ArrayList arrayList = new ArrayList(this.n);
                    this.n.clear();
                    a((List<com.bytedance.sdk.component.e.a.d.a>) arrayList, false, "timeout_dispatch");
                    i();
                }
                return true;
            }
            com.bytedance.sdk.component.e.a.c.c.a("-----------------server busy handleMessage---------------- ");
            b();
        }
        return true;
    }

    @Override // android.os.HandlerThread
    protected void onLooperPrepared() {
        super.onLooperPrepared();
        this.m = new Handler(getLooper(), this);
        com.bytedance.sdk.component.e.a.b.d.a.a(this.m);
        this.m.sendEmptyMessage(1);
        com.bytedance.sdk.component.e.a.c.c.a("onLooperPrepared");
    }
}
