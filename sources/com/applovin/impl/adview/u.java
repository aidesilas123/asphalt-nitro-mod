package com.applovin.impl.adview;

import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class u {
    private final int aid;
    private final int aie;
    private final int aif;
    private final int aig;
    private final boolean aih;
    private final int aii;
    private final int aij;
    private final int aik;
    private final float ail;
    private final float aim;

    public u(JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        nVar.BN();
        if (com.applovin.impl.sdk.x.Fn()) {
            nVar.BN().g("VideoButtonProperties", "Updating video button properties with JSON = " + JsonUtils.maybeConvertToIndentedString(jSONObject));
        }
        this.aid = JsonUtils.getInt(jSONObject, "width", 64);
        this.aie = JsonUtils.getInt(jSONObject, "height", 7);
        this.aif = JsonUtils.getInt(jSONObject, "margin", 20);
        this.aig = JsonUtils.getInt(jSONObject, "gravity", 85);
        this.aih = JsonUtils.getBoolean(jSONObject, "tap_to_fade", Boolean.FALSE).booleanValue();
        this.aii = JsonUtils.getInt(jSONObject, "tap_to_fade_duration_milliseconds", 500);
        this.aij = JsonUtils.getInt(jSONObject, "fade_in_duration_milliseconds", 500);
        this.aik = JsonUtils.getInt(jSONObject, "fade_out_duration_milliseconds", 500);
        this.ail = JsonUtils.getFloat(jSONObject, "fade_in_delay_seconds", 1.0f);
        this.aim = JsonUtils.getFloat(jSONObject, "fade_out_delay_seconds", 6.0f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        u uVar = (u) obj;
        return this.aid == uVar.aid && this.aie == uVar.aie && this.aif == uVar.aif && this.aig == uVar.aig && this.aih == uVar.aih && this.aii == uVar.aii && this.aij == uVar.aij && this.aik == uVar.aik && Float.compare(uVar.ail, this.ail) == 0 && Float.compare(uVar.aim, this.aim) == 0;
    }

    public int hashCode() {
        int i = ((((((((((((((this.aid * 31) + this.aie) * 31) + this.aif) * 31) + this.aig) * 31) + (this.aih ? 1 : 0)) * 31) + this.aii) * 31) + this.aij) * 31) + this.aik) * 31;
        float f2 = this.ail;
        int iFloatToIntBits = (i + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0)) * 31;
        float f3 = this.aim;
        return iFloatToIntBits + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0);
    }

    public int rW() {
        return this.aid;
    }

    public int rX() {
        return this.aie;
    }

    public int rY() {
        return this.aif;
    }

    public int rZ() {
        return this.aig;
    }

    public boolean sa() {
        return this.aih;
    }

    public long sb() {
        return this.aii;
    }

    public long sc() {
        return this.aij;
    }

    public long sd() {
        return this.aik;
    }

    public float se() {
        return this.ail;
    }

    public float sf() {
        return this.aim;
    }

    public String toString() {
        return "VideoButtonProperties{widthPercentOfScreen=" + this.aid + ", heightPercentOfScreen=" + this.aie + ", margin=" + this.aif + ", gravity=" + this.aig + ", tapToFade=" + this.aih + ", tapToFadeDurationMillis=" + this.aii + ", fadeInDurationMillis=" + this.aij + ", fadeOutDurationMillis=" + this.aik + ", fadeInDelay=" + this.ail + ", fadeOutDelay=" + this.aim + '}';
    }
}
