package com.gameloft.android.ANMP.GloftAGHM.PackageUtils.b;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;
import com.gameloft.android.ANMP.GloftAGHM.PackageUtils.AndroidUtils;

/* JADX INFO: compiled from: SignalDispatcher.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    private com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.b a = new com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.b();

    public void a(int i, int i2, Intent intent) {
        this.a.e(i, i2, intent);
    }

    public void b() {
        try {
            AndroidUtils.onPreNativePause();
        } catch (Exception unused) {
        }
        this.a.h();
        AndroidUtils.onPause();
        this.a.f();
        AndroidUtils.onPostNativePause();
    }

    public void c() {
        AndroidUtils.onPreNativeResume();
        this.a.i();
        AndroidUtils.onResume();
        this.a.g();
        AndroidUtils.onPostNativeResume();
    }

    public void d(Activity activity, ViewGroup viewGroup) {
        AndroidUtils.SetActivityRef(activity);
        this.a.a(activity, viewGroup);
    }
}
