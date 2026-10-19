package com.mbridge.msdk.f;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.GoogleApiAvailability;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import java.util.ArrayList;

/* JADX INFO: compiled from: CronetEnvironmentCheckUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    public static String a = "";
    private static boolean b;

    public static void a() {
        boolean z = true;
        if (ac.a().a("cronet_env_check", true)) {
            try {
                Class.forName("com.google.android.gms.common.GoogleApiAvailability");
                GoogleApiAvailability.getInstance().getApkVersion(com.mbridge.msdk.foundation.controller.b.d().g());
                GoogleApiAvailability.getInstance().verifyGooglePlayServicesIsAvailable(com.mbridge.msdk.foundation.controller.b.d().g(), 11925000);
                try {
                    String strD = d();
                    if (TextUtils.isEmpty(strD)) {
                        z = false;
                    }
                    b = z;
                    if (z) {
                        a = strD;
                    }
                } catch (Throwable th) {
                    aa.d("CronetEnvCheckUtil", th.getMessage());
                }
            } catch (Throwable th2) {
                aa.d("CronetEnvCheckUtil", th2.getMessage());
                b = false;
            }
        }
    }

    public static boolean a(boolean z) {
        return b && z;
    }

    public static boolean b() {
        return ac.a().a("cronet_engine_open", false) && b;
    }

    public static boolean c() {
        return b;
    }

    private static String d() {
        ArrayList<Pair> arrayList = new ArrayList();
        arrayList.add(Pair.create(1, "org.chromium.net.impl.JavaCronetProvider"));
        arrayList.add(Pair.create(2, "org.chromium.net.impl.NativeCronetProvider"));
        arrayList.add(Pair.create(3, "com.google.android.gms.net.PlayServicesCronetProvider"));
        arrayList.add(Pair.create(4, "com.google.android.gms.net.GmsCoreCronetProvider"));
        try {
            StringBuilder sb = new StringBuilder();
            ClassLoader classLoader = com.mbridge.msdk.foundation.controller.b.d().g().getClassLoader();
            for (Pair pair : arrayList) {
                try {
                    if (!TextUtils.isEmpty(classLoader.loadClass((String) pair.second).getConstructor(Context.class).newInstance(com.mbridge.msdk.foundation.controller.b.d().g()).getClass().getName())) {
                        if (sb.length() > 0) {
                            sb.append(",");
                        }
                        sb.append(pair.first);
                    }
                } catch (Throwable th) {
                    aa.d("CronetEnvCheckUtil", th.getMessage());
                }
            }
            return sb.toString();
        } catch (Throwable th2) {
            aa.d("CronetEnvCheckUtil", th2.getMessage());
            return "";
        }
    }
}
