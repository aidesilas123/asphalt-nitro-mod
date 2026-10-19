package com.bytedance.sdk.openadsdk.utils;

import android.content.res.Configuration;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: SimUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class u {
    private static String a = null;
    private static String b = null;
    private static String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile boolean f1879d = true;

    /* JADX INFO: compiled from: SimUtils.java */
    public static class a extends com.bytedance.sdk.component.g.h {
        public static AtomicBoolean a = new AtomicBoolean(false);
        private static final AtomicLong b = new AtomicLong(0);

        public a(String str, int i) {
            super(str, i);
        }

        public static void a() {
            if (a.get()) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            AtomicLong atomicLong = b;
            if (jCurrentTimeMillis - atomicLong.get() < 600000) {
                return;
            }
            atomicLong.set(jCurrentTimeMillis);
            aa.b(new a("UpdateSimStatusTask", 5));
        }

        @Override // java.lang.Runnable
        public void run() {
            a.set(true);
            u.e();
            a.set(false);
        }
    }

    public static String a() {
        a.a();
        return a;
    }

    public static String b() {
        try {
            a.a();
            if (!f1879d) {
                StringBuilder sb = new StringBuilder();
                sb.append("getMCC");
                sb.append(f1879d ? "Have SIM card" : "No SIM card, MCC returns null");
                com.bytedance.sdk.component.utils.l.e("MCC", sb.toString());
                return null;
            }
            Configuration configuration = com.bytedance.sdk.openadsdk.core.o.a().getResources().getConfiguration();
            int i = configuration.mcc;
            String strValueOf = i != 0 ? String.valueOf(i) : b;
            com.bytedance.sdk.component.utils.l.e("MCC", "config=" + configuration.mcc + ",sMCC=" + b);
            return strValueOf;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("SimUtils", th.getMessage());
            return null;
        }
    }

    public static String c() {
        a.a();
        return c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e() {
        String simOperatorName;
        String simOperator;
        String strSubstring;
        if (com.bytedance.sdk.openadsdk.core.o.a() == null) {
            return;
        }
        f1879d = true;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) com.bytedance.sdk.openadsdk.core.o.a().getSystemService("phone");
            try {
                int simState = telephonyManager.getSimState();
                if (simState == 0 || simState == 1) {
                    f1879d = false;
                }
                com.bytedance.sdk.component.utils.l.e("MCC", f1879d ? "Have SIM card" : "No SIM card");
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.e("SimUtils", th.getMessage());
            }
            String str = null;
            try {
                simOperatorName = telephonyManager.getSimOperatorName();
            } catch (Throwable unused) {
                simOperatorName = null;
            }
            try {
                simOperator = telephonyManager.getNetworkOperator();
            } catch (Throwable unused2) {
                simOperator = null;
            }
            if (simOperator == null || simOperator.length() < 5) {
                try {
                    simOperator = telephonyManager.getSimOperator();
                } catch (Throwable unused3) {
                }
            }
            if (TextUtils.isEmpty(simOperator) || simOperator.length() <= 4) {
                strSubstring = null;
            } else {
                String strSubstring2 = simOperator.substring(0, 3);
                strSubstring = simOperator.substring(3);
                str = strSubstring2;
            }
            if (!TextUtils.isEmpty(simOperatorName)) {
                a = simOperatorName;
            }
            if (!TextUtils.isEmpty(str)) {
                b = str;
            }
            if (TextUtils.isEmpty(strSubstring)) {
                return;
            }
            c = strSubstring;
        } catch (Throwable unused4) {
        }
    }
}
