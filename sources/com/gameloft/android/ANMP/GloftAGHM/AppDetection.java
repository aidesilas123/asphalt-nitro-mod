package com.gameloft.android.ANMP.GloftAGHM;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AppDetection {
    private static Context a;
    private static List<String> b;
    private static List<String> c;

    public static ArrayList<String> getAllPackageNames() {
        List<ApplicationInfo> applications = getApplications();
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i = 0; i < applications.size(); i++) {
            arrayList.add(applications.get(i).packageName);
        }
        return arrayList;
    }

    private static List<ApplicationInfo> getApplications() {
        Context context = a;
        return context != null ? context.getPackageManager().getInstalledApplications(128) : new ArrayList();
    }

    public static ArrayList<String> getGameloftPackages() {
        List<PackageInfo> packages = getPackages();
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i = 0; i < packages.size(); i++) {
            PackageInfo packageInfo = packages.get(i);
            if (packageInfo.versionName != null) {
                String str = packageInfo.packageName;
                if (str.startsWith("com.gameloft")) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    public static String[] getInstalledPackages() {
        if (b == null) {
            b = getNonSystemPackageNames();
        }
        List<String> list = b;
        return (String[]) list.toArray(new String[list.size()]);
    }

    public static ArrayList<String> getNonSystemPackageNames() {
        List<ApplicationInfo> applications = getApplications();
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i = 0; i < applications.size(); i++) {
            ApplicationInfo applicationInfo = applications.get(i);
            if ((applicationInfo.flags & 1) == 0) {
                arrayList.add(applicationInfo.packageName);
            }
        }
        return arrayList;
    }

    private static List<PackageInfo> getPackages() {
        Context context = a;
        return context != null ? context.getPackageManager().getInstalledPackages(0) : new ArrayList();
    }

    public static void init(Context context) {
        a = context;
    }

    public static boolean isAppInstalled(String str) {
        if (b == null) {
            b = getNonSystemPackageNames();
        }
        if (b.contains(str)) {
            return true;
        }
        if (c == null) {
            c = getAllPackageNames();
        }
        return c.contains(str);
    }
}
