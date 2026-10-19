package com.applovin.impl.sdk.ad;

import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.x;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: do, reason: not valid java name */
    private final String f9do;
    private final n sdk;

    public enum a {
        UNSPECIFIED("UNSPECIFIED"),
        REGULAR("REGULAR"),
        AD_RESPONSE_JSON("AD_RESPONSE_JSON");

        private final String mTag;

        a(String str) {
            this.mTag = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.mTag;
        }
    }

    public c(String str, n nVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Identifier is empty");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f9do = str;
        this.sdk = nVar;
    }

    private String d(com.applovin.impl.sdk.c.b<String> bVar) {
        for (String str : this.sdk.b(bVar)) {
            if (this.f9do.startsWith(str)) {
                return str;
            }
        }
        return null;
    }

    public a FP() {
        return d(com.applovin.impl.sdk.c.b.aLA) != null ? a.REGULAR : d(com.applovin.impl.sdk.c.b.aLB) != null ? a.AD_RESPONSE_JSON : a.UNSPECIFIED;
    }

    @Nullable
    public String FQ() {
        String strD = d(com.applovin.impl.sdk.c.b.aLA);
        if (!TextUtils.isEmpty(strD)) {
            return strD;
        }
        String strD2 = d(com.applovin.impl.sdk.c.b.aLB);
        if (TextUtils.isEmpty(strD2)) {
            return null;
        }
        return strD2;
    }

    @Nullable
    public JSONObject FR() {
        if (FP() != a.AD_RESPONSE_JSON) {
            return null;
        }
        try {
            try {
                JSONObject jSONObject = new JSONObject(new String(Base64.decode(this.f9do.substring(FQ().length()), 0), C.UTF8_NAME));
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().f("AdToken", "Decoded token into ad response: " + jSONObject);
                }
                return jSONObject;
            } catch (JSONException e2) {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().c("AdToken", "Unable to decode token '" + this.f9do + "' into JSON", e2);
                }
                this.sdk.Cs().d("AdToken", "decodeFullAdResponseStr", e2);
                return null;
            }
        } catch (UnsupportedEncodingException e3) {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().c("AdToken", "Unable to process ad response from token '" + this.f9do + "'", e3);
            }
            this.sdk.Cs().d("AdToken", "decodeFullAdResponse", e3);
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        String str = this.f9do;
        String str2 = ((c) obj).f9do;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public int hashCode() {
        String str = this.f9do;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String mQ() {
        return this.f9do;
    }

    public String toString() {
        return "AdToken{id=" + StringUtils.prefixToIndex(32, this.f9do) + ", type=" + FP() + '}';
    }
}
