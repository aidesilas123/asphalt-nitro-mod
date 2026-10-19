package com.com.bytedance.overseas.sdk.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.b.l;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.drive.DriveFile;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: AndroidRGPDownLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends b {
    public a(Context context, q qVar, String str) {
        super(context, qVar, str);
    }

    private static void a(q qVar, Map<String, Object> map) {
        if (map == null) {
            return;
        }
        if (qVar != null && qVar.be() == 0) {
            map.put("auto_click", Boolean.valueOf(!qVar.c()));
        }
        map.put("can_query_install", 0);
    }

    public static boolean a(q qVar, String str, Context context, String str2, Map<String, Object> map) {
        Intent intentA;
        if (qVar != null && qVar.ap() == 0) {
            return false;
        }
        try {
            if (TextUtils.isEmpty(str) || (intentA = ac.a(context, str)) == null) {
                return false;
            }
            intentA.putExtra("START_ONLY_FOR_ANDROID", true);
            if (!(context instanceof Activity)) {
                intentA.addFlags(DriveFile.MODE_READ_ONLY);
            }
            context.startActivity(intentA);
            if (map == null) {
                map = new HashMap<>();
            }
            a(qVar, map);
            com.bytedance.sdk.openadsdk.b.c.a(qVar, str2, "click_open", map);
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean a(String str, Context context, String str2, q qVar, Map<String, Object> map) {
        Intent intent = null;
        try {
        } catch (Throwable th) {
            th = th;
        }
        if (TextUtils.isEmpty(str)) {
            com.bytedance.sdk.openadsdk.core.d.a(qVar, str2, -2, null);
            return false;
        }
        Uri uri = Uri.parse(str);
        Intent intent2 = new Intent("android.intent.action.VIEW");
        try {
            intent2.setData(uri);
            if (!(context instanceof Activity)) {
                intent2.addFlags(DriveFile.MODE_READ_ONLY);
            }
            if (map == null) {
                map = new HashMap<>();
            }
            a(qVar, map);
            map.put("url", str);
            com.bytedance.sdk.openadsdk.b.c.a(qVar, str2, "open_url_app", map);
            context.startActivity(intent2);
            l.a().a(map).a(qVar, str2);
            com.bytedance.sdk.openadsdk.b.c.a("dp_start_act_success", qVar, str2, map);
            return true;
        } catch (Throwable th2) {
            th = th2;
            intent = intent2;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("exception", th.getMessage());
                if (intent != null) {
                    jSONObject.put(SDKConstants.PARAM_INTENT, intent.toString());
                }
                jSONObject.put("can_query_install", 0);
            } catch (Exception unused) {
            }
            com.bytedance.sdk.openadsdk.core.d.a(qVar, str2, -4, jSONObject);
            return false;
        }
    }

    @Override // com.com.bytedance.overseas.sdk.a.b, com.com.bytedance.overseas.sdk.a.c
    public boolean a() {
        if (this.a == null) {
            return false;
        }
        HashMap map = null;
        q qVar = this.b;
        if (qVar != null && qVar.be() == 0) {
            map = new HashMap();
            map.put("dpl_probability_jump", Boolean.valueOf(this.f1883g >= 11));
        }
        return a(this.b, this.a.c(), c(), this.c, map);
    }

    @Override // com.com.bytedance.overseas.sdk.a.b
    public boolean b() {
        com.bytedance.sdk.openadsdk.core.d.a(this.b, this.c, 1, null);
        if (this.b.ab() != null) {
            HashMap map = new HashMap();
            q qVar = this.b;
            if (qVar != null && qVar.be() == 0) {
                map.put("dpl_probability_jump", Boolean.valueOf(this.f1883g >= 11));
            }
            if (a(this.b.ab().a(), c(), this.c, this.b, map)) {
                return true;
            }
            if (!this.f1881d || this.f1882f.get()) {
                this.f1881d = true;
                a(this.b, map);
                com.bytedance.sdk.openadsdk.b.c.a(this.b, this.c, "open_fallback_url", map);
            }
        } else {
            com.bytedance.sdk.openadsdk.core.d.a(this.b, this.c, -1, null);
        }
        return false;
    }
}
