package com.json;

import android.app.Activity;
import com.json.sdk.controller.e;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public interface a8 extends c8 {
    e a();

    void a(Activity activity);

    @Override // com.json.c8
    /* synthetic */ void a(Activity activity, s7 s7Var, Map<String, String> map);

    @Override // com.json.c8
    /* synthetic */ void a(Activity activity, Map<String, String> map);

    @Override // com.json.c8
    /* synthetic */ void a(da daVar);

    @Override // com.json.c8
    /* synthetic */ void a(s7 s7Var, Map<String, String> map);

    @Override // com.json.c8
    /* synthetic */ void a(Map<String, String> map, da daVar);

    void a(JSONObject jSONObject);

    @Override // com.json.c8
    /* synthetic */ boolean a(s7 s7Var);

    @Override // com.json.c8
    /* synthetic */ void b(Activity activity, s7 s7Var, Map<String, String> map);

    @Override // com.json.c8
    /* synthetic */ void b(s7 s7Var);

    void onPause(Activity activity);

    void onResume(Activity activity);
}
