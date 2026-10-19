package com.nearme.game.sdk.common.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AppUtil {
    private static Iterator<ActivityManager.RunningAppProcessInfo> a(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null || runningAppProcesses.isEmpty()) {
            return null;
        }
        return runningAppProcesses.iterator();
    }

    public static void exitGameProcess(Context context) {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<ActivityManager.RunningAppProcessInfo> itA = a(context);
            if (itA != null) {
                String packageName = context.getPackageName();
                while (itA.hasNext()) {
                    ActivityManager.RunningAppProcessInfo next = itA.next();
                    if (next.processName.equals(packageName)) {
                        arrayList.add(Integer.valueOf(next.pid));
                    }
                }
            }
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                if (!activity.isFinishing()) {
                    activity.finish();
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Integer) it.next()).intValue();
                if (iIntValue != 0) {
                    Process.killProcess(iIntValue);
                }
            }
            System.exit(0);
        } catch (Exception unused) {
        }
    }

    public static void exitSdkPluginProcess(Context context) {
        try {
            int sdkPluginProcessId = getSdkPluginProcessId(context);
            if (sdkPluginProcessId != 0) {
                Process.killProcess(sdkPluginProcessId);
            }
        } catch (Exception unused) {
        }
    }

    public static String getCurrentProcessName(Context context) {
        Iterator<ActivityManager.RunningAppProcessInfo> itA = a(context);
        if (itA != null) {
            while (itA.hasNext()) {
                ActivityManager.RunningAppProcessInfo next = itA.next();
                if (next.pid == Process.myPid()) {
                    return next.processName;
                }
            }
        }
        return null;
    }

    public static int getPPid(int i) {
        try {
            return ((Integer) Process.class.getDeclaredMethod("getParentPid", Integer.TYPE).invoke(null, Integer.valueOf(i))).intValue();
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }

    public static int getSdkPluginProcessId(Context context) {
        Iterator<ActivityManager.RunningAppProcessInfo> itA = a(context);
        if (itA != null) {
            String packageName = context.getPackageName();
            while (itA.hasNext()) {
                ActivityManager.RunningAppProcessInfo next = itA.next();
                if (next.processName.equals(packageName + ":gcsdk")) {
                    return next.pid;
                }
            }
        }
        return 0;
    }
}
