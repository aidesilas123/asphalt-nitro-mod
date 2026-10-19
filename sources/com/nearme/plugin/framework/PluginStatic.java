package com.nearme.plugin.framework;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.view.LayoutInflater;
import com.nearme.plugin.framework.activity.a;
import dalvik.system.DexClassLoader;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PluginStatic {
    public static ClassLoader a;
    private static final HashMap<String, DexClassLoader> b = new HashMap<>();
    public static final ConcurrentHashMap<String, PackageInfo> c = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ArrayList<a> f7693d = new ArrayList<>();

    private static boolean a() {
        try {
            Field declaredField = LayoutInflater.class.getDeclaredField("sConstructorMap");
            declaredField.setAccessible(true);
            ((HashMap) declaredField.get(null)).clear();
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void add(a aVar) {
        f7693d.add(aVar);
    }

    public static List<a> getActivitys() {
        return f7693d;
    }

    public static ClassLoader getOrCreateClassLoaderByPath(Context context, PackageInfo packageInfo, String str) throws Exception {
        if (packageInfo == null) {
            packageInfo = getOrCreatePkgInfo(context, str);
        }
        String str2 = packageInfo.packageName + packageInfo.versionCode;
        HashMap<String, DexClassLoader> map = b;
        DexClassLoader dexClassLoader = map.get(str2);
        if (dexClassLoader == null) {
            if (map.get(packageInfo.packageName) != null) {
                a();
                map.remove(packageInfo.packageName);
            }
            DexClassLoader dexClassLoader2 = new DexClassLoader(str, PathUtils.getOptimizedDexPath(context), PathUtils.getLibPath(context), context.getClassLoader());
            map.put(str2, dexClassLoader2);
            map.put(packageInfo.packageName, dexClassLoader2);
            dexClassLoader = dexClassLoader2;
        }
        a = dexClassLoader;
        return dexClassLoader;
    }

    public static PackageInfo getOrCreatePkgInfo(Context context, String str) {
        ConcurrentHashMap<String, PackageInfo> concurrentHashMap = c;
        PackageInfo packageInfo = concurrentHashMap.get(str);
        if (packageInfo == null) {
            packageInfo = ApkFileParser.getPackageInfo(context, str, 1);
            if (packageInfo == null) {
                throw new RuntimeException("Get Package Info Failed!");
            }
            concurrentHashMap.put(str, packageInfo);
        }
        return packageInfo;
    }

    public static void remove(a aVar) {
        f7693d.remove(aVar);
    }
}
