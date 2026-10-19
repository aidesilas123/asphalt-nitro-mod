package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import androidx.annotation.GuardedBy;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.firebase.FirebaseApp;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class Metadata {
    private final Context a;

    @GuardedBy("this")
    private String b;

    @GuardedBy("this")
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private int f4148d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private int f4149e = 0;

    Metadata(Context context) {
        this.a = context;
    }

    static String c(FirebaseApp firebaseApp) {
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

    private PackageInfo f(String str) {
        try {
            return this.a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e2) {
            Log.w("FirebaseMessaging", "Failed to find package " + e2);
            return null;
        }
    }

    private synchronized void h() {
        PackageInfo packageInfoF = f(this.a.getPackageName());
        if (packageInfoF != null) {
            this.b = Integer.toString(packageInfoF.versionCode);
            this.c = packageInfoF.versionName;
        }
    }

    synchronized String a() {
        if (this.b == null) {
            h();
        }
        return this.b;
    }

    synchronized String b() {
        if (this.c == null) {
            h();
        }
        return this.c;
    }

    synchronized int d() {
        PackageInfo packageInfoF;
        if (this.f4148d == 0 && (packageInfoF = f("com.google.android.gms")) != null) {
            this.f4148d = packageInfoF.versionCode;
        }
        return this.f4148d;
    }

    synchronized int e() {
        int i = this.f4149e;
        if (i != 0) {
            return i;
        }
        PackageManager packageManager = this.a.getPackageManager();
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            Log.e("FirebaseMessaging", "Google Play services missing or without correct permission.");
            return 0;
        }
        if (!PlatformVersion.isAtLeastO()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (listQueryIntentServices != null && listQueryIntentServices.size() > 0) {
                this.f4149e = 1;
                return 1;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
            this.f4149e = 2;
            return 2;
        }
        Log.w("FirebaseMessaging", "Failed to resolve IID implementation package, falling back");
        if (PlatformVersion.isAtLeastO()) {
            this.f4149e = 2;
        } else {
            this.f4149e = 1;
        }
        return this.f4149e;
    }

    boolean g() {
        return e() != 0;
    }
}
