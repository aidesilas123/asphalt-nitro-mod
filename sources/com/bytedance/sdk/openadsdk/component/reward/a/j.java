package com.bytedance.sdk.openadsdk.component.reward.a;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.component.reward.top.TopProxyLayout;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: compiled from: RewardFullTopProxyManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {
    TopProxyLayout a;
    com.bytedance.sdk.component.adexpress.dynamic.d b;
    private final Activity c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f1326d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1327e = false;

    public j(a aVar) {
        this.c = aVar.V;
        this.f1326d = aVar;
    }

    public void a() {
        if (this.f1327e) {
            return;
        }
        this.f1327e = true;
        TopProxyLayout topProxyLayout = (TopProxyLayout) this.c.findViewById(com.bytedance.sdk.openadsdk.utils.i.bj);
        this.a = topProxyLayout;
        if (topProxyLayout != null) {
            a aVar = this.f1326d;
            topProxyLayout.a(aVar.f1316f, aVar.a);
            if (this.f1326d.a.at()) {
                a(false);
            } else {
                a(this.f1326d.a.an());
            }
        }
    }

    public void a(int i) {
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout == null || !(topProxyLayout.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        ((ViewGroup.MarginLayoutParams) this.a.getLayoutParams()).topMargin = i - ad.b(this.c, 20.0f);
    }

    public void a(com.bytedance.sdk.component.adexpress.dynamic.d dVar) {
        this.b = dVar;
    }

    public void a(com.bytedance.sdk.openadsdk.component.reward.top.b bVar) {
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout != null) {
            topProxyLayout.setListener(bVar);
        }
    }

    public void a(CharSequence charSequence) {
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout != null) {
            topProxyLayout.setSkipText(charSequence);
        }
    }

    public void a(String str, CharSequence charSequence) {
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout != null) {
            topProxyLayout.a(String.valueOf(str), charSequence);
        }
    }

    public void a(boolean z) {
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout != null) {
            topProxyLayout.setShowDislike(z);
        }
    }

    public void b() {
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout != null) {
            topProxyLayout.d();
        }
    }

    public void b(int i) {
        View viewFindViewById;
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout == null || topProxyLayout.getITopLayout() == null || i == 0 || (viewFindViewById = this.a.getITopLayout().findViewById(520093713)) == null || !(viewFindViewById.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || viewFindViewById.getWidth() <= 0 || viewFindViewById.getVisibility() != 0) {
            return;
        }
        int[] iArr = new int[2];
        viewFindViewById.getLocationOnScreen(iArr);
        int width = i - (iArr[0] + viewFindViewById.getWidth());
        if (width < ad.b(this.c, 16.0f)) {
            ((ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams()).rightMargin += ad.b(this.c, 16.0f) - width;
            viewFindViewById.requestLayout();
        }
    }

    public void b(boolean z) {
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout != null) {
            topProxyLayout.setSoundMute(z);
        }
        com.bytedance.sdk.component.adexpress.dynamic.d dVar = this.b;
        if (dVar != null) {
            dVar.setSoundMute(z);
        }
    }

    public void c() {
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout != null) {
            topProxyLayout.e();
        }
    }

    public void c(boolean z) {
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout != null) {
            topProxyLayout.setShowSound(z);
        }
    }

    public void d() {
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout != null) {
            topProxyLayout.a();
        }
    }

    public void d(boolean z) {
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout != null) {
            topProxyLayout.setShowSkip(z);
        }
    }

    public void e() {
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout != null) {
            topProxyLayout.b();
        }
    }

    public void e(boolean z) {
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout != null) {
            topProxyLayout.setSkipEnable(z);
        }
    }

    public void f() {
        TopProxyLayout topProxyLayout = this.a;
        if (topProxyLayout != null) {
            topProxyLayout.c();
        }
    }
}
