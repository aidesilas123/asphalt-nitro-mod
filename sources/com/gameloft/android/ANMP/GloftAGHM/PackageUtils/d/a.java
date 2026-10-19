package com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;

/* JADX INFO: compiled from: IPluginEventReceiver.java */
/* JADX INFO: loaded from: classes2.dex */
public interface a {
    boolean onActivityResult(int i, int i2, Intent intent);

    void onPluginStart(Activity activity, ViewGroup viewGroup);

    void onPostNativePause();

    void onPostNativeResume();

    void onPreNativePause();

    void onPreNativeResume();
}
