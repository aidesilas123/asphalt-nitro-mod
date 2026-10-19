package com.json.sdk.controller;

import android.content.Context;
import android.text.TextUtils;
import com.json.b6;
import com.json.fd;
import com.json.g6;
import com.json.hb;
import com.json.nd;
import com.json.o2;
import com.json.p8;
import com.json.z5;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class a implements b6 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f6553f = "removeAdView";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f6554g = "webviewAction";
    public static final String h = "handleGetViewVisibility";
    public static final String m = "errMsg";
    private nd a;
    private g6 b = g6.a();
    private Context c;

    private static class b {
        String a;
        JSONObject b;
        String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f6555d;

        private b() {
        }
    }

    public a(Context context) {
        this.c = context;
    }

    private b a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        b bVar = new b();
        bVar.a = jSONObject.optString(o2.f.b);
        bVar.b = jSONObject.optJSONObject(o2.f.c);
        bVar.c = jSONObject.optString("success");
        bVar.f6555d = jSONObject.optString(o2.f.f6481e);
        return bVar;
    }

    public void a(nd ndVar) {
        this.a = ndVar;
    }

    @Override // com.json.b6
    public void a(String str, String str2, String str3) {
        a(str, fd.a(str2, str3));
    }

    @Override // com.json.b6
    public void a(String str, JSONObject jSONObject) {
        if (this.a == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.a.a(str, jSONObject);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    void b(String str, p8 p8Var) throws Exception {
        b bVarA = a(str);
        hb hbVar = new hb();
        try {
            String str2 = bVarA.a;
            byte b2 = -1;
            switch (str2.hashCode()) {
                case -1384357108:
                    if (str2.equals(f6553f)) {
                        b2 = 2;
                    }
                    break;
                case 691453791:
                    if (str2.equals(z5.j)) {
                        b2 = 1;
                    }
                    break;
                case 842351363:
                    if (str2.equals(z5.h)) {
                        b2 = 0;
                    }
                    break;
                case 1182065477:
                    if (str2.equals("handleGetViewVisibility")) {
                        b2 = 3;
                    }
                    break;
                case 1491535759:
                    if (str2.equals(f6554g)) {
                        b2 = 4;
                    }
                    break;
            }
            if (b2 == 0) {
                this.b.a(this, bVarA.b, this.c, bVarA.c, bVarA.f6555d);
                return;
            }
            if (b2 == 1) {
                this.b.d(bVarA.b, bVarA.c, bVarA.f6555d);
                return;
            }
            if (b2 == 2) {
                this.b.c(bVarA.b, bVarA.c, bVarA.f6555d);
            } else if (b2 == 3) {
                this.b.a(bVarA.b, bVarA.c, bVarA.f6555d);
            } else {
                if (b2 != 4) {
                    throw new IllegalArgumentException(String.format("%s | unsupported AdViews API", bVarA.a));
                }
                this.b.b(bVarA.b, bVarA.c, bVarA.f6555d);
            }
        } catch (Exception e2) {
            hbVar.b("errMsg", e2.getMessage());
            String strC = this.b.c(bVarA.b);
            if (!TextUtils.isEmpty(strC)) {
                hbVar.b("adViewId", strC);
            }
            p8Var.a(false, bVarA.f6555d, hbVar);
        }
    }
}
