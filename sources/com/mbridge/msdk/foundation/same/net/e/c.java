package com.mbridge.msdk.foundation.same.net.e;

import com.mbridge.msdk.foundation.same.net.l;
import com.mbridge.msdk.foundation.tools.aa;
import java.io.UnsupportedEncodingException;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: JsonArrayRequest.java */
/* JADX INFO: loaded from: classes4.dex */
public class c extends e<JSONArray> {
    private static final String c = c.class.getSimpleName();

    public c(int i, String str, String str2, com.mbridge.msdk.foundation.same.net.e<JSONArray> eVar) {
        super(i, str, str2, eVar);
    }

    @Override // com.mbridge.msdk.foundation.same.net.j
    protected final l<JSONArray> a(com.mbridge.msdk.foundation.same.net.f.c cVar) {
        try {
            return l.a(new JSONArray(new String(cVar.b, com.mbridge.msdk.foundation.same.net.g.b.a(cVar.f7145d))), cVar);
        } catch (UnsupportedEncodingException e2) {
            aa.d(c, e2.getMessage());
            return l.a(new com.mbridge.msdk.foundation.same.net.b.a(8, cVar));
        } catch (JSONException e3) {
            aa.d(c, e3.getMessage());
            return l.a(new com.mbridge.msdk.foundation.same.net.b.a(8, cVar));
        }
    }
}
