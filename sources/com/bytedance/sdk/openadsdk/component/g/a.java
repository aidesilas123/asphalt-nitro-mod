package com.bytedance.sdk.openadsdk.component.g;

import android.content.Context;
import com.bytedance.sdk.component.utils.f;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.utils.h;
import com.facebook.internal.NativeProtocol;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: compiled from: TTAppOpenUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static int a(q qVar, int i) {
        return i - qVar.aC();
    }

    public static File a(Context context, String str, String str2) {
        return f.a(context, b.c(), str, str2);
    }

    public static File a(String str) {
        return new File(CacheDirFactory.getICacheDir(0).b() + File.separator + str);
    }

    public static String a() {
        return h.a();
    }

    public static void a(Context context) {
        try {
            com.bytedance.sdk.openadsdk.component.f.a(context).a();
        } catch (Throwable unused) {
        }
    }

    public static void a(File file) {
        if (file == null) {
            return;
        }
        try {
            f.b(file);
        } catch (Throwable unused) {
        }
    }

    public static void a(JSONObject jSONObject, int i) {
        try {
            String strE = com.bytedance.sdk.openadsdk.core.h.b().e();
            int iF = com.bytedance.sdk.openadsdk.core.h.b().f();
            JSONObject jSONObject2 = jSONObject.getJSONObject("creative");
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(NativeProtocol.BRIDGE_ARG_APP_NAME_STRING, strE);
            jSONObject3.put("app_icon_id", "@" + iF);
            jSONObject2.put("open_app_info", jSONObject3);
            if (jSONObject2.optJSONObject("video") == null) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("video_duration", o.d().u(String.valueOf(i)));
                jSONObject2.put("video", jSONObject4);
            }
        } catch (Exception e2) {
            l.e("TTAppOpenUtils", e2.getMessage());
        }
    }

    public static File b(String str) {
        return a(o.a(), com.bytedance.sdk.openadsdk.component.f.a(o.a()).b(), str);
    }

    public static String b() {
        return f.a(o.a(), b.c(), com.bytedance.sdk.openadsdk.component.f.a(o.a()).b()).getAbsolutePath();
    }
}
