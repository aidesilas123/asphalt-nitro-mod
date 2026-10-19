package com.bytedance.sdk.component.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.component.sdk.annotation.AnyThread;
import com.bytedance.component.sdk.annotation.MainThread;
import com.bytedance.sdk.component.a.g;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: AbstractBridge.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    protected Context a;
    protected m b;
    protected h c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f613e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    g f615g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Handler f612d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected volatile boolean f614f = false;
    private final Map<String, g> h = new HashMap();

    protected a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public q a(JSONObject jSONObject) {
        String strOptString;
        if (this.f614f) {
            return null;
        }
        String strOptString2 = jSONObject.optString("__callback_id");
        String strOptString3 = jSONObject.optString("func");
        String strA = a();
        if (strA == null) {
            m mVar = this.b;
            if (mVar != null) {
                mVar.a(null, null, 3);
            }
            return null;
        }
        try {
            String string = jSONObject.getString("__msg_type");
            try {
                Object objOpt = jSONObject.opt("params");
                strOptString = objOpt != null ? objOpt instanceof JSONObject ? String.valueOf((JSONObject) objOpt) : objOpt instanceof String ? (String) objOpt : String.valueOf(objOpt) : "";
            } catch (Throwable unused) {
                strOptString = jSONObject.optString("params");
            }
            return q.a().a(jSONObject.getString("JSSDK")).b(string).c(strOptString3).d(strOptString).e(strOptString2).f(jSONObject.optString("namespace")).g(jSONObject.optString("__iframe_url")).a();
        } catch (JSONException e2) {
            i.b("Failed to create call.", e2);
            m mVar2 = this.b;
            if (mVar2 != null) {
                mVar2.a(strA, strOptString3, 1);
            }
            return q.a(strOptString2, -1);
        }
    }

    private g b(String str) {
        return (TextUtils.equals(str, this.f613e) || TextUtils.isEmpty(str)) ? this.f615g : this.h.get(str);
    }

    protected abstract Context a(j jVar);

    protected abstract String a();

    final void a(j jVar, v vVar) {
        this.a = a(jVar);
        this.c = jVar.f621d;
        this.b = jVar.i;
        this.f615g = new g(jVar, this, vVar);
        this.f613e = jVar.k;
        b(jVar);
    }

    @MainThread
    protected final void a(q qVar) {
        String strA;
        if (this.f614f || (strA = a()) == null) {
            return;
        }
        g gVarB = b(qVar.f628g);
        if (gVarB == null) {
            i.b("Received call with unknown namespace, " + qVar);
            m mVar = this.b;
            if (mVar != null) {
                mVar.a(a(), qVar.f625d, 2);
            }
            b(y.a(new s(-4, "Namespace " + qVar.f628g + " unknown.")), qVar);
            return;
        }
        f fVar = new f();
        fVar.b = strA;
        fVar.a = this.a;
        fVar.c = gVarB;
        try {
            g.a aVarA = gVarB.a(qVar, fVar);
            if (aVarA != null) {
                if (aVarA.a) {
                    b(aVarA.b, qVar);
                }
                m mVar2 = this.b;
                if (mVar2 != null) {
                    mVar2.a(a(), qVar.f625d);
                    return;
                }
                return;
            }
            i.b("Received call but not registered, " + qVar);
            m mVar3 = this.b;
            if (mVar3 != null) {
                mVar3.a(a(), qVar.f625d, 2);
            }
            b(y.a(new s(-2, "Function " + qVar.f625d + " is not registered.")), qVar);
        } catch (Exception e2) {
            i.a("call finished with error, " + qVar, e2);
            b(y.a(e2), qVar);
        }
    }

    @AnyThread
    protected abstract void a(String str);

    protected void a(String str, q qVar) {
        a(str);
    }

    protected void b() {
        this.f615g.a();
        Iterator<g> it = this.h.values().iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.f612d.removeCallbacksAndMessages(null);
        this.f614f = true;
    }

    protected abstract void b(j jVar);

    final void b(String str, q qVar) {
        JSONObject jSONObject;
        if (this.f614f) {
            return;
        }
        if (TextUtils.isEmpty(qVar.f627f)) {
            i.a("By passing js callback due to empty callback: " + str);
            return;
        }
        if (!str.startsWith("{") || !str.endsWith("}")) {
            i.a(new IllegalArgumentException("Illegal callback data: " + str));
        }
        i.a("Invoking js callback: " + qVar.f627f);
        try {
            jSONObject = new JSONObject(str);
        } catch (Exception unused) {
            jSONObject = new JSONObject();
        }
        a(p.a().a("__msg_type", "callback").a("__callback_id", qVar.f627f).a("__params", jSONObject).b(), qVar);
    }

    protected void invokeMethod(final String str) {
        if (this.f614f) {
            return;
        }
        i.a("Received call: " + str);
        this.f612d.post(new Runnable() { // from class: com.bytedance.sdk.component.a.a.1
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f614f) {
                    return;
                }
                q qVarA = null;
                try {
                    qVarA = a.this.a(new JSONObject(str));
                } catch (Exception e2) {
                    i.b("Exception thrown while parsing function.", e2);
                }
                if (!q.a(qVarA)) {
                    a.this.a(qVarA);
                    return;
                }
                i.a("By pass invalid call: " + qVarA);
                if (qVarA != null) {
                    a.this.b(y.a(new s(qVarA.a, "Failed to parse invocation.")), qVarA);
                }
            }
        });
    }
}
