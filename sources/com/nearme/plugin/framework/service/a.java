package com.nearme.plugin.framework.service;

import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.IBinder;

/* JADX INFO: compiled from: IPluginService.java */
/* JADX INFO: loaded from: classes4.dex */
public interface a {
    void a();

    boolean b(Intent intent);

    void c();

    IBinder d(Intent intent);

    void e(Intent intent, int i);

    int f(Intent intent, int i, int i2);

    void g(String str, String str2, Service service, ClassLoader classLoader, PackageInfo packageInfo, boolean z, String str3);
}
