package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: JsConfiglInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    public static final f a = new f(null);
    public static String b = "";
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1675d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1676e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1677f;

    public f(String str) {
        this.c = "https://lf3-cdn-tos.bytegoofy.com/obj/goofy/bytecom/resource/tetrisIAB/3p_monitor.2424fa46.js";
        this.f1675d = true;
        this.f1676e = true;
        this.f1677f = true;
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("performance_js");
            String strOptString = jSONObjectOptJSONObject.optString("url", "https://lf3-cdn-tos.bytegoofy.com/obj/goofy/bytecom/resource/tetrisIAB/3p_monitor.2424fa46.js");
            if (!TextUtils.isEmpty(strOptString)) {
                this.c = strOptString;
            }
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("execute_time");
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                arrayList.add(jSONArrayOptJSONArray.optString(i));
            }
            this.f1675d = arrayList.contains("load_finish");
            this.f1677f = arrayList.contains("load_fail");
            this.f1676e = arrayList.contains("load");
        } catch (Exception unused) {
        }
    }
}
