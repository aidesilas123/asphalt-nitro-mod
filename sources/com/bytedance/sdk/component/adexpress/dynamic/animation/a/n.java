package com.bytedance.sdk.component.adexpress.dynamic.animation.a;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: TranslateAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public class n extends d {
    public n(View view, com.bytedance.sdk.component.adexpress.dynamic.b.a aVar) {
        super(view, aVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.a.d
    List<ObjectAnimator> a() {
        float f2;
        float fA = com.bytedance.sdk.component.adexpress.c.e.a(com.bytedance.sdk.component.adexpress.d.a(), this.b.f());
        float fA2 = com.bytedance.sdk.component.adexpress.c.e.a(com.bytedance.sdk.component.adexpress.d.a(), this.b.g());
        float f3 = 0.0f;
        if ("reverse".equals(this.b.p())) {
            f3 = fA;
            f2 = fA2;
            fA = 0.0f;
            fA2 = 0.0f;
        } else {
            f2 = 0.0f;
        }
        if (com.bytedance.sdk.component.adexpress.c.b.a(this.c.getContext())) {
            fA = -fA;
            f3 = -f3;
        }
        this.c.setTranslationX(fA);
        this.c.setTranslationY(fA2);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.c, "translationX", fA, f3).setDuration((int) (this.b.j() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.c, "translationY", fA2, f2).setDuration((int) (this.b.j() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(a(duration));
        arrayList.add(a(duration2));
        return arrayList;
    }
}
