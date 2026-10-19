package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;
import com.gameloft.android.ANMP.GloftAGHM.AppDetection;

/* JADX INFO: loaded from: classes2.dex */
public class AppDetectionPlugin implements com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a {
    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPluginStart(Activity activity, ViewGroup viewGroup) {
        AppDetection.init(activity);
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativeResume() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativeResume() {
    }
}
