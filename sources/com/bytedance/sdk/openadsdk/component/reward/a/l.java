package com.bytedance.sdk.openadsdk.component.reward.a;

import android.app.Activity;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.b.d.b.o;
import com.bytedance.sdk.openadsdk.core.model.o;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.gameloft.adsmanager.JavaUtils;
import java.io.File;
import java.util.Map;

/* JADX INFO: compiled from: RewardFullVideoPlayerManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class l {
    boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f1332d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.bykv.vk.openvk.component.video.api.d.c f1334f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Activity f1335g;
    private final q h;
    private FrameLayout i;
    private final String j;
    private long k;
    private long l;
    private boolean m;
    private final a n;
    private boolean o;
    private com.bytedance.sdk.openadsdk.b.g p;
    protected boolean a = false;
    boolean b = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f1333e = false;

    public l(a aVar) {
        this.n = aVar;
        this.f1335g = aVar.V;
        this.h = aVar.a;
        this.f1332d = aVar.f1316f;
        this.j = aVar.f1317g;
    }

    private void E() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar == null || cVar.l() == null) {
            return;
        }
        this.k = this.f1334f.e();
        if (this.f1334f.l().c() || !this.f1334f.l().b()) {
            this.f1334f.a();
            this.f1334f.c();
            this.a = true;
        }
    }

    private boolean a(long j, boolean z) {
        com.bytedance.sdk.component.utils.l.b("TTAD.RFVideoPlayerMag", "playVideo start");
        if (this.f1334f == null || this.h.K() == null) {
            com.bytedance.sdk.component.utils.l.b("TTAD.RFVideoPlayerMag", "playVideo controller is Empty");
            return false;
        }
        String strA = CacheDirFactory.getICacheDir(this.h.aK()).a();
        File file = new File(strA, this.h.K().n());
        if (file.exists() && file.length() > 0) {
            this.b = true;
        }
        com.bytedance.sdk.openadsdk.core.video.a.b bVarA = q.a(strA, this.h);
        bVarA.b(this.h.Y());
        bVarA.a(this.i.getWidth());
        bVarA.b(this.i.getHeight());
        bVarA.c(this.h.ac());
        bVarA.a(j);
        bVarA.a(z);
        if (this.n.V.p() && !this.n.J.h() && q.c(this.h)) {
            bVarA.f476d = 1;
        }
        return this.f1334f.a(bVarA);
    }

    public double A() {
        if (o.c(this.h) && this.h.i() != null) {
            return this.h.i().b();
        }
        com.bykv.vk.openvk.component.video.api.c.b bVarK = this.h.K();
        if (bVarK != null) {
            return bVarK.f() * ((double) bVarK.w());
        }
        return 0.0d;
    }

    public void B() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar instanceof com.bytedance.sdk.openadsdk.core.video.c.a) {
            ((com.bytedance.sdk.openadsdk.core.video.c.a) cVar).F();
        }
    }

    public View C() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar instanceof com.bytedance.sdk.openadsdk.core.video.c.a) {
            return (View) ((com.bytedance.sdk.openadsdk.core.video.c.a) cVar).H();
        }
        return null;
    }

    public void D() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar instanceof com.bytedance.sdk.openadsdk.core.video.c.a) {
            ((com.bytedance.sdk.openadsdk.core.video.c.a) cVar).I();
        }
    }

    public com.bytedance.sdk.openadsdk.b.g a() {
        return this.p;
    }

    public void a(int i, int i2) {
        if (this.f1334f != null) {
            o.a aVar = new o.a();
            aVar.b(k());
            aVar.c(s());
            aVar.a(g());
            aVar.a(i);
            aVar.b(i2);
            com.bytedance.sdk.openadsdk.b.d.a.a.d(this.f1334f.m(), aVar);
        }
    }

    public void a(long j) {
        this.l = j;
    }

    public void a(FrameLayout frameLayout, com.bytedance.sdk.openadsdk.b.g gVar) {
        if (this.m) {
            return;
        }
        this.m = true;
        this.i = frameLayout;
        this.p = gVar;
        if (!q.c(this.h)) {
            this.f1334f = new com.bytedance.sdk.openadsdk.component.reward.c(this.h, gVar);
        } else {
            this.f1334f = new com.bytedance.sdk.openadsdk.core.video.c.a(this.f1335g, this.i, this.h, gVar);
            e(this.o);
        }
    }

    public void a(c.a aVar) {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            cVar.a(aVar);
        }
    }

    public void a(com.bytedance.sdk.openadsdk.component.reward.b.b bVar) {
        if (this.n.u.get()) {
            return;
        }
        a aVar = this.n;
        if (!aVar.f1315e || t.k(aVar.a)) {
            return;
        }
        if ((!q.c(this.n.a) && com.bytedance.sdk.openadsdk.core.o.d().l(String.valueOf(this.n.o)) == 1 && this.n.J.d()) || com.bytedance.sdk.openadsdk.core.model.o.c(this.n.a) || !bVar.f()) {
            return;
        }
        this.n.X.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
        Message messageObtain = Message.obtain();
        messageObtain.what = JavaUtils.Constants.NATIVE_HEIGHT_DP_300;
        this.n.X.sendMessageDelayed(messageObtain, 5000L);
    }

    public void a(com.bytedance.sdk.openadsdk.core.video.c.b bVar) {
        try {
            this.f1333e = false;
            if (f()) {
                E();
                b(bVar);
            } else if (d()) {
                n();
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("TTAD.RFVideoPlayerMag", "onContinue throw Exception :" + th.getMessage());
        }
    }

    public void a(String str) {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            com.bytedance.sdk.openadsdk.b.c.a(this.h, this.j, str, g(), q(), ac.a(this.h, cVar.f(), this.f1334f.l()), this.p);
            com.bytedance.sdk.component.utils.l.b("TTAD.RFVideoPlayerMag", "event tag:" + this.j + ", TotalPlayDuration=" + s() + ",mBasevideoController.getPct()=" + q());
        }
        D();
    }

    public void a(Map<String, Object> map) {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            cVar.a(map);
        }
    }

    public void a(boolean z) {
        this.a = z;
    }

    public void a(boolean z, com.bytedance.sdk.openadsdk.core.video.c.b bVar, boolean z2) {
        if (!z2 || z || this.f1333e) {
            return;
        }
        if (d()) {
            n();
            Log.i("TTAD.RFVideoPlayerMag", "resumeOrRestartVideo: continue play");
        } else {
            E();
            b(bVar);
            Log.i("TTAD.RFVideoPlayerMag", "resumeOrRestartVideo: recreate video player & exec play");
        }
    }

    public boolean a(long j, boolean z, Map<String, Object> map, com.bytedance.sdk.openadsdk.component.reward.b.b bVar) {
        boolean zA = false;
        if (!v()) {
            return false;
        }
        if (com.bytedance.sdk.openadsdk.core.model.o.c(this.n.a)) {
            return true;
        }
        if (!z || !w()) {
            a(bVar);
        }
        try {
            zA = a(j, this.n.f1314d);
        } catch (Exception e2) {
            Log.e("TTAD.RFVideoPlayerMag", "playVideo: ", e2);
        }
        if (zA && !z) {
            this.n.L.a(map);
        }
        return zA;
    }

    public void b(long j) {
        this.k = j;
    }

    protected void b(com.bytedance.sdk.openadsdk.core.video.c.b bVar) {
        if (!u() || bVar == null) {
            return;
        }
        bVar.a(i(), true);
    }

    public void b(boolean z) {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            cVar.b(z);
        }
    }

    public boolean b() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        return (cVar == null || cVar.l() == null || !this.f1334f.l().f()) ? false : true;
    }

    public com.bykv.vk.openvk.component.video.api.b.a c() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            return cVar instanceof com.bytedance.sdk.openadsdk.component.reward.c ? ((com.bytedance.sdk.openadsdk.component.reward.c) cVar).r() : cVar.m();
        }
        return null;
    }

    public void c(boolean z) {
        this.c = z;
    }

    public void d(final boolean z) {
        l();
        com.bytedance.sdk.openadsdk.core.l.b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.l.1
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.c) {
                    return;
                }
                if (z) {
                    com.bytedance.sdk.openadsdk.component.reward.l.a(com.bytedance.sdk.openadsdk.core.o.a()).a(l.this.h.D());
                } else {
                    com.bytedance.sdk.openadsdk.component.reward.e.a(com.bytedance.sdk.openadsdk.core.o.a()).a(l.this.h.D());
                }
            }
        });
    }

    public boolean d() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        return (cVar == null || cVar.l() == null || !this.f1334f.l().g()) ? false : true;
    }

    public void e(boolean z) {
        this.o = z;
        if (this.f1334f instanceof com.bytedance.sdk.openadsdk.core.video.c.a) {
            if (z) {
                ((com.bytedance.sdk.openadsdk.core.video.c.a) this.f1334f).b(this.h.K().w());
            } else {
                this.h.K().j(1);
                ((com.bytedance.sdk.openadsdk.core.video.c.a) this.f1334f).b(1);
            }
        }
    }

    public boolean e() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        return cVar != null && cVar.p();
    }

    public boolean f() {
        return this.a;
    }

    public long g() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        return cVar != null ? cVar.e() : this.k;
    }

    public long h() {
        return this.l;
    }

    public long i() {
        return this.k;
    }

    public void j() {
        try {
            if (b()) {
                this.f1334f.a();
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.d("RewardFullVideoPlayerManager onPause throw Exception :" + th.getMessage());
        }
    }

    public long k() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            return cVar.f();
        }
        return 0L;
    }

    public void l() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar == null) {
            return;
        }
        cVar.c();
        this.f1334f = null;
    }

    public void m() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            cVar.d();
        }
    }

    public void n() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            cVar.b();
        }
    }

    public void o() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            cVar.a();
        }
    }

    public long p() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            return cVar.h();
        }
        return 0L;
    }

    public int q() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            return cVar.j();
        }
        return 0;
    }

    public int r() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            return cVar.g();
        }
        return 0;
    }

    public long s() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            return cVar.h() + this.f1334f.f();
        }
        return 0L;
    }

    public long t() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            return cVar.h();
        }
        return 0L;
    }

    public boolean u() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar != null) {
            if (cVar.l() != null) {
                com.bykv.vk.openvk.component.video.api.a aVarL = this.f1334f.l();
                if (aVarL.g() || aVarL.h()) {
                    com.bykv.vk.openvk.component.video.api.d.c cVar2 = this.f1334f;
                    if (cVar2 instanceof com.bytedance.sdk.openadsdk.core.video.c.a) {
                        ((com.bytedance.sdk.openadsdk.core.video.c.a) cVar2).G();
                    }
                    return true;
                }
            } else if (f()) {
                a(false);
                com.bykv.vk.openvk.component.video.api.d.c cVar3 = this.f1334f;
                if (cVar3 instanceof com.bytedance.sdk.openadsdk.core.video.c.a) {
                    ((com.bytedance.sdk.openadsdk.core.video.c.a) cVar3).G();
                }
                return true;
            }
        }
        return false;
    }

    public boolean v() {
        return this.f1334f != null;
    }

    public boolean w() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        return cVar != null && cVar.l() == null;
    }

    public boolean x() {
        return this.c;
    }

    public void y() {
        try {
            if (b()) {
                this.f1333e = true;
                o();
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.e("TTAD.RFVideoPlayerMag", "onPause throw Exception :" + e2.getMessage());
        }
    }

    public boolean z() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.f1334f;
        if (cVar == null || cVar.l() == null) {
            return false;
        }
        return this.f1334f.l().a();
    }
}
