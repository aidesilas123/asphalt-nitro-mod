package com.bytedance.sdk.openadsdk.core.c.a;

import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.component.adexpress.b.k;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.core.model.m;
import com.bytedance.sdk.openadsdk.utils.ad;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: DynamicClickListener.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends c implements com.bytedance.sdk.component.adexpress.dynamic.d.a {
    protected WeakReference<View> a;
    protected WeakReference<View> b;
    private k c;

    private void a(View view, int i, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray) {
        if (this.c != null) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            WeakReference<View> weakReference = this.b;
            if (weakReference != null) {
                int[] iArrA = ad.a(weakReference.get());
                if (iArrA != null) {
                    iArr = iArrA;
                }
                int[] iArrC = ad.c(this.b.get());
                if (iArrC != null) {
                    iArr2 = iArrC;
                }
            }
            String strValueOf = "";
            try {
                int i2 = com.bytedance.sdk.component.adexpress.dynamic.a.u;
                if (view.getTag(i2) != null) {
                    strValueOf = String.valueOf(view.getTag(i2));
                }
            } catch (Exception unused) {
            }
            this.c.a(view, i, new m.a().d(f2).c(f3).b(f4).a(f5).b(this.x).a(this.y).c(iArr[0]).d(iArr[1]).e(iArr2[0]).f(iArr2[1]).a(sparseArray).a(this.D).a(strValueOf).a());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.d.a
    public void a(View view) {
        this.a = new WeakReference<>(view);
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.c
    public void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, boolean z) {
        a(view, ((Integer) view.getTag()).intValue(), f2, f3, f4, f5, sparseArray);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.d.a
    public void a(k kVar) {
        this.c = kVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.d.a
    public void b(View view) {
        this.b = new WeakReference<>(view);
    }
}
