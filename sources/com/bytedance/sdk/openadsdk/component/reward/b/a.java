package com.bytedance.sdk.openadsdk.component.reward.b;

import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.x;
import com.bytedance.sdk.openadsdk.component.reward.a.j;
import com.bytedance.sdk.openadsdk.component.reward.a.l;
import com.bytedance.sdk.openadsdk.component.reward.a.m;
import com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView;
import com.bytedance.sdk.openadsdk.core.model.o;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;

/* JADX INFO: compiled from: BaseRewardFullAdType.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    protected com.bytedance.sdk.openadsdk.component.reward.a.a a;
    protected q b;
    protected int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f1345d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final l f1346e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final com.bytedance.sdk.openadsdk.component.reward.view.e f1347f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected final m f1348g;
    protected final j h;
    protected com.bytedance.sdk.openadsdk.core.video.c.b i;
    protected x j;

    public a(com.bytedance.sdk.openadsdk.component.reward.a.a aVar) {
        this.a = aVar;
        this.b = aVar.a;
        this.c = aVar.l;
        this.f1345d = aVar.m;
        this.f1346e = aVar.G;
        this.f1347f = aVar.T;
        this.f1348g = aVar.Q;
        this.h = aVar.R;
    }

    public void a(com.bytedance.sdk.openadsdk.core.video.c.b bVar, x xVar) {
        this.i = bVar;
        this.j = xVar;
    }

    public void a(boolean z) {
        if (this.a.u.get()) {
            return;
        }
        q qVar = this.b;
        if (qVar != null && qVar.bd()) {
            this.h.c(false);
            this.h.a(true);
            this.a.T.c(8);
            this.a.T.d(8);
            return;
        }
        if (z) {
            this.h.a(this.a.a.an());
            if (t.k(this.a.a) || a()) {
                this.h.c(true);
            }
            if (a() || ((this instanceof g) && this.a.V.p())) {
                this.h.d(true);
            } else {
                this.h.f();
                this.a.T.f(0);
            }
        } else {
            this.h.c(false);
            this.h.a(false);
            this.h.d(false);
            this.a.T.f(8);
        }
        if (!z) {
            this.a.T.c(4);
            this.a.T.d(8);
        } else if (this.a.k == FullRewardExpressView.a && a()) {
            this.a.T.c(0);
            this.a.T.d(0);
        } else {
            this.a.T.c(8);
            this.a.T.d(8);
        }
    }

    public boolean a() {
        return this.a.a.at() || this.a.a.ad() == 15 || this.a.a.ad() == 5 || this.a.a.ad() == 50;
    }

    public boolean b() {
        if (!o.b(this.a.a) || !this.a.D.get()) {
            return (this.a.u.get() || this.a.v.get() || t.k(this.a.a)) ? false : true;
        }
        FrameLayout frameLayoutF = this.a.T.f();
        frameLayoutF.setVisibility(4);
        frameLayoutF.setVisibility(0);
        return false;
    }

    protected void c() {
        if (t.b(this.a.a) && DeviceUtils.f() == 0) {
            this.a.f1314d = true;
        }
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.a;
        aVar.R.b(aVar.f1314d);
    }
}
