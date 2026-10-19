package com.bykv.vk.openvk.component.video.a.b;

import com.bykv.vk.openvk.component.video.a.b.i;
import com.bykv.vk.openvk.component.video.a.b.l;
import com.json.mediationsdk.config.VersionInfo;
import com.mbridge.msdk.foundation.download.Command;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: AbsTask.java */
/* JADX INFO: loaded from: classes.dex */
abstract class a implements k {
    private static final AtomicLong m = new AtomicLong();
    protected volatile com.bykv.vk.openvk.component.video.a.b.a.a a;
    protected final com.bykv.vk.openvk.component.video.a.b.b.c b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected com.bykv.vk.openvk.component.video.a.b.d.a f408e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected volatile List<i.b> f409f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected volatile String f410g;
    protected volatile String h;
    protected volatile i i;
    protected volatile l j;
    protected final AtomicInteger c = new AtomicInteger();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final AtomicLong f407d = new AtomicLong();
    protected volatile boolean k = false;
    public final long l = m.incrementAndGet();
    private final AtomicInteger n = new AtomicInteger(0);
    private int o = -1;

    public a(com.bykv.vk.openvk.component.video.a.b.a.a aVar, com.bykv.vk.openvk.component.video.a.b.b.c cVar) {
        this.a = aVar;
        this.b = cVar;
    }

    protected com.bykv.vk.openvk.component.video.a.b.e.a a(l.a aVar, int i, int i2, String str) throws IOException {
        com.bykv.vk.openvk.component.video.a.b.e.b bVarB = com.bykv.vk.openvk.component.video.a.b.e.c.a().b();
        com.bykv.vk.openvk.component.video.a.b.e.e eVar = new com.bykv.vk.openvk.component.video.a.b.e.e();
        HashMap map = new HashMap();
        eVar.b = aVar.a;
        eVar.a = 0;
        if (VersionInfo.GIT_BRANCH.equalsIgnoreCase(str)) {
            eVar.a = 4;
        }
        List<i.b> list = this.f409f;
        if (list != null && !list.isEmpty()) {
            for (i.b bVar : list) {
                if (!Command.HTTP_HEADER_RANGE.equalsIgnoreCase(bVar.a) && !"Connection".equalsIgnoreCase(bVar.a) && !"Proxy-Connection".equalsIgnoreCase(bVar.a) && !"Host".equalsIgnoreCase(bVar.a)) {
                    map.put(bVar.a, bVar.b);
                }
            }
        }
        String strA = com.bykv.vk.openvk.component.video.a.c.a.a(i, i2);
        if (strA != null) {
            map.put(Command.HTTP_HEADER_RANGE, strA);
        }
        if (e.f433f) {
            map.put("Cache-Control", "no-cache");
        }
        d dVarC = d.c();
        f fVarA = f.a();
        boolean z = this.i == null;
        c cVarA = z ? dVarC.a() : fVarA.b();
        c cVarB = z ? dVarC.b() : fVarA.c();
        if (cVarA != null || cVarB != null) {
            if (cVarA != null) {
                eVar.c = cVarA.a(aVar.b);
            }
            if (cVarB != null) {
                eVar.f435d = cVarB.a(aVar.b);
            }
        }
        eVar.f436e = map;
        if (!this.k) {
            return bVarB.a(eVar);
        }
        this.k = false;
        return null;
    }

    public void a() {
        this.n.compareAndSet(0, 1);
    }

    protected void a(int i, int i2) {
        if (i <= 0 || i2 < 0) {
            return;
        }
        int i3 = e.f434g;
        int iF = f();
        if (i3 == 1 || (i3 == 2 && iF == 1)) {
            int i4 = (int) ((i2 / i) * 100.0f);
            if (i4 > 100) {
                i4 = 100;
            }
            synchronized (this) {
                if (i4 <= this.o) {
                    return;
                }
                this.o = i4;
                com.bykv.vk.openvk.component.video.a.c.a.a(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.b.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a aVar = a.this;
                        com.bykv.vk.openvk.component.video.a.b.d.a aVar2 = aVar.f408e;
                        if (aVar2 != null) {
                            aVar2.a(aVar.j, a.this.o);
                        }
                    }
                });
            }
        }
    }

    protected void a(Boolean bool, String str, Throwable th) {
    }

    public boolean b() {
        return this.n.get() == 1;
    }

    protected void c() {
        this.n.compareAndSet(0, 2);
    }

    public boolean d() {
        return this.n.get() == 2;
    }

    protected void e() throws com.bykv.vk.openvk.component.video.a.b.c.a {
        if (b()) {
            throw new com.bykv.vk.openvk.component.video.a.b.c.a();
        }
    }

    protected int f() {
        return this.i != null ? this.i.c.a : this.a instanceof com.bykv.vk.openvk.component.video.a.b.a.b ? 1 : 0;
    }

    protected boolean g() {
        return f() == 1;
    }
}
