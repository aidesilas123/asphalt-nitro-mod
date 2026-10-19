package com.nearme.plugin.framework;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class ApkFileParser {
    private static Map<String, PackageInfo> a = new HashMap();

    public static PackageInfo getPackageInfo(Context context, String str, int i) {
        PackageInfo packageArchiveInfo = a.get(str + i);
        if (packageArchiveInfo == null && new File(str).exists() && (packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, i)) != null) {
            a.put(str + i, packageArchiveInfo);
        }
        return packageArchiveInfo;
    }

    public static Signature[] getSignaure(Context context, String str) {
        PackageInfo packageInfo = getPackageInfo(context, str, 64);
        if (packageInfo != null) {
            return packageInfo.signatures;
        }
        return null;
    }

    public static int getVersionCode(Context context, String str) {
        try {
            return getPackageInfo(context, str, 0).versionCode;
        } catch (Exception e2) {
            if (LogUtils.b) {
                e2.printStackTrace();
            }
            return -1;
        }
    }

    public static String getVersionName(Context context, String str) {
        try {
            return getPackageInfo(context, str, 0).versionName;
        } catch (Exception e2) {
            if (LogUtils.b) {
                e2.printStackTrace();
            }
            return "";
        }
    }

    public static boolean isApkFileBroken(Context context, String str) {
        PackageInfo packageInfo = getPackageInfo(context, str, 64);
        return packageInfo == null || packageInfo.applicationInfo == null;
    }

    public static boolean isSignaturesSame(Signature[] signatureArr, Signature[] signatureArr2) {
        if (signatureArr == null || signatureArr2 == null) {
            return true;
        }
        HashSet hashSet = new HashSet();
        for (Signature signature : signatureArr) {
            hashSet.add(signature);
        }
        HashSet hashSet2 = new HashSet();
        for (Signature signature2 : signatureArr2) {
            hashSet2.add(signature2);
        }
        return hashSet.equals(hashSet2);
    }
}
