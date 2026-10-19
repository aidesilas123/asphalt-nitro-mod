package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.firebase.FirebaseApp;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-iid@@21.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public class Metadata {
    private final Context a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4092d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4093e = 0;

    public Metadata(Context context) {
        this.a = context;
    }

    private PackageInfo e(String str) {
        try {
            return this.a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e2) {
            String strValueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 23);
            sb.append("Failed to find package ");
            sb.append(strValueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    private synchronized void g() {
        PackageInfo packageInfoE = e(this.a.getPackageName());
        if (packageInfoE != null) {
            this.b = Integer.toString(packageInfoE.versionCode);
            this.c = packageInfoE.versionName;
        }
    }

    public static String getDefaultSenderId(FirebaseApp firebaseApp) {
        String strC = firebaseApp.k().c();
        if (strC != null) {
            return strC;
        }
        String strB = firebaseApp.k().b();
        if (!strB.startsWith("1:")) {
            return strB;
        }
        String[] strArrSplit = strB.split(CertificateUtil.DELIMITER);
        if (strArrSplit.length < 2) {
            return null;
        }
        String str = strArrSplit[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    public synchronized String a() {
        if (this.b == null) {
            g();
        }
        return this.b;
    }

    public synchronized String b() {
        if (this.c == null) {
            g();
        }
        return this.c;
    }

    public synchronized int c() {
        PackageInfo packageInfoE;
        if (this.f4092d == 0 && (packageInfoE = e("com.google.android.gms")) != null) {
            this.f4092d = packageInfoE.versionCode;
        }
        return this.f4092d;
    }

    public synchronized int d() {
        int i = this.f4093e;
        if (i != 0) {
            return i;
        }
        PackageManager packageManager = this.a.getPackageManager();
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            Log.e("FirebaseInstanceId", "Google Play services missing or without correct permission.");
            return 0;
        }
        int i2 = 1;
        if (!PlatformVersion.isAtLeastO()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (listQueryIntentServices != null && listQueryIntentServices.size() > 0) {
                this.f4093e = 1;
                return 1;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
            this.f4093e = 2;
            return 2;
        }
        Log.w("FirebaseInstanceId", "Failed to resolve IID implementation package, falling back");
        if (PlatformVersion.isAtLeastO()) {
            this.f4093e = 2;
            i2 = 2;
        } else {
            this.f4093e = 1;
        }
        return i2;
    }

    @KeepForSdk
    public boolean f() {
        return d() != 0;
    }
}
