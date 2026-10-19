package com.bytedance.sdk.openadsdk.core.model;

import com.facebook.internal.NativeProtocol;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONObject;

/* JADX INFO: compiled from: AppInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    private String a = "";
    private String b = "";
    private String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f1555d = -1.0d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1556e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1557f;

    public String a() {
        return this.a;
    }

    public void a(double d2) {
        if (d2 < 1.0d || d2 > 5.0d) {
            this.f1555d = -1.0d;
        } else {
            this.f1555d = d2;
        }
    }

    public void a(int i) {
        if (i <= 0) {
            this.f1556e = -1;
        } else {
            this.f1556e = i;
        }
    }

    public void a(String str) {
        this.a = str;
    }

    public String b() {
        return this.b;
    }

    public void b(int i) {
        this.f1557f = i;
    }

    public void b(String str) {
        this.b = str;
    }

    public String c() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    public double d() {
        return this.f1555d;
    }

    public int e() {
        return this.f1556e;
    }

    public int f() {
        return this.f1557f;
    }

    public JSONObject g() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NativeProtocol.BRIDGE_ARG_APP_NAME_STRING, b());
            jSONObject.put(CampaignEx.JSON_KEY_APP_SIZE, f());
            jSONObject.put("comment_num", e());
            jSONObject.put(DownloadModel.DOWNLOAD_URL, a());
            jSONObject.put("package_name", c());
            jSONObject.put("score", d());
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.d(e2.toString());
        }
        return jSONObject;
    }
}
