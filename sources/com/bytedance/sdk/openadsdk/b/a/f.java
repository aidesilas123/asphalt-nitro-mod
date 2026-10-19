package com.bytedance.sdk.openadsdk.b.a;

import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: compiled from: GetAdEventMonitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    public static AtomicInteger a = new AtomicInteger(0);
    public static AtomicInteger b = new AtomicInteger(0);
    public static AtomicInteger c = new AtomicInteger(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static AtomicInteger f1176d = new AtomicInteger(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static AtomicInteger f1177e = new AtomicInteger(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static AtomicInteger f1178f = new AtomicInteger(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static AtomicInteger f1179g = new AtomicInteger(0);
    public static AtomicInteger h = new AtomicInteger(0);

    public static void a() {
        try {
            long jA = com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_get_ad", "get_ad_event_time_key", 0L);
            if (jA > 0 && System.currentTimeMillis() - jA >= 86400000) {
                b();
                com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_get_ad", "get_ad_event_time_key", Long.valueOf(System.currentTimeMillis()));
                return;
            }
            if (jA <= 0 || jA > System.currentTimeMillis()) {
                com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_get_ad", "get_ad_event_time_key", Long.valueOf(System.currentTimeMillis()));
            }
            JSONObject jSONObject = new JSONObject(com.bytedance.sdk.openadsdk.multipro.d.a.b("tt_sdk_event_get_ad", "get_ad_event_key", ""));
            a.addAndGet(jSONObject.optInt("load_times"));
            b.addAndGet(jSONObject.optInt("load_success"));
            c.addAndGet(jSONObject.optInt("load_fail"));
            f1176d.addAndGet(jSONObject.optInt("load_success_and_parse_success"));
            f1177e.addAndGet(jSONObject.optInt("load_success_and_parse_fail"));
            f1178f.addAndGet(jSONObject.optInt("load_success_and_no_ad"));
            f1179g.addAndGet(jSONObject.optInt("load_fail_by_no_net"));
            h.addAndGet(jSONObject.optInt("load_fail_by_io"));
        } catch (Throwable unused) {
        }
    }

    public static void a(int i, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i);
            jSONObject.put("msg", str);
            com.bytedance.sdk.openadsdk.j.b.a().a("pangle_sdk_client_load_error", jSONObject);
        } catch (Throwable unused) {
        }
    }

    public static void b() {
        try {
            com.bytedance.sdk.openadsdk.j.b.a().a("pangle_sdk_get_ad_track", com.bytedance.sdk.openadsdk.multipro.d.a.b("tt_sdk_event_get_ad", "get_ad_event_key", ""));
            com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_get_ad");
        } catch (Throwable unused) {
        }
    }

    public static void c() {
        try {
            com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_get_ad", "get_ad_event_key", d().toString());
        } catch (Throwable unused) {
        }
    }

    public static JSONObject d() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("load_times", a.get());
            jSONObject.put("load_success", b.get());
            jSONObject.put("load_fail", c.get());
            jSONObject.put("load_success_and_parse_success", f1176d.get());
            jSONObject.put("load_success_and_parse_fail", f1177e.get());
            jSONObject.put("load_success_and_no_ad", f1178f.get());
            jSONObject.put("load_fail_by_no_net", f1179g.get());
            jSONObject.put("load_fail_by_io", h.get());
            return jSONObject;
        } catch (Throwable unused) {
            return new JSONObject();
        }
    }
}
