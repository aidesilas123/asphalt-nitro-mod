package com.bytedance.sdk.openadsdk;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.AttachUserData;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.MonitorCrash;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.b.c;
import com.bytedance.sdk.openadsdk.b.g;
import com.bytedance.sdk.openadsdk.core.j;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.settings.e;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.json.o2;
import com.json.v4;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ApmHelper {
    private static boolean a;
    private static String b;
    private static boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f1104d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static b f1105e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static a f1106f;

    private static class a {
        public final String a;
        public final String b;
        public final Throwable c;

        public a(String str, String str2, Throwable th) {
            this.a = str;
            this.b = str2;
            this.c = th;
        }
    }

    private interface b {
        void a(String str, String str2, Throwable th);
    }

    private static void b(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        o.c().a(c(str), "https://" + str2 + "/monitor/collect/c/session?version_code=" + BuildConfig.VERSION_CODE + "&device_platform=android&aid=10000001");
    }

    private static JSONObject c(String str) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.put("sdk_version", BuildConfig.VERSION_NAME);
            jSONObject3.put("host_app_id", b);
            jSONObject2.putOpt("custom", jSONObject3);
            jSONObject2.put(v4.x, o2.f6459e);
            jSONObject2.put("os_version", Build.VERSION.RELEASE);
            jSONObject2.put("device_model", Build.MODEL);
            jSONObject2.put("device_brand", Build.BRAND);
            jSONObject2.put("sdk_version_name", "0.0.5");
            jSONObject2.put("channel", j());
            jSONObject2.put("aid", "10000001");
            jSONObject2.put("update_version_code", BuildConfig.VERSION_CODE);
            jSONObject2.put("bd_did", str);
            jSONObject.putOpt("header", jSONObject2);
            jSONObject.putOpt("local_time", Long.valueOf(System.currentTimeMillis()));
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(new JSONObject().put("local_time_ms", System.currentTimeMillis()));
            jSONObject.putOpt("launch", jSONArray);
        } catch (JSONException e2) {
            l.e("ApmHelper", e2.getMessage());
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(String str, String str2) {
        b(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(final String str) {
        final q qVarA = com.bytedance.sdk.openadsdk.utils.b.a();
        if (qVarA != null) {
            String strA = ac.a(qVarA);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            c.a(System.currentTimeMillis(), qVarA, strA, "sdk_crash_info", new JSONObject(), (g) null, new com.bytedance.sdk.openadsdk.b.b.a() { // from class: com.bytedance.sdk.openadsdk.ApmHelper.2
                @Override // com.bytedance.sdk.openadsdk.b.b.a
                public void a(JSONObject jSONObject) throws JSONException {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("type", str);
                    jSONObject2.put("material", com.bytedance.sdk.component.utils.a.a(qVarA.ao()).toString());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, String> i() {
        HashMap map = new HashMap();
        q qVarA = com.bytedance.sdk.openadsdk.utils.b.a();
        if (qVarA != null) {
            map.put("adType", String.valueOf(qVarA.aT()));
            map.put("aid", String.valueOf(qVarA.aU()));
            map.put(BidResponsedEx.KEY_CID, qVarA.Y());
            map.put("reqId", qVarA.bc());
            map.put("rit", qVarA.x(UniquePlacementId.NO_ID));
            int iX = qVarA.x();
            if (qVarA.u() != 2) {
                iX = -1;
            }
            map.put("render_type", String.valueOf(iX));
        }
        return map;
    }

    public static void initApm(final Context context, final InitConfig initConfig) {
        aa.a(new h("init-apm") { // from class: com.bytedance.sdk.openadsdk.ApmHelper.1
            @Override // java.lang.Runnable
            public void run() {
                if (ApmHelper.a) {
                    return;
                }
                e eVarD = o.d();
                boolean unused = ApmHelper.c = eVarD.R();
                if (!ApmHelper.c || TextUtils.isEmpty(eVarD.I())) {
                    return;
                }
                String unused2 = ApmHelper.b = initConfig.getAppId();
                String[] strArr = {"com.bytedance.sdk.component", "com.bytedance.sdk.mediation", BuildConfig.LIBRARY_PACKAGE_NAME, "com.com.bytedance.overseas.sdk", "com.pgl.ssdk.ces", "com.bykv.vk", "com.iab.omid.library.bytedance2"};
                String strA = j.a(context);
                String strI = eVarD.I();
                try {
                    final MonitorCrash monitorCrashInitSDK = MonitorCrash.initSDK(context, "10000001", 5604L, BuildConfig.VERSION_NAME, strArr);
                    monitorCrashInitSDK.setCustomDataCallback(new AttachUserData() { // from class: com.bytedance.sdk.openadsdk.ApmHelper.1.1
                        @Override // com.apm.insight.AttachUserData
                        @Nullable
                        public Map<? extends String, ? extends String> getUserData(CrashType crashType) {
                            Map<? extends String, ? extends String> mapI = ApmHelper.i();
                            if (mapI.containsKey("render_type")) {
                                monitorCrashInitSDK.addTags("render_type", mapI.get("render_type"));
                            } else {
                                monitorCrashInitSDK.addTags("render_type", "-2");
                            }
                            return mapI;
                        }
                    });
                    if (eVarD.ag()) {
                        monitorCrashInitSDK.config().setSoList(new String[]{"libnms.so", "libtobEmbedPagEncrypt.so"});
                    }
                    monitorCrashInitSDK.config().setDeviceId(strA);
                    monitorCrashInitSDK.setReportUrl(strI);
                    monitorCrashInitSDK.addTags("host_appid", ApmHelper.b);
                    monitorCrashInitSDK.addTags("sdk_version", BuildConfig.VERSION_NAME);
                    monitorCrashInitSDK.config().setChannel(ApmHelper.j());
                    b unused3 = ApmHelper.f1105e = new b() { // from class: com.bytedance.sdk.openadsdk.ApmHelper.1.2
                        @Override // com.bytedance.sdk.openadsdk.ApmHelper.b
                        public void a(String str, String str2, Throwable th) {
                            monitorCrashInitSDK.reportCustomErr(str, str2, th);
                        }
                    };
                    boolean unused4 = ApmHelper.a = true;
                    ApmHelper.c(strA, strI);
                    monitorCrashInitSDK.registerCrashCallback(new ICrashCallback() { // from class: com.bytedance.sdk.openadsdk.ApmHelper.1.3
                        @Override // com.apm.insight.ICrashCallback
                        public void onCrash(@NonNull CrashType crashType, @Nullable String str, @Nullable Thread thread) {
                            if (!ApmHelper.f1104d) {
                                ApmHelper.d(crashType.getName());
                            }
                            boolean unused5 = ApmHelper.f1104d = true;
                        }
                    }, CrashType.ALL);
                    a aVar = ApmHelper.f1106f;
                    a unused5 = ApmHelper.f1106f = null;
                    if (aVar != null) {
                        ApmHelper.f1105e.a(aVar.a, aVar.b, aVar.c);
                    }
                } catch (Throwable unused6) {
                    l.d("ApmHelper", "init Apm fail or not include Apm module");
                    boolean unused7 = ApmHelper.a = false;
                }
            }
        });
    }

    public static boolean isIsInit() {
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String j() {
        e eVarD = o.d();
        return eVarD != null ? eVarD.l() ? "support_mem_dynamic_1" : "support_mem_dynamic_0" : "release";
    }

    public static void reportCustomError(String str, String str2, Throwable th) {
        b bVar = f1105e;
        if (bVar != null) {
            bVar.a(str, str2, th);
        } else {
            f1106f = new a(str, str2, th);
        }
    }

    public static void reportPvFromBackGround() {
        if (c) {
            b(j.a(o.a()), o.d().I());
        }
    }
}
