package com.json.mediationsdk.utils;

import android.text.TextUtils;
import com.json.mediationsdk.model.NetworkSettings;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class d {
    private NetworkSettings b;
    private ArrayList<String> a = new ArrayList<>();
    private JSONObject c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6405d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6406e = true;

    d() {
    }

    public static d a() {
        return new d();
    }

    public void a(NetworkSettings networkSettings) {
        this.b = networkSettings;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.add(str);
    }

    public void a(JSONObject jSONObject) {
        this.c = jSONObject;
    }

    public void a(boolean z) {
        this.f6406e = z;
    }

    public JSONObject b() {
        return this.c;
    }

    public void b(boolean z) {
        this.f6405d = z;
    }

    public NetworkSettings c() {
        return this.b;
    }

    public ArrayList<String> d() {
        return this.a;
    }

    public boolean e() {
        return this.f6406e;
    }

    public boolean f() {
        return this.f6405d;
    }
}
