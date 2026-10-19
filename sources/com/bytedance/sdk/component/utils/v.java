package com.bytedance.sdk.component.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: TTNetworkUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class v {
    private static final Object a = new Object();
    private static final Map<a, Object> b = new ConcurrentHashMap();
    private static AtomicBoolean c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile int f1085d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile long f1086e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile int f1087f = 60000;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static p f1088g = null;
    private static final AtomicBoolean h = new AtomicBoolean(false);

    /* JADX INFO: compiled from: TTNetworkUtils.java */
    public interface a {
        void a(Context context, Intent intent, boolean z, int i);
    }

    /* JADX INFO: compiled from: TTNetworkUtils.java */
    private static class b extends BroadcastReceiver {
        private b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z = false;
            boolean booleanExtra = intent.getBooleanExtra("noConnectivity", false);
            if (v.b != null && v.b.size() > 0) {
                z = true;
            }
            v.b(context, intent, z, booleanExtra);
        }
    }

    public static int a(Context context, long j) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (f1086e + j > jElapsedRealtime && f1085d != -1) {
            if (jElapsedRealtime - f1086e >= f1087f) {
                b(context, (Intent) null, false, false);
            }
            return f1085d;
        }
        return b(context);
    }

    public static void a(a aVar) {
        if (aVar == null) {
            return;
        }
        b.remove(aVar);
    }

    public static void a(a aVar, Context context) {
        if (aVar == null) {
            return;
        }
        if (!c.get()) {
            try {
                context.registerReceiver(new b(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                c.set(true);
            } catch (Throwable unused) {
            }
        }
        b.put(aVar, a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(Context context) {
        f1085d = c(context);
        f1086e = SystemClock.elapsedRealtime();
        return f1085d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, Intent intent, int i, boolean z) {
        Map<a, Object> map = b;
        if (map == null || map.size() <= 0) {
            return;
        }
        for (a aVar : map.keySet()) {
            if (aVar != null) {
                aVar.a(context, intent, !z, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final Context context, final Intent intent, final boolean z, final boolean z2) {
        if (!z && z2) {
            f1085d = 0;
        } else if (h.compareAndSet(false, true)) {
            com.bytedance.sdk.component.g.f.b(new com.bytedance.sdk.component.g.h("getNetworkType") { // from class: com.bytedance.sdk.component.utils.v.1
                @Override // java.lang.Runnable
                public void run() {
                    int unused = v.f1085d = z2 ? 0 : v.b(context);
                    v.h.set(false);
                    if (z) {
                        v.b(context, intent, v.f1085d, z2);
                    }
                }
            });
        }
    }

    private static int c(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    return type != 1 ? 1 : 4;
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return 2;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return 3;
                    case 13:
                    case 18:
                    case 19:
                        p pVar = f1088g;
                        return (pVar == null || !pVar.a(context, telephonyManager)) ? 5 : 6;
                    case 20:
                        return 6;
                    default:
                        String subtypeName = activeNetworkInfo.getSubtypeName();
                        return (TextUtils.isEmpty(subtypeName) || !(subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000"))) ? 1 : 3;
                }
            }
            return 0;
        } catch (Throwable unused) {
            return 1;
        }
    }
}
