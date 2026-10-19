package com.applovin.impl.mediation.b;

import androidx.annotation.Nullable;
import com.applovin.impl.sdk.n;
import com.applovin.mediation.MaxAdFormat;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class e extends a {
    protected e(int i, Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, @Nullable com.applovin.impl.mediation.g gVar, n nVar) {
        super(i, map, jSONObject, jSONObject2, gVar, nVar);
    }

    public int yq() {
        MaxAdFormat format = getFormat();
        com.applovin.impl.sdk.c.b<Integer> bVar = format == MaxAdFormat.BANNER ? com.applovin.impl.sdk.c.b.aMt : format == MaxAdFormat.MREC ? com.applovin.impl.sdk.c.b.aMv : format == MaxAdFormat.LEADER ? com.applovin.impl.sdk.c.b.aMx : format == MaxAdFormat.NATIVE ? com.applovin.impl.sdk.c.b.aMz : null;
        if (bVar != null) {
            return getIntFromAdObject("viewability_min_width", ((Integer) this.sdk.a(bVar)).intValue());
        }
        return 0;
    }

    public int yr() {
        MaxAdFormat format = getFormat();
        com.applovin.impl.sdk.c.b<Integer> bVar = format == MaxAdFormat.BANNER ? com.applovin.impl.sdk.c.b.aMu : format == MaxAdFormat.MREC ? com.applovin.impl.sdk.c.b.aMw : format == MaxAdFormat.LEADER ? com.applovin.impl.sdk.c.b.aMy : format == MaxAdFormat.NATIVE ? com.applovin.impl.sdk.c.b.aMA : null;
        if (bVar != null) {
            return getIntFromAdObject("viewability_min_height", ((Integer) this.sdk.a(bVar)).intValue());
        }
        return 0;
    }

    public float ys() {
        return getFloatFromAdObject("viewability_min_alpha", ((Float) this.sdk.a(com.applovin.impl.sdk.c.b.aMB)).floatValue() / 100.0f);
    }

    public int yt() {
        return getIntFromAdObject("viewability_min_pixels", -1);
    }

    public float yu() {
        return getFloatFromAdObject("viewability_min_percentage_dp", -1.0f);
    }

    public float yv() {
        return getFloatFromAdObject("viewability_min_percentage_pixels", -1.0f);
    }

    public boolean yw() {
        return yt() >= 0 || yu() >= 0.0f || yv() >= 0.0f;
    }

    public long yx() {
        return getLongFromAdObject("viewability_timer_min_visible_ms", ((Long) this.sdk.a(com.applovin.impl.sdk.c.b.aMC)).longValue());
    }
}
