package com.bytedance.sdk.component.adexpress.dynamic.animation.a;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: ShineAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public class k extends d {
    public k(View view, com.bytedance.sdk.component.adexpress.dynamic.b.a aVar) {
        super(view, aVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.a.d
    @SuppressLint({"ObjectAnimatorBinding"})
    List<ObjectAnimator> a() {
        int i;
        int i2;
        this.c.setTag(com.bytedance.sdk.component.adexpress.dynamic.a.b, Integer.valueOf(this.b.d()));
        View view = this.c;
        if (view == null || !com.bytedance.sdk.component.adexpress.c.b.a(view.getContext())) {
            i = 0;
            i2 = 1;
        } else {
            i = 1;
            i2 = 0;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.c, "shineValue", i, i2).setDuration((int) (this.b.j() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(a(duration));
        return arrayList;
    }
}
