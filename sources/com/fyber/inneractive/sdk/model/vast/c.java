package com.fyber.inneractive.sdk.model.vast;

import com.applovin.sdk.AppLovinEventTypes;
import com.fyber.inneractive.sdk.util.IAlog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c implements com.fyber.inneractive.sdk.response.i {
    public h a;
    public i b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f2079f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f2080g;
    public Map<t, List<String>> h = new HashMap();

    public c(h hVar, int i, int i2, String str) {
        this.a = hVar;
        this.c = i;
        this.f2077d = i2;
        this.f2078e = str;
    }

    @Override // com.fyber.inneractive.sdk.response.i
    public List<String> a(t tVar) {
        Map<t, List<String>> map = this.h;
        if (map == null) {
            return null;
        }
        return map.get(tVar);
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("w", this.c);
            jSONObject.put("h", this.f2077d);
            jSONObject.put("type", this.a.toString());
            i iVar = this.b;
            jSONObject.put("creativeType", iVar != null ? iVar.e() : "none");
            jSONObject.put(AppLovinEventTypes.USER_VIEWED_CONTENT, this.f2079f);
        } catch (JSONException e2) {
            IAlog.a("Vast Parser: Failed creating Companion json object: %s", e2.getMessage());
        }
        return jSONObject;
    }

    public void a(t tVar, String str) {
        List<String> arrayList = this.h.get(tVar);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.h.put(tVar, arrayList);
        }
        arrayList.add(str);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Companion: ");
        sb.append(" w:");
        sb.append(this.c);
        sb.append(" h:");
        sb.append(this.f2077d);
        sb.append(" type:");
        sb.append(this.a.toString());
        sb.append(" creativeType: ");
        i iVar = this.b;
        sb.append(iVar != null ? iVar.e() : "none");
        sb.append(" ctr:");
        sb.append(this.f2080g);
        sb.append(" events:");
        sb.append(this.h);
        return sb.toString();
    }
}
