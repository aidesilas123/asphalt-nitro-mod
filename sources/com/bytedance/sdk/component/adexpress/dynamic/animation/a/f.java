package com.bytedance.sdk.component.adexpress.dynamic.animation.a;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: MarqueeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public class f extends d {
    public f(View view, com.bytedance.sdk.component.adexpress.dynamic.b.a aVar) {
        super(view, aVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.a.d
    @SuppressLint({"ObjectAnimatorBinding"})
    List<ObjectAnimator> a() {
        this.c.setTag(com.bytedance.sdk.component.adexpress.dynamic.a.c, Integer.valueOf(this.b.c()));
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.c, "marqueeValue", 0.0f, 1.0f).setDuration((int) (this.b.j() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(a(duration));
        return arrayList;
    }
}
