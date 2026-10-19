package com.bytedance.sdk.openadsdk.n.a;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.q;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: PAGDisplayMrcTracker.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1849d;

    public c(Integer num, View view, q qVar, int i) {
        super(num, view, qVar, 1000, i);
        this.f1849d = -1;
        b(view);
    }

    private void b(View view) {
        if (view != null) {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width <= 0 || height <= 0) {
                return;
            }
            this.f1849d = width * height >= 242500 ? 1 : 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.n.a.b
    protected void b(int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.n.a.b
    protected boolean c() {
        WeakReference<View> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        View view = this.a.get();
        if (this.f1849d == -1) {
            b(view);
        }
        return f.a(view, this.f1849d == 1, this.b.aT());
    }

    @Override // com.bytedance.sdk.openadsdk.n.a.b
    protected void d() {
        super.d();
    }

    @Override // com.bytedance.sdk.openadsdk.n.a.b
    public int f() {
        return 100;
    }
}
