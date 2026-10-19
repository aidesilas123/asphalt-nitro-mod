package com.mbridge.msdk.foundation.same.net.h;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.same.net.l;
import org.json.JSONObject;

/* JADX INFO: compiled from: CommonMBListener.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class c extends com.mbridge.msdk.foundation.same.net.f<JSONObject> {
    private static final String a = "c";

    private void a(l<JSONObject> lVar) {
        JSONObject jSONObject = lVar.a;
        if (jSONObject == null) {
            a("response result is null");
            return;
        }
        int iOptInt = jSONObject.optInt("status", -9999);
        if (iOptInt == -9999) {
            a(lVar.a);
            return;
        }
        if (iOptInt == 1 || iOptInt == 200) {
            a(lVar.a.optJSONObject("data"));
            return;
        }
        String strOptString = lVar.a.optString("msg");
        if (TextUtils.isEmpty(strOptString)) {
            strOptString = "error message is null";
        }
        a(strOptString);
    }

    public abstract void a(String str);

    public abstract void a(JSONObject jSONObject);

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onError(com.mbridge.msdk.foundation.same.net.b.a aVar) {
        a(com.mbridge.msdk.foundation.same.net.g.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onSuccess(l<JSONObject> lVar) {
        if (lVar == null) {
            a("response is null");
            return;
        }
        com.mbridge.msdk.foundation.same.net.f.c cVar = lVar.c;
        if (cVar == null) {
            a(lVar);
        } else if (cVar.a == 204) {
            a(new JSONObject());
        } else {
            a(lVar);
        }
    }
}
