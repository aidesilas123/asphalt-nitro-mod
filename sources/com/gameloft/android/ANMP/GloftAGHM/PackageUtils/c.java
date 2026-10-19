package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.app.Activity;
import android.widget.ImageView;

/* JADX INFO: compiled from: LogoView.java */
/* JADX INFO: loaded from: classes2.dex */
class c extends ImageView {
    public c(Activity activity, int i, int i2, int i3) {
        super(activity);
        setImageResource(i);
        setScaleType(ImageView.ScaleType.CENTER_CROP);
        a(i2, i3);
    }

    public void a(int i, int i2) {
        setMinimumWidth(i);
        setMinimumHeight(i2);
        setMaxWidth(i);
        setMaxHeight(i2);
    }
}
