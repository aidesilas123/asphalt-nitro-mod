package com.applovin.exoplayer2.ui;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import com.applovin.exoplayer2.l.ai;

/* JADX INFO: loaded from: classes.dex */
final class e {
    public static String aJ(String str) {
        return "." + str + ",." + str + " *";
    }

    public static String eX(@ColorInt int i) {
        return ai.a("rgba(%d,%d,%d,%.3f)", Integer.valueOf(Color.red(i)), Integer.valueOf(Color.green(i)), Integer.valueOf(Color.blue(i)), Double.valueOf(((double) Color.alpha(i)) / 255.0d));
    }
}
