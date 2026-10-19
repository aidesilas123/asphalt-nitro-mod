package com.nearme.plugin.framework.service;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import com.nearme.plugin.framework.LogUtils;
import com.nearme.plugin.framework.PathUtils;
import com.nearme.plugin.framework.PluginStatic;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PluginProxyService extends Service {
    private a a;
    private int b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7697d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7698e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7699f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f7700g;

    private boolean b(Intent intent) throws IOException {
        String pluginInstallPath;
        if (intent == null) {
            LogUtils.log("PluginProxyService", "startPlugin::intent is empty");
            return false;
        }
        LogUtils.logInit(intent.getBooleanExtra("LOG_ENABLE", true), intent.getStringExtra("LOG_TAG"));
        LogUtils.log(LogUtils.a, "PluginProxyService.startPlugin intent = " + intent);
        String stringExtra = intent.getStringExtra("PLUGIN_NAME");
        String stringExtra2 = intent.getStringExtra("LAUNCH_COMPONENT");
        String exceptionInfo = null;
        try {
            pluginInstallPath = PathUtils.getPluginInstallPath(this, stringExtra);
        } catch (IOException e2) {
            e2.printStackTrace();
            pluginInstallPath = null;
        }
        if (this.a != null) {
            return this.c.equals(stringExtra) && this.f7698e.equals(stringExtra2);
        }
        this.f7697d = pluginInstallPath;
        this.c = stringExtra;
        this.f7698e = stringExtra2;
        this.b = intent.getIntExtra("USE_HOST_RESOURCES", 0);
        this.f7699f = intent.getStringExtra("PARAM_COMM_ACT_NAME");
        ClassLoader classLoader = PluginStatic.a;
        if (classLoader != null) {
            intent.setExtrasClassLoader(classLoader);
        }
        if (TextUtils.isEmpty(this.c) || TextUtils.isEmpty(this.f7697d)) {
            exceptionInfo = "Param missing!";
        } else if (new File(this.f7697d).exists()) {
            try {
                LogUtils.log("PluginProxyService", "initPlugin");
                PackageInfo orCreatePkgInfo = PluginStatic.getOrCreatePkgInfo(this, this.f7697d);
                ClassLoader orCreateClassLoaderByPath = PluginStatic.getOrCreateClassLoaderByPath(this, orCreatePkgInfo, this.f7697d);
                a aVar = (a) orCreateClassLoaderByPath.loadClass(this.f7698e).newInstance();
                this.a = aVar;
                aVar.g(this.c, this.f7697d, this, orCreateClassLoaderByPath, orCreatePkgInfo, this.b == 1, this.f7699f);
                this.a.a();
            } catch (Exception e3) {
                exceptionInfo = LogUtils.getExceptionInfo(e3);
            }
        } else {
            exceptionInfo = "plugin file not exsist!";
        }
        if (exceptionInfo != null) {
            LogUtils.log(LogUtils.a, "PluginProxyService.startPlugin errInfo = " + exceptionInfo);
            LogUtils.log(LogUtils.a, "attach info : pluginName = " + stringExtra + ", launchService = " + stringExtra2 + ", pluginApkFilePath = " + pluginInstallPath);
        } else {
            LogUtils.log(LogUtils.a, "PluginProxyService start successfully!");
        }
        return true;
    }

    protected abstract String a();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        a aVar;
        if (this.f7700g) {
            return this.a.d(intent);
        }
        if (!b(intent) || (aVar = this.a) == null) {
            return null;
        }
        IBinder iBinderD = aVar.d(intent);
        this.f7700g = true;
        return iBinderD;
    }

    @Override // android.app.Service
    public void onDestroy() {
        a aVar = this.a;
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        a aVar;
        if (!b(intent) || (aVar = this.a) == null) {
            return;
        }
        aVar.e(intent, i);
        this.f7700g = true;
    }

    @Override // android.app.Service
    @SuppressLint({"NewApi"})
    public int onStartCommand(Intent intent, int i, int i2) {
        a aVar;
        int iOnStartCommand = super.onStartCommand(intent, i, i2);
        LogUtils.log("PluginProxyService", "onStartCommand::startPluginSuccess = " + this.f7700g);
        if (this.f7700g) {
            return this.a.f(intent, i, i2);
        }
        if (!b(intent) || (aVar = this.a) == null) {
            return iOnStartCommand;
        }
        int iF = aVar.f(intent, i, i2);
        this.f7700g = true;
        return iF;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        a aVar = this.a;
        if (aVar != null) {
            return aVar.b(intent);
        }
        return false;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        Bundle extras;
        boolean booleanExtra = intent.getBooleanExtra("PARAM_START_PLUGIN_INTERNAL_ACTIVITIE", false);
        LogUtils.log("PluginProxyService", "startActivity::internal = " + booleanExtra);
        if (booleanExtra && (extras = intent.getExtras()) != null) {
            LogUtils.log("PluginProxyService", "getPluginName() = " + a());
            extras.putString("PLUGIN_NAME", a());
            intent.putExtras(extras);
        }
        super.startActivity(intent);
    }
}
