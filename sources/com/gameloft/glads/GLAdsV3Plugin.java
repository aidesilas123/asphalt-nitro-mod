package com.gameloft.glads;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class GLAdsV3Plugin implements com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a {
    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public boolean onActivityResult(int i, int i2, Intent intent) {
        return GLAdsV3.onActivityResult(i, i2, intent);
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPluginStart(Activity activity, ViewGroup viewGroup) {
        GLAdsV3.Initialize(activity, viewGroup);
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
