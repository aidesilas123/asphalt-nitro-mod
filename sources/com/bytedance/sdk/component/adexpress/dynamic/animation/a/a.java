package com.bytedance.sdk.component.adexpress.dynamic.animation.a;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: AlphaAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends d {
    public a(View view, com.bytedance.sdk.component.adexpress.dynamic.b.a aVar) {
        super(view, aVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.a.d
    List<ObjectAnimator> a() {
        float fR = this.b.r() / 100.0f;
        float fS = this.b.s() / 100.0f;
        if ("reverse".equals(this.b.p()) && this.b.n() <= 0.0d) {
            fS = fR;
            fR = fS;
        }
        this.c.setAlpha(fR);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.c, "alpha", fR, fS).setDuration((int) (this.b.j() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(a(duration));
        return arrayList;
    }
}
