package com.fyber.inneractive.sdk.config.remote;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.enums.Vendor;
import java.util.LinkedHashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class k {
    public Integer a;
    public Integer b;
    public Set<Vendor> c = null;

    public static k a(JSONObject jSONObject) {
        Vendor vendorFromValue;
        if (jSONObject == null) {
            return null;
        }
        Integer numValueOf = Integer.valueOf(jSONObject.optInt("pausePct", Integer.MIN_VALUE));
        Integer numValueOf2 = Integer.valueOf(jSONObject.optInt("playPct", Integer.MIN_VALUE));
        k kVar = new k();
        if (numValueOf.intValue() == Integer.MIN_VALUE) {
            numValueOf = null;
        }
        kVar.a = numValueOf;
        if (numValueOf2.intValue() == Integer.MIN_VALUE) {
            numValueOf2 = null;
        }
        kVar.b = numValueOf2;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("vendor");
        if (jSONArrayOptJSONArray != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                String strOptString = jSONArrayOptJSONArray.optString(i, null);
                if (!TextUtils.isEmpty(strOptString) && (vendorFromValue = Vendor.fromValue(strOptString)) != null) {
                    linkedHashSet.add(vendorFromValue);
                }
            }
            kVar.c = linkedHashSet;
        }
        return kVar;
    }
}
