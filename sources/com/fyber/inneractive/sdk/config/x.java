package com.fyber.inneractive.sdk.config;

import com.fyber.inneractive.sdk.config.enums.Track;
import com.fyber.inneractive.sdk.util.h0;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class x implements h0.a {
    public Set<Track> a = null;

    @Override // com.fyber.inneractive.sdk.util.h0.a
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        Set<Track> set = this.a;
        if (set != null) {
            Iterator<Track> it = set.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
        }
        h0.a(jSONObject, "track", jSONArray);
        return jSONObject;
    }
}
