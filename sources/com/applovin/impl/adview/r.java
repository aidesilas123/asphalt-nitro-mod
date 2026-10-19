package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.content.Context;
import com.applovin.impl.adview.j;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public final class r extends j {
    public r(Context context) {
        super(context);
    }

    @Override // com.applovin.impl.adview.j
    public void fZ(int i) {
        setViewScale(i / 30.0f);
    }

    @Override // com.applovin.impl.adview.j
    public j.a getStyle() {
        return j.a.INVISIBLE;
    }
}
