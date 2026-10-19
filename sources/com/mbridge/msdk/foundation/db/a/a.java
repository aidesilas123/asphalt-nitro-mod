package com.mbridge.msdk.foundation.db.a;

import com.mbridge.msdk.foundation.db.h;
import com.mbridge.msdk.foundation.db.m;
import com.mbridge.msdk.foundation.same.a.b;
import java.util.Collection;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: ReplaceTempDaoMiddle.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private m a;
    private b b;

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.db.a.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ReplaceTempDaoMiddle.java */
    private static class C0401a {
        private static a a = new a();
    }

    private a() {
        this.b = new b(1000);
        try {
            m mVarA = m.a(h.a(com.mbridge.msdk.foundation.controller.b.d().g()));
            this.a = mVarA;
            a(mVarA.a(), false);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static a a() {
        return C0401a.a;
    }

    public final JSONObject a(String str) {
        m mVar;
        JSONObject jSONObjectB = this.b.b(str);
        if (jSONObjectB != null || (mVar = this.a) == null) {
            return jSONObjectB;
        }
        JSONObject jSONObjectA = mVar.a(str);
        if (jSONObjectA != null) {
            this.b.a(str, jSONObjectA);
        }
        return jSONObjectA;
    }

    public final void a(JSONObject jSONObject, final boolean z) {
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            final b bVar = new b(100);
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                this.b.a(next, jSONObjectOptJSONObject);
                bVar.a(next, jSONObjectOptJSONObject);
            }
            com.mbridge.msdk.foundation.same.f.b.a().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.db.a.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (!z || a.this.a == null) {
                        return;
                    }
                    for (String str : bVar.a()) {
                        a.this.a.a(str, a.this.b.b(str));
                    }
                }
            });
        }
    }

    public final JSONArray b() {
        return new JSONArray((Collection) this.b.a());
    }
}
