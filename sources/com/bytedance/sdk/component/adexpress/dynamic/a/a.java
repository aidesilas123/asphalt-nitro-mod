package com.bytedance.sdk.component.adexpress.dynamic.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.b.d;
import com.bytedance.sdk.component.adexpress.b.h;
import com.bytedance.sdk.component.adexpress.b.k;
import com.bytedance.sdk.component.adexpress.b.m;
import com.bytedance.sdk.component.adexpress.b.n;
import com.bytedance.sdk.component.adexpress.c;
import com.bytedance.sdk.component.adexpress.dynamic.c.f;
import com.bytedance.sdk.component.adexpress.dynamic.c.g;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicRootView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.e;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.component.utils.l;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: DynamicRender.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements d<DynamicRootView>, k {
    private DynamicRootView a;
    private g b;
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.b.g f701d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f702e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private m f703f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ScheduledFuture<?> f704g;
    private AtomicBoolean h = new AtomicBoolean(false);

    /* JADX INFO: renamed from: com.bytedance.sdk.component.adexpress.dynamic.a.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DynamicRender.java */
    private class RunnableC0102a implements Runnable {
        private int b;

        public RunnableC0102a(int i) {
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.b == 2) {
                l.b("DynamicRender", "Dynamic parse time out");
                a.this.a.a(a.this.b instanceof f ? 127 : 117);
            }
        }
    }

    public a(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z, g gVar, m mVar, com.bytedance.sdk.component.adexpress.dynamic.d.a aVar) {
        this.c = context;
        DynamicRootView dynamicRootView = new DynamicRootView(context, themeStatusBroadcastReceiver, z, mVar, aVar);
        this.a = dynamicRootView;
        this.b = gVar;
        this.f703f = mVar;
        dynamicRootView.setRenderListener(this);
        this.f703f = mVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(View view) {
        if (view == 0) {
            return;
        }
        if (view instanceof ViewGroup) {
            int i = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i >= viewGroup.getChildCount()) {
                    break;
                }
                a(viewGroup.getChildAt(i));
                i++;
            }
        }
        if (view instanceof e) {
            ((e) view).b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar) {
        List<com.bytedance.sdk.component.adexpress.dynamic.b.h> listK;
        if (hVar == null || (listK = hVar.k()) == null || listK.size() <= 0) {
            return;
        }
        Collections.sort(listK, new Comparator<com.bytedance.sdk.component.adexpress.dynamic.b.h>() { // from class: com.bytedance.sdk.component.adexpress.dynamic.a.a.3
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar2, com.bytedance.sdk.component.adexpress.dynamic.b.h hVar3) {
                com.bytedance.sdk.component.adexpress.dynamic.b.f fVarE = hVar2.j().e();
                com.bytedance.sdk.component.adexpress.dynamic.b.f fVarE2 = hVar3.j().e();
                if (fVarE == null || fVarE2 == null) {
                    return 0;
                }
                return fVarE.ap() >= fVarE2.ap() ? 1 : -1;
            }
        });
        for (com.bytedance.sdk.component.adexpress.dynamic.b.h hVar2 : listK) {
            if (hVar2 != null) {
                a(hVar2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar) {
        float fG;
        float f2;
        List<com.bytedance.sdk.component.adexpress.dynamic.b.h> listK;
        if (hVar == null) {
            return;
        }
        List<com.bytedance.sdk.component.adexpress.dynamic.b.h> listK2 = hVar.k();
        if (listK2 == null || listK2.size() <= 0) {
            fG = 0.0f;
        } else {
            fG = 0.0f;
            for (com.bytedance.sdk.component.adexpress.dynamic.b.h hVar2 : listK2) {
                if (hVar2.g() > hVar.g() - hVar2.i() || (listK = hVar2.k()) == null || listK.size() <= 0) {
                    f2 = 0.0f;
                } else {
                    f2 = 0.0f;
                    for (com.bytedance.sdk.component.adexpress.dynamic.b.h hVar3 : listK) {
                        if (hVar3.j().b().equals("logo-union")) {
                            f2 = hVar3.j().f();
                            fG = (((-f2) + hVar.g()) - hVar2.g()) + hVar2.j().e().av();
                        }
                    }
                }
                b(hVar2);
                if (f2 <= -15.0f) {
                    hVar2.f(hVar2.i() - f2);
                    hVar2.d(hVar2.g() + f2);
                    for (com.bytedance.sdk.component.adexpress.dynamic.b.h hVar4 : hVar2.k()) {
                        hVar4.d(hVar4.g() - f2);
                    }
                }
            }
        }
        com.bytedance.sdk.component.adexpress.dynamic.b.h hVarL = hVar.l();
        if (hVarL == null) {
            return;
        }
        float f3 = hVar.f() - hVarL.f();
        float fG2 = hVar.g() - hVarL.g();
        hVar.c(f3);
        hVar.d(fG2);
        if (fG > 0.0f) {
            hVar.d(hVar.g() - fG);
            hVar.f(hVar.i() + fG);
            for (com.bytedance.sdk.component.adexpress.dynamic.b.h hVar5 : hVar.k()) {
                hVar5.d(hVar5.g() + fG);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar) {
        if (hVar == null) {
            this.a.a(this.b instanceof f ? 123 : 113);
            return;
        }
        this.f703f.e().e(c());
        try {
            this.a.a(hVar, c());
        } catch (Exception unused) {
            this.a.a(this.b instanceof f ? 128 : 118);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f703f.e().c(c());
        if (!com.bytedance.sdk.component.adexpress.a.b.a.a(this.f703f.c())) {
            this.a.a(this.b instanceof f ? 123 : 113);
        } else {
            this.b.a(new com.bytedance.sdk.component.adexpress.dynamic.d.b() { // from class: com.bytedance.sdk.component.adexpress.dynamic.a.a.2
                @Override // com.bytedance.sdk.component.adexpress.dynamic.d.b
                public void a(final com.bytedance.sdk.component.adexpress.dynamic.b.h hVar) {
                    a.this.h();
                    a.this.f703f.e().d(a.this.c());
                    a.this.a(hVar);
                    a.this.b(hVar);
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.a.a.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.c(hVar);
                        }
                    });
                    if (a.this.a == null || hVar == null) {
                        return;
                    }
                    a.this.a.setBgColor(hVar.a());
                    a.this.a.setBgMaterialCenterCalcColor(hVar.b());
                }
            });
            this.b.a(this.f703f);
        }
    }

    private boolean g() {
        DynamicRootView dynamicRootView = this.a;
        return (dynamicRootView == null || dynamicRootView.getChildCount() == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        try {
            ScheduledFuture<?> scheduledFuture = this.f704g;
            if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                this.f704g.cancel(false);
                this.f704g = null;
            }
            l.b("DynamicRender", "WebView Render cancel timeout timer");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.b.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public DynamicRootView e() {
        return d();
    }

    @Override // com.bytedance.sdk.component.adexpress.b.k
    public void a(View view, int i, c cVar) {
        h hVar = this.f702e;
        if (hVar != null) {
            hVar.a(view, i, cVar);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.b.d
    public void a(com.bytedance.sdk.component.adexpress.b.g gVar) {
        this.f701d = gVar;
        int iF = this.f703f.f();
        if (iF < 0) {
            this.a.a(this.b instanceof f ? 127 : 117);
        } else {
            this.f704g = com.bytedance.sdk.component.g.f.f().schedule(new RunnableC0102a(2), iF, TimeUnit.MILLISECONDS);
            com.bytedance.sdk.component.utils.h.b().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f();
                }
            }, this.f703f.i());
        }
    }

    public void a(h hVar) {
        this.f702e = hVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.b.k
    public void a(n nVar) {
        if (this.h.get()) {
            return;
        }
        this.h.set(true);
        if (!nVar.c() || !g()) {
            this.f701d.a(nVar.j());
            return;
        }
        this.a.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f701d.a(e(), nVar);
    }

    public void b() {
        a(e());
    }

    @Override // com.bytedance.sdk.component.adexpress.b.d
    public int c() {
        return this.b instanceof f ? 3 : 2;
    }

    public DynamicRootView d() {
        return this.a;
    }
}
