package com.bytedance.sdk.openadsdk.n.a;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.q;

/* JADX INFO: compiled from: PAGVideoMrcTracker.java */
/* JADX INFO: loaded from: classes2.dex */
public class h extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1850d;

    public h(Integer num, View view, q qVar, int i) {
        super(num, view, qVar, 2000, i);
        this.f1850d = 0;
    }

    @Override // com.bytedance.sdk.openadsdk.n.a.b
    public void a() {
        if (this.f1850d != 1) {
            return;
        }
        super.a();
    }

    @Override // com.bytedance.sdk.openadsdk.n.a.b
    protected void b(int i) {
        if (i()) {
            return;
        }
        if (i == 6 || i == 5) {
            this.f1850d = 0;
            h();
        }
        if (i == 3 || i == 2) {
            this.f1850d = 2;
            h();
        }
        if (this.f1850d == 1 || i != 0) {
            return;
        }
        this.f1850d = 1;
        a();
    }

    @Override // com.bytedance.sdk.openadsdk.n.a.b
    protected boolean c() {
        return f.a(this.a.get(), this.b.aT()) && this.f1850d == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.n.a.b
    protected void d() {
        super.d();
    }

    @Override // com.bytedance.sdk.openadsdk.n.a.b
    public int f() {
        return 200;
    }

    @Override // com.bytedance.sdk.openadsdk.n.a.b
    public boolean l() {
        int i = this.f1850d;
        boolean z = i == 2 || i == 0;
        if (z) {
            this.c.set(false);
        }
        return !z || super.l();
    }
}
