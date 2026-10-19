package com.json;

import android.text.TextUtils;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class w9 {
    private ArrayList<x9> a = new ArrayList<>();
    private x9 b;
    private m0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private JSONObject f6720d;

    public w9(m0 m0Var) {
        this.c = m0Var;
    }

    public x9 a() {
        for (x9 x9Var : this.a) {
            if (x9Var.getIsDefault()) {
                return x9Var;
            }
        }
        return this.b;
    }

    public x9 a(String str) {
        for (x9 x9Var : this.a) {
            if (x9Var.getPlacementName().equals(str)) {
                return x9Var;
            }
        }
        return null;
    }

    public void a(x9 x9Var) {
        if (x9Var != null) {
            this.a.add(x9Var);
            if (this.b == null || x9Var.isPlacementId(0)) {
                this.b = x9Var;
            }
        }
    }

    public void a(JSONObject jSONObject) {
        this.f6720d = jSONObject;
    }

    public String b() {
        JSONObject jSONObject = this.f6720d;
        return (jSONObject == null || TextUtils.isEmpty(jSONObject.optString("adapterName"))) ? IronSourceConstants.SUPERSONIC_CONFIG_NAME : this.f6720d.optString("adapterName");
    }

    public m0 c() {
        return this.c;
    }
}
