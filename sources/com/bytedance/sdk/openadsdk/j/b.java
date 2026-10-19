package com.bytedance.sdk.openadsdk.j;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.j;
import com.bytedance.sdk.openadsdk.core.settings.o;
import com.bytedance.sdk.openadsdk.j.a.c;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: compiled from: StatsLogManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static volatile b a;

    private b() {
    }

    public static long a(File file) {
        if (file.isFile()) {
            return file.length();
        }
        long jA = 0;
        for (File file2 : file.listFiles()) {
            jA += a(file2);
        }
        return jA;
    }

    public static b a() {
        if (a == null) {
            synchronized (b.class) {
                if (a == null) {
                    a = new b();
                }
            }
        }
        return a;
    }

    public static void a(long j, long j2, final String str, final int i) {
        if (j == 0) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        final long j3 = jElapsedRealtime - j;
        final long j4 = jElapsedRealtime - j2;
        final long j5 = j2 - j;
        a("ad_show_cost_time", false, new a() { // from class: com.bytedance.sdk.openadsdk.j.b.6
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("duration", j3);
                jSONObject.put("renderDuration", j4);
                jSONObject.put("showToRenderDuration", j5);
                jSONObject.put("tag", str);
                jSONObject.put("renderType", i);
                return com.bytedance.sdk.openadsdk.j.a.b.b().a("ad_show_cost_time").b(jSONObject.toString());
            }
        });
    }

    public static void a(final c cVar) {
        a("request_monitor", false, new a() { // from class: com.bytedance.sdk.openadsdk.j.b.7
            @Override // com.bytedance.sdk.openadsdk.j.a
            @Nullable
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                return com.bytedance.sdk.openadsdk.j.a.b.b().a("request_monitor").b(cVar.toString());
            }
        });
    }

    public static void a(String str, boolean z, a aVar) {
        int iB = o.aj().b(str);
        l.b("StatsLogManager", "type=", str, "  ", Integer.valueOf(iB));
        if (TextUtils.isEmpty(str) || iB == 0 || aVar == null) {
            return;
        }
        boolean z2 = iB == 100;
        if (!z2) {
            z2 = ((int) ((Math.random() * 100.0d) + 1.0d)) <= iB;
        }
        if (z2) {
            com.bytedance.sdk.openadsdk.core.o.e().a(aVar, z);
        }
    }

    public static void b(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                final com.bytedance.sdk.openadsdk.j.a.b bVarB = com.bytedance.sdk.openadsdk.j.a.b.b().a(str).b(str2);
                com.bytedance.sdk.openadsdk.core.o.e().a(new a() { // from class: com.bytedance.sdk.openadsdk.j.b.5
                    @Override // com.bytedance.sdk.openadsdk.j.a
                    public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                        return bVarB;
                    }
                }, false);
            }
        } catch (Throwable th) {
            l.e("StatsLogManager", th.getMessage());
        }
    }

    public static void c() {
        a("disk_log", false, new a() { // from class: com.bytedance.sdk.openadsdk.j.b.4
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                File file = new File(CacheDirFactory.getRootDir());
                long j = 0;
                if (file.exists() && file.isDirectory()) {
                    for (File file2 : file.listFiles()) {
                        long jA = b.a(file2);
                        j += jA;
                        jSONObject.put(file2.getName(), jA);
                    }
                }
                if (j < 524288000) {
                    return null;
                }
                return com.bytedance.sdk.openadsdk.j.a.b.b().a("disk_log").b(jSONObject.toString());
            }
        });
    }

    private boolean d(com.bytedance.sdk.openadsdk.j.a.b bVar) {
        return bVar == null;
    }

    public void a(final long j, final long j2) {
        final long j3 = j2 - j;
        a("general_label", false, new a() { // from class: com.bytedance.sdk.openadsdk.j.b.14
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                int i = !com.bytedance.sdk.openadsdk.core.l.b.get() ? 1 : 0;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("starttime", j);
                    jSONObject.put("endtime", j2);
                    jSONObject.put("start_type", i);
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.j.a.b.b().a("general_label").h(String.valueOf(j3)).b(jSONObject.toString());
            }
        });
    }

    public void a(final com.bytedance.sdk.openadsdk.j.a.b bVar) {
        if (d(bVar)) {
            return;
        }
        bVar.a("express_ad_render");
        com.bytedance.sdk.openadsdk.core.o.e().a(new a() { // from class: com.bytedance.sdk.openadsdk.j.b.8
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                return bVar;
            }
        });
    }

    public void a(final String str) {
        a("click_playable_test_tool", false, new a() { // from class: com.bytedance.sdk.openadsdk.j.b.11
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("playable_url", str);
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.j.a.b.b().a("click_playable_test_tool").b(jSONObject.toString());
            }
        });
    }

    public void a(final String str, final int i, final String str2) {
        a("use_playable_test_tool_error", false, new a() { // from class: com.bytedance.sdk.openadsdk.j.b.13
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("playable_url", str);
                    jSONObject.put("error_code", i);
                    jSONObject.put("error_message", str2);
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.j.a.b.b().a("use_playable_test_tool_error").b(jSONObject.toString());
            }
        });
    }

    public void a(final String str, final String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        a(str, false, new a() { // from class: com.bytedance.sdk.openadsdk.j.b.1
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                return com.bytedance.sdk.openadsdk.j.a.b.b().a(str).b(str2);
            }
        });
    }

    public void a(final String str, final JSONObject jSONObject) {
        if (str == null || jSONObject == null) {
            return;
        }
        a(str, false, new a() { // from class: com.bytedance.sdk.openadsdk.j.b.15
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                return com.bytedance.sdk.openadsdk.j.a.b.b().a(str).b(jSONObject.toString());
            }
        });
    }

    public void a(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        Object objOpt = jSONObject.opt("device_ad_mediation_platform");
        if (!(objOpt instanceof String) || TextUtils.isEmpty((String) objOpt)) {
            return;
        }
        a("ad_revenue", true, new a() { // from class: com.bytedance.sdk.openadsdk.j.b.3
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                try {
                    jSONObject.put(NotificationCompat.CATEGORY_EVENT, 272);
                    jSONObject.put("uuid", j.c(com.bytedance.sdk.openadsdk.core.o.a()));
                    String strA = "";
                    try {
                        if (j.a(com.bytedance.sdk.openadsdk.core.o.a()) != null) {
                            strA = j.a(com.bytedance.sdk.openadsdk.core.o.a());
                        }
                    } catch (Throwable th) {
                        l.b("StatsLogManager", th.getMessage());
                    }
                    jSONObject.put("device_id", strA);
                    jSONObject.put("platform", "android");
                    jSONObject.put("partner", "PangleSDK");
                } catch (Throwable th2) {
                    l.b("StatsLogManager", th2.getMessage());
                }
                return com.bytedance.sdk.openadsdk.j.a.b.b().a("ad_revenue").b(jSONObject.toString());
            }
        });
    }

    public void b() {
        a("blind_mode_status", true, new a() { // from class: com.bytedance.sdk.openadsdk.j.b.2
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                return com.bytedance.sdk.openadsdk.j.a.b.b().a("blind_mode_status");
            }
        });
    }

    public void b(final com.bytedance.sdk.openadsdk.j.a.b bVar) {
        if (d(bVar)) {
            return;
        }
        bVar.a("tpl_update_fail");
        com.bytedance.sdk.openadsdk.core.o.e().a(new a() { // from class: com.bytedance.sdk.openadsdk.j.b.9
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                return bVar;
            }
        });
    }

    public void b(final String str) {
        a("close_playable_test_tool", false, new a() { // from class: com.bytedance.sdk.openadsdk.j.b.12
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("playable_url", str);
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.j.a.b.b().a("close_playable_test_tool").b(jSONObject.toString());
            }
        });
    }

    public void c(final com.bytedance.sdk.openadsdk.j.a.b bVar) {
        if (d(bVar)) {
            return;
        }
        bVar.a("show_backup_endcard");
        com.bytedance.sdk.openadsdk.core.o.e().a(new a() { // from class: com.bytedance.sdk.openadsdk.j.b.10
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                return bVar;
            }
        });
    }
}
