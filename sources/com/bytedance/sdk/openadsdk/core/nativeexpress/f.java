package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.core.model.i;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.utils.ad;
import org.json.JSONObject;

/* JADX INFO: compiled from: ExpressClickCreativeListener.java */
/* JADX INFO: loaded from: classes2.dex */
public class f extends com.bytedance.sdk.openadsdk.core.b.a {
    public f(@NonNull Context context, @NonNull q qVar, @NonNull String str, int i) {
        super(context, qVar, str, i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.b
    protected com.bytedance.sdk.openadsdk.core.model.i a(float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, long j, long j2, View view, View view2, String str, float f6, int i, float f7, int i2, JSONObject jSONObject) {
        float fB;
        float fB2;
        float fB3;
        float fB4;
        int i3;
        int i4;
        long j3;
        long j4;
        char c;
        char c2;
        int iB;
        int iB2;
        int[] iArrA = ad.a(view);
        int i5 = 0;
        if (iArrA == null || iArrA.length != 2) {
            fB = f2;
            fB2 = f3;
            fB3 = f4;
            fB4 = f5;
            i3 = 0;
            i4 = 0;
        } else {
            i3 = iArrA[0];
            i4 = iArrA[1];
            if (this.s == 0) {
                fB4 = (ad.b(this.c, f5) + i4) - 0.5f;
                fB3 = (ad.b(this.c, f4) + i3) - 0.5f;
                fB = (ad.b(this.c, f2) + i3) - 0.5f;
                fB2 = (ad.b(this.c, f3) + i4) - 0.5f;
            } else {
                fB = f2;
                fB2 = f3;
                fB3 = f4;
                fB4 = f5;
            }
        }
        int[] iArrA2 = new int[2];
        int[] iArrC = new int[2];
        com.bytedance.sdk.openadsdk.core.model.m mVar = this.f1456d;
        if (mVar != null) {
            j3 = mVar.f1575e;
            j4 = mVar.f1576f;
            if (this.s == 0) {
                iArrA2[0] = ad.b(this.c, mVar.f1577g) + i3;
                iArrA2[1] = ad.b(this.c, this.f1456d.h) + i4;
                iB = ad.b(this.c, this.f1456d.i);
                iB2 = ad.b(this.c, this.f1456d.j);
                c = 0;
                c2 = 1;
            } else {
                c = 0;
                iArrA2[0] = mVar.f1577g;
                c2 = 1;
                iArrA2[1] = mVar.h;
                iB = mVar.i;
                iB2 = mVar.j;
            }
            iArrC[c] = iB;
            iArrC[c2] = iB2;
            if (iB == 0 && iB2 == 0 && view2 != null) {
                iArrA2 = ad.a(view2);
                iArrC = ad.c(view2);
            }
            i5 = 0;
        } else {
            j3 = j;
            j4 = j2;
        }
        this.s = i5;
        return new i.a().f(fB).e(fB2).d(fB3).c(fB4).b(j3).a(j4).b(iArrA).a(iArrA2).c(ad.c(view)).d(iArrC).d(this.z).e(this.A).f(this.B).b(com.bytedance.sdk.openadsdk.core.h.b().a() ? 1 : 2).a(sparseArray).a(str).a(f6).c(i).b(f7).a(i2).a(jSONObject).a();
    }

    public void a(com.bytedance.sdk.openadsdk.core.model.m mVar) {
        this.f1456d = mVar;
    }
}
