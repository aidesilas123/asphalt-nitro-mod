package com.bytedance.sdk.openadsdk.core.e;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.core.o;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: SecSdkHelperUtil.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    private static boolean a;

    public static Map<String, String> a(String str, String str2) {
        if (o.d().S()) {
            return b.a().a(str, str2 != null ? str2.getBytes() : new byte[0]);
        }
        return new HashMap();
    }

    public static void a() {
        if (!a && o.d().S()) {
            b.a();
            a = b.a().b();
        }
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str) && o.d().S()) {
            b.a().a(str);
        }
    }

    public static void a(JSONObject jSONObject) {
        if (jSONObject != null && o.d().S()) {
            try {
                jSONObject.put("sec_did", b.a().c());
                String strA = e.a(jSONObject.toString());
                Map<String, String> mapA = b.a().a("https://api16-access-sg.pangle.io/api/ad/union/sdk/get_ads/?aid=1371&device_platform=android&version_code=4250", strA != null ? strA.getBytes() : new byte[0]);
                if (mapA == null || mapA.size() <= 0) {
                    return;
                }
                for (String str : mapA.keySet()) {
                    jSONObject.put(str, mapA.get(str));
                }
                jSONObject.put("url", "https://api16-access-sg.pangle.io/api/ad/union/sdk/get_ads/?aid=1371&device_platform=android&version_code=4250");
                jSONObject.put("pangle_m", strA);
            } catch (JSONException e2) {
                l.e("SecSdkHelperUtil", e2.getMessage());
            }
        }
    }

    public static void b() {
        if (o.d().S()) {
            b.a().c("AdShow");
        }
    }

    public static void b(String str) {
        if (TextUtils.isEmpty(str) || !o.d().S()) {
            return;
        }
        b.a().b(str);
    }

    public static String c() {
        if (o.d().S()) {
            return b.a().c();
        }
        return null;
    }
}
