package com.bytedance.sdk.openadsdk.core.settings;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;

/* JADX INFO: compiled from: AppSetIdAndScope.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    private static volatile String a = "";
    private static volatile String b = "";
    private static String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f1674d;

    public static void a() {
        if (!ac.t()) {
            f1674d = 2;
            return;
        }
        try {
            Context contextA = com.bytedance.sdk.openadsdk.core.o.a();
            Class.forName("com.google.android.gms.appset.AppSet");
            AppSet.getClient(contextA).getAppSetIdInfo().addOnSuccessListener(new OnSuccessListener<AppSetIdInfo>() { // from class: com.bytedance.sdk.openadsdk.core.settings.AppSetIdAndScope$1
                @Override // com.google.android.gms.tasks.OnSuccessListener
                @Keep
                public void onSuccess(AppSetIdInfo appSetIdInfo) {
                    String unused = c.a = Integer.toString(appSetIdInfo.getScope());
                    String unused2 = c.b = appSetIdInfo.getId();
                    int unused3 = c.f1674d = 1;
                }
            });
        } catch (Throwable unused) {
            com.bytedance.sdk.component.utils.l.b("AppSetIdAndScope", "if you want to use appSetId, you must add 'com.google.android.gms:play-services-appset:x.x.x' into your build.gradle ");
            f1674d = 2;
        }
    }

    public static String b() {
        if (f1674d != 0) {
            return a;
        }
        a();
        return a;
    }

    public static String c() {
        if (f1674d != 0) {
            return b;
        }
        a();
        return b;
    }

    public static String d() {
        if (TextUtils.isEmpty(c)) {
            c = com.bytedance.sdk.openadsdk.core.o.a().getPackageManager().getInstallerPackageName(ac.e());
        }
        if (c == null) {
            c = "";
        }
        return c;
    }
}
