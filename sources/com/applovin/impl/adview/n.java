package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.applovin.impl.adview.j;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public class n extends FrameLayout {
    private j ahQ;
    private int ahS;

    public n(j.a aVar, Activity activity) {
        super(activity);
        setBackgroundColor(0);
        j jVarA = j.a(aVar, activity);
        this.ahQ = jVarA;
        addView(jVarA);
    }

    public void b(j.a aVar) {
        if (aVar == null || aVar == this.ahQ.getStyle()) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.ahQ.getLayoutParams();
        removeView(this.ahQ);
        j jVarA = j.a(aVar, getContext());
        this.ahQ = jVarA;
        addView(jVarA);
        this.ahQ.setLayoutParams(layoutParams);
        this.ahQ.fZ(this.ahS);
    }

    public void d(int i, int i2, int i3, int i4) {
        this.ahS = i;
        int i5 = i2 + i + i3;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = i5;
            layoutParams.width = i5;
        } else {
            setLayoutParams(new FrameLayout.LayoutParams(i5, i5));
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i, i, i4);
        layoutParams2.setMargins(i3, i3, i3, 0);
        this.ahQ.setLayoutParams(layoutParams2);
        this.ahQ.fZ(i);
    }
}
