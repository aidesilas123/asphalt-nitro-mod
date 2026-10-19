package com.json.sdk.controller;

import android.app.Activity;
import android.content.Context;
import com.json.da;
import com.json.h6;
import com.json.j3;
import com.json.q5;
import com.json.sdk.controller.f;
import com.json.sdk.controller.k;
import com.json.x2;
import com.json.y2;
import com.json.z2;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class m implements com.json.sdk.controller.k {
    private final q5 a;
    private final String b;

    class a implements Runnable {
        final /* synthetic */ y2 a;
        final /* synthetic */ j3 b;

        a(y2 y2Var, j3 j3Var) {
            this.a = y2Var;
            this.b = j3Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.b(this.b.h(), m.this.b);
        }
    }

    class b implements Runnable {
        final /* synthetic */ x2 a;
        final /* synthetic */ Map b;

        b(x2 x2Var, Map map) {
            this.a = x2Var;
            this.b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a((String) this.b.get("demandSourceName"), m.this.b);
        }
    }

    class c implements Runnable {
        final /* synthetic */ x2 a;
        final /* synthetic */ JSONObject b;

        c(x2 x2Var, JSONObject jSONObject) {
            this.a = x2Var;
            this.b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(this.b.optString("demandSourceName"), m.this.b);
        }
    }

    class d implements Runnable {
        final /* synthetic */ k.a a;
        final /* synthetic */ f.MessageToController b;

        d(k.a aVar, f.MessageToController messageToController) {
            this.a = aVar;
            this.b = messageToController;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.a == null) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("success", false);
                jSONObject.put("reason", m.this.b);
                this.a.a(new f.CallbackToNative(this.b.getMsgId(), jSONObject));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    class e implements Runnable {
        final /* synthetic */ da a;

        e(da daVar) {
            this.a = daVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.onOfferwallInitFail(m.this.b);
        }
    }

    class f implements Runnable {
        final /* synthetic */ da a;

        f(da daVar) {
            this.a = daVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.onOWShowFail(m.this.b);
            this.a.onOfferwallInitFail(m.this.b);
        }
    }

    class g implements Runnable {
        final /* synthetic */ da a;

        g(da daVar) {
            this.a = daVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.onGetOWCreditsFailed(m.this.b);
        }
    }

    class h implements Runnable {
        final /* synthetic */ z2 a;
        final /* synthetic */ j3 b;

        h(z2 z2Var, j3 j3Var) {
            this.a = z2Var;
            this.b = j3Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(h6.e.RewardedVideo, this.b.h(), m.this.b);
        }
    }

    class i implements Runnable {
        final /* synthetic */ z2 a;
        final /* synthetic */ JSONObject b;

        i(z2 z2Var, JSONObject jSONObject) {
            this.a = z2Var;
            this.b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.d(this.b.optString("demandSourceName"), m.this.b);
        }
    }

    class j implements Runnable {
        final /* synthetic */ y2 a;
        final /* synthetic */ j3 b;

        j(y2 y2Var, j3 j3Var) {
            this.a = y2Var;
            this.b = j3Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(h6.e.Interstitial, this.b.h(), m.this.b);
        }
    }

    class k implements Runnable {
        final /* synthetic */ y2 a;
        final /* synthetic */ String b;

        k(y2 y2Var, String str) {
            this.a = y2Var;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.c(this.b, m.this.b);
        }
    }

    class l implements Runnable {
        final /* synthetic */ y2 a;
        final /* synthetic */ j3 b;

        l(y2 y2Var, j3 j3Var) {
            this.a = y2Var;
            this.b = j3Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.c(this.b.h(), m.this.b);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.sdk.controller.m$m, reason: collision with other inner class name */
    class RunnableC0367m implements Runnable {
        final /* synthetic */ y2 a;
        final /* synthetic */ JSONObject b;

        RunnableC0367m(y2 y2Var, JSONObject jSONObject) {
            this.a = y2Var;
            this.b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.b(this.b.optString("demandSourceName"), m.this.b);
        }
    }

    m(String str, q5 q5Var) {
        this.a = q5Var;
        this.b = str;
    }

    @Override // com.json.sdk.controller.k
    public void a(Activity activity) {
    }

    @Override // com.json.sdk.controller.k
    public void a(Context context) {
    }

    @Override // com.json.sdk.controller.k
    public void a(j3 j3Var) {
    }

    @Override // com.json.sdk.controller.k
    public void a(j3 j3Var, Map<String, String> map, x2 x2Var) {
        if (x2Var != null) {
            b(new b(x2Var, map));
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(j3 j3Var, Map<String, String> map, y2 y2Var) {
        if (y2Var != null) {
            b(new a(y2Var, j3Var));
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(f.MessageToController messageToController, k.a aVar) {
        b(new d(aVar, messageToController));
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, y2 y2Var) {
        if (y2Var != null) {
            b(new k(y2Var, str));
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, da daVar) {
        if (daVar != null) {
            b(new g(daVar));
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, j3 j3Var, x2 x2Var) {
        if (x2Var != null) {
            x2Var.a(h6.e.Banner, j3Var.h(), this.b);
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, j3 j3Var, y2 y2Var) {
        if (y2Var != null) {
            b(new j(y2Var, j3Var));
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, j3 j3Var, z2 z2Var) {
        if (z2Var != null) {
            b(new h(z2Var, j3Var));
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, Map<String, String> map, da daVar) {
        if (daVar != null) {
            b(new e(daVar));
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(Map<String, String> map, da daVar) {
        if (daVar != null) {
            b(new f(daVar));
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(JSONObject jSONObject) {
    }

    @Override // com.json.sdk.controller.k
    public void a(JSONObject jSONObject, x2 x2Var) {
        if (x2Var != null) {
            b(new c(x2Var, jSONObject));
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(JSONObject jSONObject, y2 y2Var) {
        if (y2Var != null) {
            b(new RunnableC0367m(y2Var, jSONObject));
        }
    }

    @Override // com.json.sdk.controller.k
    public void a(JSONObject jSONObject, z2 z2Var) {
        if (z2Var != null) {
            b(new i(z2Var, jSONObject));
        }
    }

    @Override // com.json.sdk.controller.k
    public boolean a(String str) {
        return false;
    }

    @Override // com.json.sdk.controller.k
    public void b() {
    }

    @Override // com.json.sdk.controller.k
    public void b(Context context) {
    }

    @Override // com.json.sdk.controller.k
    public void b(j3 j3Var, Map<String, String> map, y2 y2Var) {
        if (y2Var != null) {
            b(new l(y2Var, j3Var));
        }
    }

    void b(Runnable runnable) {
        q5 q5Var = this.a;
        if (q5Var != null) {
            q5Var.b(runnable);
        }
    }

    @Override // com.json.sdk.controller.k
    public void b(JSONObject jSONObject) {
    }

    @Override // com.json.sdk.controller.k
    public void c() {
    }

    @Override // com.json.sdk.controller.k
    public void d() {
    }

    @Override // com.json.sdk.controller.k
    public void destroy() {
    }

    @Override // com.json.sdk.controller.k
    public h6.c e() {
        return h6.c.Native;
    }

    @Override // com.json.sdk.controller.k
    public void f() {
    }
}
