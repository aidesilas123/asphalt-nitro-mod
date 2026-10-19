package com.nearme.game.sdk.common.z;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Instrumentation;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import com.nearme.game.sdk.c.a.a;
import com.nearme.plugin.framework.LogUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: ProxyInstrumentationImp.java */
/* JADX INFO: loaded from: classes4.dex */
public final class y extends Instrumentation {
    private static boolean b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f7684e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f7685f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7686g;
    private Context h;
    private Instrumentation i;
    private ComponentName j;
    public static List<Activity> a = new ArrayList();
    private static boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f7683d = false;

    public y(Context context, Instrumentation instrumentation, a aVar) {
        this.h = context;
        this.i = instrumentation;
        try {
            String path = Environment.getExternalStorageDirectory().getPath();
            StringBuilder sb = new StringBuilder();
            sb.append(path);
            String str = File.separator;
            sb.append(str);
            sb.append("super_key_debug");
            if (new File(sb.toString()).exists()) {
                c = true;
            }
            if (new File(path + str + "temp_key_file").exists()) {
                f7683d = true;
            }
        } catch (Exception unused) {
        }
        this.f7684e = aVar;
        Context applicationContext = context.getApplicationContext();
        this.f7685f = applicationContext;
        a(applicationContext);
    }

    private void a(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ComponentName componentName;
        this.f7686g = null;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || (runningTasks = activityManager.getRunningTasks(1)) == null || runningTasks.size() <= 0 || (runningTaskInfo = runningTasks.get(0)) == null || (componentName = runningTaskInfo.baseActivity) == null) {
            return;
        }
        this.f7686g = componentName.getClassName();
    }

    private void b(Context context, Intent intent) {
        Bundle extras = null;
        if (this.j == null) {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            this.j = launchIntentForPackage != null ? launchIntentForPackage.getComponent() : null;
            LogUtils.log("ProxyInstrumentationImpl", "obtainStartInfo cnMain = " + this.j);
        }
        LogUtils.log("ProxyInstrumentationImpl", "obtainStartInfo intent.getComponent() = " + intent.getComponent());
        ComponentName componentName = this.j;
        if (componentName == null || !componentName.equals(intent.getComponent())) {
            return;
        }
        try {
            extras = intent.getExtras();
            b = intent.getBooleanExtra("key_launch_from_ogc", false);
            LogUtils.log("ProxyInstrumentationImpl", "obtainStartInfo startFromOgc = " + b);
        } catch (Exception e2) {
            LogUtils.log("ProxyInstrumentationImpl", "obtainStartInfo exception = " + e2.getMessage());
        }
        if (extras != null) {
            if (intent.getExtras() == null || intent.getExtras().size() == 0) {
                intent.putExtras(extras);
            }
        }
    }

    private boolean c(Activity activity) {
        return TextUtils.equals(activity.getComponentName().getClassName(), this.f7686g);
    }

    private static boolean d(Activity activity, Context context) {
        return TextUtils.equals(activity.getPackageName(), context.getPackageName());
    }

    private static boolean e(Activity activity, Context context) {
        return d(activity, context);
    }

    public static void finishGameActivities() {
        try {
            for (Activity activity : a) {
                if (!activity.isFinishing()) {
                    a.remove(activity);
                    Log.d("GameCenterSDK", "ProxyInstrumentationImp::finishGameActivities, activity = " + activity.getLocalClassName());
                    activity.finish();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            System.exit(0);
        }
    }

    public static boolean startFromOgc() {
        return b;
    }

    @Override // android.app.Instrumentation
    public final void callActivityOnCreate(Activity activity, Bundle bundle) {
        super.callActivityOnCreate(activity, bundle);
        if (d(activity, this.f7685f)) {
            a.add(activity);
            a(this.f7685f);
            if (c(activity)) {
                this.f7684e.f(activity);
                if (c) {
                    Log.d("GameCenterSDK", "ProxyInstrumentationImp::callActivityOnCreate, activity = " + activity.getLocalClassName());
                }
            }
        }
    }

    @Override // android.app.Instrumentation
    public final void callActivityOnDestroy(Activity activity) {
        super.callActivityOnDestroy(activity);
        a.remove(activity);
        if (d(activity, this.f7685f)) {
            a(this.f7685f);
            if (c(activity)) {
                this.f7684e.d(activity);
                if (c) {
                    Log.d("GameCenterSDK", "ProxyInstrumentationImp::callActivityOnDestroy, activity = " + activity.getLocalClassName());
                }
            }
        }
    }

    @Override // android.app.Instrumentation
    public final void callActivityOnNewIntent(Activity activity, Intent intent) {
        LogUtils.log("ProxyInstrumentationImpl", "callActivityOnNewIntent intent = " + intent);
        b(activity, intent);
        this.i.callActivityOnNewIntent(activity, intent);
    }

    @Override // android.app.Instrumentation
    public final void callActivityOnPause(Activity activity) {
        super.callActivityOnPause(activity);
        if (f7683d) {
            Log.d("GameCenterSDK", "ProxyInstrumentationImp::callActivityOnPause, activity pkg= " + activity.getPackageName() + ", application pkg = " + this.f7685f.getPackageName());
        }
        if (e(activity, this.f7685f)) {
            this.f7684e.e(activity);
            if (c) {
                Log.d("GameCenterSDK", "ProxyInstrumentationImp::callActivityOnPause, activity = " + activity.getLocalClassName());
            }
        }
    }

    @Override // android.app.Instrumentation
    public final void callActivityOnResume(Activity activity) {
        super.callActivityOnResume(activity);
        if (f7683d) {
            Log.d("GameCenterSDK", "ProxyInstrumentationImp::callActivityOnResume, activity pkg= " + activity.getPackageName() + ", application pkg = " + this.f7685f.getPackageName());
        }
        if (e(activity, this.f7685f)) {
            this.f7684e.c(activity);
            if (c) {
                Log.d("GameCenterSDK", "ProxyInstrumentationImp::callActivityOnResume, activity = " + activity.getLocalClassName());
            }
        }
    }

    @Override // android.app.Instrumentation
    public final void callActivityOnStart(Activity activity) {
        super.callActivityOnStart(activity);
        if (e(activity, this.f7685f)) {
            this.f7684e.a(activity);
            if (c) {
                Log.d("GameCenterSDK", "ProxyInstrumentationImp::callActivityOnStart, activity = " + activity.getLocalClassName());
            }
        }
    }

    @Override // android.app.Instrumentation
    public final void callActivityOnStop(Activity activity) {
        super.callActivityOnStop(activity);
        if (e(activity, this.f7685f)) {
            this.f7684e.b(activity);
            if (c) {
                Log.d("GameCenterSDK", "ProxyInstrumentationImp::callActivityOnStop, activity = " + activity.getLocalClassName());
            }
        }
    }

    @Override // android.app.Instrumentation
    public final Activity newActivity(ClassLoader classLoader, String str, Intent intent) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        LogUtils.log("ProxyInstrumentationImpl", "newActivity intent = " + intent);
        b(this.h, intent);
        return this.i.newActivity(classLoader, str, intent);
    }
}
