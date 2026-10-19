package com.gameloft.android.ANMP.GloftAGHM;

import android.app.Application;
import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class FrameworkApplication extends Application {
    private static Context a;

    public static Context getContext() {
        StringBuilder sb = new StringBuilder();
        sb.append("getting context = ");
        sb.append(a != null);
        Log.i("context", sb.toString());
        return a;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        a = getApplicationContext();
        Log.i("context", "init context");
    }
}
