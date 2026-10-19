package com.pgl.ssdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.json.o2;
import com.json.v4;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class y {
    static int a = 504;
    static String b = null;
    static String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Context f7721d;

    public static String a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(v4.x, o2.f6459e);
            jSONObject.put("version", "1.0.0.3.overseas-rc.4");
            String str = c;
            if (str == null || str.length() <= 0) {
                try {
                    jSONObject.put("token_id", com.pgl.ssdk.ces.a.meta(303, f7721d, null));
                } catch (Throwable unused) {
                    jSONObject.put("token_id", "");
                }
            } else {
                jSONObject.put("token_id", c);
            }
            jSONObject.put("code", a);
            return Base64.encodeToString(jSONObject.toString().getBytes(), 2);
        } catch (Throwable unused2) {
            return "";
        }
    }

    public static void a(Context context, String str, D d2) {
        if (f7721d == null) {
            f7721d = context;
        }
        int i = a;
        if (i == 102 || i == 202 || i == 200) {
            return;
        }
        System.currentTimeMillis();
        b = str;
        a = 102;
        r rVarB = u.a().b();
        if (rVarB != null) {
            rVarB.post(new B(context, d2));
        }
    }

    public static String b() {
        if (TextUtils.isEmpty(c)) {
            c = (String) com.pgl.ssdk.ces.a.meta(303, f7721d, null);
        }
        return c;
    }

    public static void c() {
        if (f7721d != null) {
            a = 102;
            u.a().b().post(new B(f7721d, null));
        }
    }
}
