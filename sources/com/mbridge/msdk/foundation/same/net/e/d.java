package com.mbridge.msdk.foundation.same.net.e;

import com.mbridge.msdk.foundation.same.net.l;
import com.mbridge.msdk.foundation.tools.aa;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: JsonObjectRequest.java */
/* JADX INFO: loaded from: classes4.dex */
public class d extends e<JSONObject> {
    private static final String c = d.class.getSimpleName();

    public d(int i, String str, String str2, com.mbridge.msdk.foundation.same.net.e<JSONObject> eVar) {
        super(i, str, str2, eVar);
    }

    public d(int i, String str, String str2, com.mbridge.msdk.foundation.same.net.e<JSONObject> eVar, boolean z) {
        super(i, str, str2, eVar, z);
    }

    @Override // com.mbridge.msdk.foundation.same.net.j
    protected final l<JSONObject> a(com.mbridge.msdk.foundation.same.net.f.c cVar) {
        try {
            return cVar.a == 204 ? l.a(new JSONObject(), cVar) : l.a(new JSONObject(new String(cVar.b, com.mbridge.msdk.foundation.same.net.g.b.a(cVar.f7145d))), cVar);
        } catch (UnsupportedEncodingException e2) {
            aa.d(c, e2.getMessage());
            return l.a(new com.mbridge.msdk.foundation.same.net.b.a(8, cVar));
        } catch (JSONException e3) {
            aa.d(c, e3.getMessage());
            return l.a(new com.mbridge.msdk.foundation.same.net.b.a(8, cVar));
        }
    }
}
