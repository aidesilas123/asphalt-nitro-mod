package com.bytedance.sdk.openadsdk.component.h;

import android.content.Context;
import android.os.Build;
import android.widget.FrameLayout;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.b.d.b.o;
import com.bytedance.sdk.openadsdk.core.b.a;
import com.bytedance.sdk.openadsdk.core.model.q;

/* JADX INFO: compiled from: TTAppOpenVideoManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements a.InterfaceC0131a {
    private Context a;
    private FrameLayout b;
    private q c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f1313d;

    public c(Context context) {
        this.a = context.getApplicationContext();
    }

    public void a(int i) {
        if (this.f1313d != null) {
            o.a aVar = new o.a();
            aVar.a(g());
            aVar.c(i());
            aVar.b(h());
            aVar.c(i);
            aVar.d(this.f1313d.g());
            this.f1313d.a(aVar);
        }
    }

    public void a(FrameLayout frameLayout, q qVar) {
        this.b = frameLayout;
        this.c = qVar;
        this.f1313d = new b(this.a, frameLayout, qVar);
    }

    public void a(c.a aVar) {
        b bVar = this.f1313d;
        if (bVar != null) {
            bVar.a(aVar);
        }
    }

    public boolean a() {
        String strA;
        if (Build.VERSION.SDK_INT >= 23) {
            strA = CacheDirFactory.getICacheDir(0).b();
        } else {
            try {
                strA = com.bytedance.sdk.openadsdk.component.g.a.a();
            } catch (Throwable unused) {
                strA = "";
            }
        }
        com.bytedance.sdk.openadsdk.core.video.a.b bVarA = q.a(strA, this.c);
        bVarA.b(this.c.Y());
        bVarA.a(this.b.getWidth());
        bVarA.b(this.b.getHeight());
        bVarA.c(this.c.ac());
        bVarA.a(0L);
        bVarA.a(true);
        return this.f1313d.a(bVarA);
    }

    public boolean b() {
        b bVar = this.f1313d;
        return (bVar == null || bVar.l() == null || !this.f1313d.l().f()) ? false : true;
    }

    public boolean c() {
        b bVar = this.f1313d;
        return (bVar == null || bVar.l() == null || !this.f1313d.l().g()) ? false : true;
    }

    public void d() {
        try {
            if (b()) {
                this.f1313d.a();
            }
        } catch (Throwable th) {
            l.d("TTAppOpenVideoManager", "open_ad", "AppOpenVideoManager onPause throw Exception :" + th.getMessage());
        }
    }

    public void e() {
        b bVar = this.f1313d;
        if (bVar != null) {
            bVar.b();
        }
    }

    public void f() {
        b bVar = this.f1313d;
        if (bVar == null) {
            return;
        }
        this.a = null;
        bVar.c();
        this.f1313d = null;
    }

    public long g() {
        b bVar = this.f1313d;
        if (bVar != null) {
            return bVar.e();
        }
        return 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.a.InterfaceC0131a
    public long getVideoProgress() {
        return g();
    }

    public long h() {
        b bVar = this.f1313d;
        if (bVar != null) {
            return bVar.f();
        }
        return 0L;
    }

    public long i() {
        b bVar = this.f1313d;
        if (bVar != null) {
            return bVar.h() + this.f1313d.f();
        }
        return 0L;
    }
}
