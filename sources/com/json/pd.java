package com.json;

import android.text.TextUtils;
import com.json.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
abstract class pd {
    private final String a = "eventId";
    private final String b = "timestamp";
    private final String c = "InterstitialEvents";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6513d = b4.M;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f6514e = b4.M;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    JSONObject f6515f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f6516g;
    private String h;

    pd() {
    }

    private String b(int i) {
        return i != 2 ? b4.M : "InterstitialEvents";
    }

    protected abstract String a();

    public abstract String a(ArrayList<a4> arrayList, JSONObject jSONObject);

    public abstract String c();

    String c(JSONArray jSONArray) {
        try {
            if (this.f6515f != null) {
                JSONObject jSONObject = new JSONObject(this.f6515f.toString());
                jSONObject.put("timestamp", IronSourceUtils.getTimestamp());
                jSONObject.put(b(this.f6516g), jSONArray);
                return jSONObject.toString();
            }
        } catch (Exception unused) {
        }
        return "";
    }

    JSONObject d(a4 a4Var) {
        try {
            JSONObject jSONObject = !TextUtils.isEmpty(a4Var.a()) ? new JSONObject(a4Var.a()) : new JSONObject();
            jSONObject.put("eventId", a4Var.c());
            jSONObject.put("timestamp", a4Var.d());
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    void e(String str) {
        this.h = str;
    }

    String f() {
        return TextUtils.isEmpty(this.h) ? a() : this.h;
    }
}
