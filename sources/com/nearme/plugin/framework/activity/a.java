package com.nearme.plugin.framework.activity;

import android.app.Activity;
import android.content.pm.PackageInfo;
import android.view.LayoutInflater;

/* JADX INFO: compiled from: IPluginActivity.java */
/* JADX INFO: loaded from: classes4.dex */
public interface a {
    void a();

    void b(String str, Activity activity, ClassLoader classLoader, PackageInfo packageInfo, boolean z);

    LayoutInflater c();
}
