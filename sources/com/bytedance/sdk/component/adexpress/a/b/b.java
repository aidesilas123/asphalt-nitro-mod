package com.bytedance.sdk.component.adexpress.a.b;

import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import java.io.File;

/* JADX INFO: compiled from: TemplateDirUtil.java */
/* JADX INFO: loaded from: classes.dex */
public class b {
    public static Interpolator a(float f2, float f3, float f4, float f5) {
        return new AccelerateDecelerateInterpolator();
    }

    public static File a() {
        return com.bytedance.sdk.component.adexpress.a.a.a.a().c().b().getCacheDir();
    }
}
