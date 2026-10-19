package com.bytedance.sdk.openadsdk.core;

import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.b.c;

/* JADX INFO: compiled from: H5AdInteractionManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class i {
    private final com.bytedance.sdk.openadsdk.core.nativeexpress.g a;
    private final com.bytedance.sdk.openadsdk.core.nativeexpress.f b;
    private final View c;

    public void a(int i, com.bytedance.sdk.openadsdk.core.model.m mVar) {
        com.bytedance.sdk.openadsdk.core.nativeexpress.f fVar;
        if (i == -1 || mVar == null) {
            return;
        }
        float f2 = mVar.a;
        float f3 = mVar.b;
        float f4 = mVar.c;
        float f5 = mVar.f1574d;
        SparseArray<c.a> sparseArray = mVar.n;
        if (i != 1) {
            if (i == 2 && (fVar = this.b) != null) {
                fVar.a(mVar);
                this.b.a(this.c, f2, f3, f4, f5, sparseArray, true);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.core.nativeexpress.g gVar = this.a;
        if (gVar != null) {
            gVar.a(mVar);
            this.a.a(this.c, f2, f3, f4, f5, sparseArray, true);
        }
    }
}
