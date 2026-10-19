package com.bytedance.sdk.openadsdk.component.view;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bytedance.sdk.component.adexpress.b.d;
import com.bytedance.sdk.component.adexpress.b.m;
import com.bytedance.sdk.component.adexpress.b.n;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ad;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PAGAppOpenAdExpressView extends NativeExpressView {
    boolean a;
    private FrameLayout b;
    private com.bytedance.sdk.openadsdk.component.f.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c.a f1441d;

    public PAGAppOpenAdExpressView(@NonNull Context context, q qVar, AdSlot adSlot, String str) {
        super(context, qVar, adSlot, str, true);
        this.a = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(n nVar) {
        if (nVar == null) {
            return;
        }
        if (nVar.a() != null) {
            if (this.a) {
                nVar.a().setTag(com.bytedance.sdk.component.adexpress.dynamic.a.f699f, 1);
                ((FrameLayout) nVar.a()).removeAllViews();
                FrameLayout frameLayout = (FrameLayout) nVar.a();
                this.b = frameLayout;
                ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).gravity = 17;
                this.a = false;
                return;
            }
            return;
        }
        double dF = nVar.f();
        double dG = nVar.g();
        double dH = nVar.h();
        double dI = nVar.i();
        int iB = ad.b(this.f1628g, (float) dF);
        int iB2 = ad.b(this.f1628g, (float) dG);
        int iB3 = ad.b(this.f1628g, (float) dH);
        int iB4 = ad.b(this.f1628g, (float) dI);
        l.b("ExpressView", "vW x vH =" + dH + "x" + dI);
        if (dI == 0.0d || dH == 0.0d) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.b.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new FrameLayout.LayoutParams(iB3, iB4);
        }
        layoutParams.width = iB3;
        layoutParams.height = iB4;
        layoutParams.topMargin = iB2;
        layoutParams.leftMargin = iB;
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(iB);
            layoutParams.setMarginEnd(layoutParams.rightMargin);
        }
        this.b.setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void a() {
        com.bytedance.sdk.openadsdk.component.f.a aVar = this.c;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void a(int i) {
        super.a(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.b.h
    public void a(View view, int i, com.bytedance.sdk.component.adexpress.c cVar) {
        if (i == -1 || cVar == null || i != 3) {
            super.a(view, i, cVar);
        } else {
            e();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.b.o
    public void a(d<? extends View> dVar, n nVar) {
        if (nVar != null && nVar.c()) {
            b(nVar);
        }
        super.a(dVar, nVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    protected void a(m.a aVar) {
        aVar.e(com.bytedance.sdk.openadsdk.component.g.a.b());
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    protected void a(JSONObject jSONObject) {
        q qVar = this.j;
        com.bytedance.sdk.openadsdk.component.g.a.a(jSONObject, qVar == null ? 0 : qVar.aZ());
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void b() {
        super.b();
    }

    public void b(final n nVar) {
        if (nVar == null) {
            return;
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.view.PAGAppOpenAdExpressView.1
            @Override // java.lang.Runnable
            public void run() {
                PAGAppOpenAdExpressView.this.c(nVar);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.l
    public void e() {
        com.bytedance.sdk.openadsdk.component.f.a aVar = this.c;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    protected void g() {
        this.m = true;
        FrameLayout frameLayout = new FrameLayout(this.f1628g);
        this.b = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        super.g();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public int getDynamicShowType() {
        if (this.w == null) {
            return 1;
        }
        return super.getDynamicShowType();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    protected int getRenderTimeout() {
        return com.bytedance.sdk.openadsdk.component.g.a.a(this.j, o.d().g(String.valueOf(this.j.aZ())));
    }

    public FrameLayout getVideoFrameLayout() {
        return this.b;
    }

    public void setExpressVideoListenerProxy(c.a aVar) {
        this.f1441d = aVar;
    }

    public void setTopListener(com.bytedance.sdk.openadsdk.component.f.a aVar) {
        this.c = aVar;
    }
}
