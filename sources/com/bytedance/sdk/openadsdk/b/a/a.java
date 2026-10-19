package com.bytedance.sdk.openadsdk.b.a;

/* JADX INFO: compiled from: ADEventMonitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static final b a = new b(0);
    public static final b b = new b(1);
    public static final b c = new b(2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f1167d = new b(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f1168e = new b(1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f1169f = new b(2);

    public static void a() {
        try {
            b bVar = a;
            if (bVar.f1173g.get()) {
                com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_net_ad", "tt_sdk_event_net_ad", bVar.a().toString());
            }
            b bVar2 = b;
            if (bVar2.f1173g.get()) {
                com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_net_state", "tt_sdk_event_net_state", bVar2.a().toString());
            }
            b bVar3 = c;
            if (bVar3.f1173g.get()) {
                com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_net_trail", "tt_sdk_event_net_trail", bVar3.a().toString());
            }
            b bVar4 = f1167d;
            if (bVar4.f1173g.get()) {
                com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_db_ad", "tt_sdk_event_db_ad", bVar4.b().toString());
            }
            b bVar5 = f1168e;
            if (bVar5.f1173g.get()) {
                com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_db_state", "tt_sdk_event_db_state", bVar5.b().toString());
            }
            b bVar6 = f1169f;
            if (bVar6.f1173g.get()) {
                com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_db_trail", "tt_sdk_event_db_trail", bVar6.b().toString());
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(b bVar) {
        try {
            bVar.f1173g.getAndSet(true);
            bVar.f1171e.incrementAndGet();
        } catch (Throwable unused) {
        }
    }

    public static void a(b bVar, boolean z) {
        try {
            bVar.f1173g.getAndSet(true);
            if (z) {
                bVar.a.incrementAndGet();
            } else {
                bVar.b.incrementAndGet();
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(b bVar, boolean z, int i, long j) {
        try {
            bVar.f1173g.getAndSet(true);
            if (z) {
                bVar.a.incrementAndGet();
                bVar.c.addAndGet(j);
            } else {
                bVar.b.incrementAndGet();
                if (bVar.f1172f.containsKey(Integer.valueOf(i))) {
                    bVar.f1172f.put(Integer.valueOf(i), bVar.f1172f.get(Integer.valueOf(i)));
                } else {
                    bVar.f1172f.put(Integer.valueOf(i), 1);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static void b() {
        try {
            com.bytedance.sdk.openadsdk.j.b.b("net_upload_monitor", com.bytedance.sdk.openadsdk.multipro.d.a.b("tt_sdk_event_net_ad", "tt_sdk_event_net_ad", ""));
            com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_net_ad");
            com.bytedance.sdk.openadsdk.j.b.b("net_upload_monitor", com.bytedance.sdk.openadsdk.multipro.d.a.b("tt_sdk_event_net_state", "tt_sdk_event_net_state", ""));
            com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_net_state");
            com.bytedance.sdk.openadsdk.j.b.b("net_upload_monitor", com.bytedance.sdk.openadsdk.multipro.d.a.b("tt_sdk_event_net_trail", "tt_sdk_event_net_trail", ""));
            com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_net_trail");
            com.bytedance.sdk.openadsdk.j.b.b("db_upload_monitor", com.bytedance.sdk.openadsdk.multipro.d.a.b("tt_sdk_event_db_ad", "tt_sdk_event_db_ad", ""));
            com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_db_ad");
            com.bytedance.sdk.openadsdk.j.b.b("db_upload_monitor", com.bytedance.sdk.openadsdk.multipro.d.a.b("tt_sdk_event_db_state", "tt_sdk_event_db_state", ""));
            com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_db_state");
            com.bytedance.sdk.openadsdk.j.b.b("db_upload_monitor", com.bytedance.sdk.openadsdk.multipro.d.a.b("tt_sdk_event_db_trail", "tt_sdk_event_db_trail", ""));
            com.bytedance.sdk.openadsdk.multipro.d.a.a("tt_sdk_event_db_trail");
        } catch (Throwable unused) {
        }
    }
}
