package com.tapjoy;

import android.content.Context;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes4.dex */
public class e0 {
    public final Configuration a;
    public final DisplayMetrics b;

    public e0(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.b = displayMetrics;
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        this.a = context.getResources().getConfiguration();
    }

    public int a() {
        return this.b.densityDpi;
    }

    public float b() {
        return this.b.density;
    }

    public int c() {
        return this.a.screenLayout & 15;
    }
}
