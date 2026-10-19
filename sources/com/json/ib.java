package com.json;

import android.app.Activity;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public interface ib {
    void a(Activity activity);

    void a(Activity activity, Map<String, String> map);

    void a(String str, String str2, int i);

    void a(String str, String str2, da daVar);

    void a(String str, String str2, String str3, Map<String, String> map, aa aaVar);

    void a(String str, String str2, String str3, Map<String, String> map, ga gaVar);

    void a(String str, String str2, Map<String, String> map, da daVar);

    void a(JSONObject jSONObject);

    boolean a(String str);

    void b(JSONObject jSONObject);

    void c(JSONObject jSONObject);

    void d(JSONObject jSONObject);

    void onPause(Activity activity);

    void onResume(Activity activity);
}
