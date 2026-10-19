package com.mbridge.msdk.foundation.same.report.b;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.e.e;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.p;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: AnrMonitorManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c {
    private static long a;
    private static long b;

    /* JADX INFO: compiled from: AnrMonitorManager.java */
    private static final class a implements com.mbridge.msdk.foundation.same.report.b.a {
        @Override // com.mbridge.msdk.foundation.same.report.b.a
        public final void a() {
            if (MBridgeConstans.DEBUG) {
                aa.a("AnrMonitorManager", "onNotAnrHappened");
            }
        }

        @Override // com.mbridge.msdk.foundation.same.report.b.a
        public final void a(final String str, final StackTraceElement[] stackTraceElementArr) {
            if (MBridgeConstans.DEBUG) {
                aa.a("AnrMonitorManager", "onAnrHappened: " + str);
            }
            if (!c.d(str)) {
                aa.a("AnrMonitorManager", "onAnrHappened: can track false");
                return;
            }
            long unused = c.a = System.currentTimeMillis();
            com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.report.b.c.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    String str2 = str;
                    StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
                    try {
                        if (ac.a().a("metrics", "e_t_l", ac.a().a("e_t_l", 0)) == 1) {
                            c.a(str2, stackTraceElementArr2);
                        } else {
                            new p(com.mbridge.msdk.foundation.controller.b.d().g()).a("key=m_anr_report&exception=" + c.c(str2) + "&crash_first_index_from_mtg=" + c.a(stackTraceElementArr2), (File) null);
                        }
                    } catch (Exception e2) {
                        aa.b("AnrMonitorManager", "handler anr failed", e2);
                    }
                }
            });
        }
    }

    public static String a(StackTraceElement[] stackTraceElementArr) {
        return c(stackTraceElementArr) ? "1" : "0";
    }

    public static void a() {
        if (!c()) {
            aa.a("AnrMonitorManager", "anr monitor is not available");
            return;
        }
        try {
            b.a().a(b(), new a()).start();
        } catch (Exception e2) {
            aa.b("AnrMonitorManager", "start anr monitor failed", e2);
        }
    }

    static /* synthetic */ void a(String str, StackTraceElement[] stackTraceElementArr) throws JSONException {
        try {
            JSONObject jSONObjectC = c(str);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("exception", jSONObjectC.toString());
            jSONObject.put("crash_first_index_from_mtg", a(stackTraceElementArr));
            e eVar = new e("m_anr_report");
            eVar.a(jSONObject);
            eVar.a(h.b());
            eVar.a(0);
            eVar.b(1);
            m.a().d().a(eVar);
        } catch (JSONException e2) {
            aa.b("AnrMonitorManager", "reportANRByEventLibrary anr failed", e2);
        }
    }

    private static int b() {
        try {
            int iA = ac.a().a("anr_check_timeout", 5000);
            if (iA <= 0) {
                return 5000;
            }
            return iA;
        } catch (Exception e2) {
            aa.b("AnrMonitorManager", "get anr check timeout failed", e2);
            return 5000;
        }
    }

    public static String b(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr != null && stackTraceElementArr.length != 0) {
            try {
                StringBuilder sb = new StringBuilder();
                for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                    if (stackTraceElement != null) {
                        sb.append(stackTraceElement.toString());
                        sb.append("\r\n");
                    }
                }
                return sb.toString();
            } catch (Exception unused) {
            }
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject c(String str) throws JSONException {
        JSONObject jSONObjectA = d.a(com.mbridge.msdk.foundation.controller.b.d().g()).a(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis())));
        jSONObjectA.put("crashinfo", str);
        return jSONObjectA;
    }

    private static boolean c() {
        try {
            return ac.a().a("anr_monitor_available", false);
        } catch (Exception e2) {
            aa.b("AnrMonitorManager", "get anr monitor available failed", e2);
            return false;
        }
    }

    private static boolean c(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr != null && stackTraceElementArr.length != 0) {
            try {
                ArrayList arrayList = new ArrayList();
                for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                    if (stackTraceElement != null && !TextUtils.isEmpty(stackTraceElement.toString())) {
                        String string = stackTraceElement.toString();
                        if (!(!TextUtils.isEmpty(string) && (string.contains(MBridgeConstans.APPLICATION_STACK_COM_ANDROID) || string.contains("com.google") || string.contains("java.lang") || string.contains(MBridgeConstans.APPLICATION_STACK_ANDROID_OS) || string.contains(MBridgeConstans.APPLICATION_STACK_ANDROID_APP)))) {
                            arrayList.add(string);
                        }
                    }
                }
                if (arrayList.size() == 0) {
                    return false;
                }
                return d((String) arrayList.get(0));
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.b("AnrMonitorManager", "isMBridgeFirst exception", e2);
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            for (String str2 : d.b(d.b())) {
                if (!TextUtils.isEmpty(str2) && str.contains(str2)) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
