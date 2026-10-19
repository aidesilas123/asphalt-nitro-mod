package com.json.sdk.controller;

import android.app.Activity;
import android.content.Context;
import com.json.MessageToNative;
import com.json.da;
import com.json.h6;
import com.json.j3;
import com.json.sdk.controller.f;
import com.json.x2;
import com.json.y2;
import com.json.z2;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public interface k {

    public interface a {
        void a(f.CallbackToNative callbackToNative);
    }

    public interface b {
        void a(MessageToNative messageToNative);
    }

    void a(Activity activity);

    void a(Context context);

    void a(j3 j3Var);

    void a(j3 j3Var, Map<String, String> map, x2 x2Var);

    void a(j3 j3Var, Map<String, String> map, y2 y2Var);

    void a(f.MessageToController messageToController, a aVar);

    void a(String str, y2 y2Var);

    void a(String str, String str2, da daVar);

    void a(String str, String str2, j3 j3Var, x2 x2Var);

    void a(String str, String str2, j3 j3Var, y2 y2Var);

    void a(String str, String str2, j3 j3Var, z2 z2Var);

    void a(String str, String str2, Map<String, String> map, da daVar);

    void a(Map<String, String> map, da daVar);

    void a(JSONObject jSONObject);

    void a(JSONObject jSONObject, x2 x2Var);

    void a(JSONObject jSONObject, y2 y2Var);

    void a(JSONObject jSONObject, z2 z2Var);

    boolean a(String str);

    void b();

    void b(Context context);

    void b(j3 j3Var, Map<String, String> map, y2 y2Var);

    void b(JSONObject jSONObject);

    @Deprecated
    void c();

    void d();

    void destroy();

    h6.c e();

    void f();
}
