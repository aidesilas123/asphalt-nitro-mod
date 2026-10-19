package com.bytedance.sdk.openadsdk.core.settings;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.v;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.multipro.aidl.BinderPoolService;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.u;
import com.json.o2;
import com.json.v4;
import com.mbridge.msdk.foundation.download.Command;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: SettingsFetchTask.java */
/* JADX INFO: loaded from: classes2.dex */
public class m extends com.bytedance.sdk.component.g.h {
    private final a a;
    private final l b;
    private final d c;

    /* JADX INFO: compiled from: SettingsFetchTask.java */
    public interface a {
        void a(boolean z);
    }

    public m(a aVar, l lVar, d dVar) {
        super("SetF");
        this.a = aVar;
        this.b = lVar;
        this.c = dVar;
    }

    @NonNull
    private JSONObject a(int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            e eVarD = com.bytedance.sdk.openadsdk.core.o.d();
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("device_city", ac.o());
            if (eVarD.A(v4.w0)) {
                jSONObject.put(v4.w0, com.com.bytedance.overseas.sdk.b.a.a().b());
            }
            jSONObject.put("gdpr", com.bytedance.sdk.openadsdk.core.h.b().h());
            jSONObject.put("coppa", com.bytedance.sdk.openadsdk.core.h.b().g());
            jSONObject.put("ccpa", com.bytedance.sdk.openadsdk.core.h.b().t());
            if (eVarD.A("mcc")) {
                jSONObject.put("mcc", u.b());
            }
            Context contextA = com.bytedance.sdk.openadsdk.core.o.a();
            jSONObject.put("conn_type", ac.g(i));
            int i2 = 1;
            jSONObject.put(v4.x, 1);
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put("os_version", Build.VERSION.RELEASE);
            jSONObject.put("sdk_version", BuildConfig.VERSION_NAME);
            jSONObject.put("language", com.bytedance.sdk.openadsdk.core.j.a());
            jSONObject.put("time_zone", ac.r());
            jSONObject.put("package_name", ac.e());
            if (!ac.a()) {
                i2 = 2;
            }
            jSONObject.put(o2.h.L, i2);
            jSONObject.put("app_version", ac.g());
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("uuid", com.bytedance.sdk.openadsdk.core.j.c(contextA));
            String strD = com.bytedance.sdk.openadsdk.core.h.b().d();
            if (strD != null) {
                jSONObject.put("app_id", strD);
            }
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            jSONObject.put("ts", jCurrentTimeMillis);
            jSONObject.put("req_sign", com.bytedance.sdk.component.utils.e.a(strD != null ? strD.concat(String.valueOf(jCurrentTimeMillis)).concat(BuildConfig.VERSION_NAME) : ""));
            jSONObject.put("tcstring", o.c(contextA));
            jSONObject.put("tcf_gdpr", o.b(contextA));
            jSONObject.put("lmt", DeviceUtils.b());
            jSONObject.put("locale_language", DeviceUtils.c());
            jSONObject.put("channel", o2.h.Z);
            JSONObject jSONObjectE = eVarD.e();
            if (jSONObjectE != null) {
                jSONObject.put("digest", jSONObjectE);
            }
            jSONObject.put("data_time", eVarD.f());
            jSONObject.put("app_set_id_scope", c.b());
            jSONObject.put("app_set_id", c.c());
            jSONObject.put("installed_source", c.d());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, Map<String, String> map) {
        int i = 1;
        try {
            if (!TextUtils.isEmpty(str) && map != null) {
                HashMap map2 = new HashMap();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        map2.put(key.toLowerCase(Locale.US), entry.getValue());
                    }
                }
                int i2 = Integer.parseInt((String) map2.get("active-control"));
                long j = Long.parseLong((String) map2.get("ts"));
                String str2 = (String) map2.get("pst");
                String strA = com.bykv.vk.openvk.component.video.api.f.b.a(str + i2 + j);
                if (strA != null) {
                    if (strA.equalsIgnoreCase(str2)) {
                        i = i2;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        k.a(i);
    }

    public static boolean a() {
        return BinderPoolService.a;
    }

    private JSONObject b(JSONObject jSONObject) {
        return com.bytedance.sdk.component.utils.a.a(jSONObject);
    }

    public boolean a(@NonNull JSONObject jSONObject) throws Throwable {
        this.b.a(jSONObject);
        this.c.a(jSONObject);
        return this.b.c;
    }

    @Override // java.lang.Runnable
    public void run() {
        Log.d("TTAD.SdkSettingsFetch", "Start Try");
        int iA = v.a(com.bytedance.sdk.openadsdk.core.o.a(), 0L);
        if (iA == 0) {
            Log.d("TTAD.SdkSettingsFetch", "No net");
            this.a.a(false);
            return;
        }
        final com.bytedance.sdk.openadsdk.j.a.c cVar = new com.bytedance.sdk.openadsdk.j.a.c();
        JSONObject jSONObjectA = a(iA);
        com.bytedance.sdk.component.f.b.d dVarB = com.bytedance.sdk.openadsdk.k.c.a().b().b();
        try {
            String strA = com.bytedance.sdk.openadsdk.e.d.a(dVarB, ac.d("/api/ad/union/mediation/settings/"));
            dVarB.a(strA);
            dVarB.b(Command.HTTP_HEADER_USER_AGENT, ac.c());
            cVar.a(strA);
        } catch (Exception unused) {
        }
        String string = b(jSONObjectA).toString();
        if (com.bytedance.sdk.openadsdk.core.o.d().U() && com.bytedance.sdk.openadsdk.core.v.a().g() == 1) {
            ac.a("Pangle_Debug_Mode", string, com.bytedance.sdk.openadsdk.core.o.a());
        }
        dVarB.a(string, com.bytedance.sdk.openadsdk.core.o.d().q());
        cVar.a(dVarB.c()).a();
        dVarB.a(new com.bytedance.sdk.component.f.a.a() { // from class: com.bytedance.sdk.openadsdk.core.settings.m.1
            @Override // com.bytedance.sdk.component.f.a.a
            public void a(com.bytedance.sdk.component.f.b.c cVar2, com.bytedance.sdk.component.f.b bVar) {
                JSONObject jSONObject;
                int iOptInt;
                int iA2 = bVar.a();
                String strD = bVar.d();
                if (com.bytedance.sdk.openadsdk.core.o.d().U() && com.bytedance.sdk.openadsdk.core.v.a().g() == 1) {
                    ac.a("Pangle_Debug_Mode", strD, com.bytedance.sdk.openadsdk.core.o.a());
                }
                if (bVar.f() && !TextUtils.isEmpty(strD)) {
                    cVar.c(strD).a(iA2).a(true).c();
                    String strC = null;
                    try {
                        jSONObject = new JSONObject(strD);
                    } catch (JSONException unused2) {
                        jSONObject = null;
                    }
                    if (jSONObject != null && (iOptInt = jSONObject.optInt("cypher", -1)) != -1) {
                        if (iOptInt == 3) {
                            strC = com.bytedance.sdk.component.utils.a.c(jSONObject.optString("message"));
                            if (!TextUtils.isEmpty(strC)) {
                                try {
                                    jSONObject = new JSONObject(strC);
                                } catch (Throwable unused3) {
                                }
                            }
                        }
                        try {
                            m.this.a(strC, bVar.c());
                        } catch (Throwable unused4) {
                        }
                        try {
                            m.this.a(jSONObject);
                            com.bytedance.sdk.openadsdk.core.o.d().a(System.currentTimeMillis());
                        } catch (Throwable unused5) {
                        }
                        m.this.a.a(true);
                        com.bytedance.sdk.openadsdk.core.f.a.a();
                        return;
                    }
                }
                cVar.c(strD).a(iA2).d(bVar.b()).a(bVar.f()).c();
                m.this.a.a(false);
            }

            @Override // com.bytedance.sdk.component.f.a.a
            public void a(com.bytedance.sdk.component.f.b.c cVar2, IOException iOException) {
                cVar.d(iOException != null ? iOException.getMessage() : null).a(false).c();
                m.this.a.a(false);
                com.bytedance.sdk.openadsdk.core.f.a.a();
            }
        });
        DeviceUtils.j();
    }
}
