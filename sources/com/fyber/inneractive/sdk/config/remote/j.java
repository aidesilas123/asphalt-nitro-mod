package com.fyber.inneractive.sdk.config.remote;

import com.fyber.inneractive.sdk.config.enums.Orientation;
import com.fyber.inneractive.sdk.config.enums.Skip;
import com.fyber.inneractive.sdk.config.enums.TapAction;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class j {
    public Boolean a;
    public Integer b;
    public Integer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Skip f1980d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Boolean f1981e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TapAction f1982f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Orientation f1983g;
    public Integer h;
    public Integer i;
    public UnitDisplayType j;
    public List<Integer> k = new ArrayList();

    public static j a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        j jVar = new j();
        Integer numValueOf = Integer.valueOf(jSONObject.optInt("maxBitrate", Integer.MIN_VALUE));
        Integer numValueOf2 = Integer.valueOf(jSONObject.optInt("minBitrate", Integer.MIN_VALUE));
        Integer numValueOf3 = Integer.valueOf(jSONObject.optInt("pivotBitrate", Integer.MIN_VALUE));
        Integer numValueOf4 = Integer.valueOf(jSONObject.optInt("padding", Integer.MIN_VALUE));
        if (numValueOf.intValue() == Integer.MIN_VALUE) {
            numValueOf = null;
        }
        jVar.b = numValueOf;
        if (numValueOf2.intValue() == Integer.MIN_VALUE) {
            numValueOf2 = null;
        }
        jVar.c = numValueOf2;
        jVar.f1980d = Skip.fromValue(Integer.valueOf(jSONObject.optInt("skip", Integer.MIN_VALUE)));
        jVar.f1981e = jSONObject.has("muted") ? Boolean.valueOf(jSONObject.optBoolean("muted", true)) : null;
        jVar.a = jSONObject.has("autoPlay") ? Boolean.valueOf(jSONObject.optBoolean("autoPlay", true)) : null;
        jVar.f1983g = Orientation.fromValue(jSONObject.optString("orientation"));
        jVar.f1982f = TapAction.fromValue(jSONObject.optString("tap"));
        if (numValueOf3.intValue() == Integer.MIN_VALUE) {
            numValueOf3 = null;
        }
        jVar.h = numValueOf3;
        jVar.i = numValueOf4.intValue() != Integer.MIN_VALUE ? numValueOf4 : null;
        jVar.j = UnitDisplayType.fromValue(jSONObject.optString("unitDisplayType"));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("filterApi");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                int iOptInt = jSONArrayOptJSONArray.optInt(i, Integer.MIN_VALUE);
                if (iOptInt != Integer.MIN_VALUE) {
                    jVar.k.add(Integer.valueOf(iOptInt));
                }
            }
        }
        return jVar;
    }
}
