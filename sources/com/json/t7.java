package com.json;

import com.json.sdk.utils.SDKUtils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class t7 {
    private String a;
    private boolean b = false;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private y5 f6635d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, String> f6636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final y9 f6637f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f6638g;

    public t7(String str, y9 y9Var) throws NullPointerException {
        this.a = SDKUtils.requireNonEmptyOrNull(str, "Instance name can't be null");
        this.f6637f = (y9) SDKUtils.requireNonNull(y9Var, "AdListener name can't be null");
    }

    public s7 a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", this.a);
            jSONObject.put("rewarded", this.b);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return new s7((this.c || this.f6638g) ? b8.a() : b8.a(jSONObject), this.a, this.b, this.c, this.f6638g, this.f6636e, this.f6637f, this.f6635d);
    }

    public t7 a(y5 y5Var) {
        this.f6635d = y5Var;
        return this;
    }

    public t7 a(Map<String, String> map) {
        this.f6636e = map;
        return this;
    }

    public t7 a(boolean z) {
        this.c = z;
        return this;
    }

    public t7 b() {
        this.b = true;
        return this;
    }

    public t7 b(boolean z) {
        this.f6638g = z;
        return this;
    }
}
