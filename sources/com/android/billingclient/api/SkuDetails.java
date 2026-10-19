package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class SkuDetails {
    private final String a;
    private final JSONObject b;

    public SkuDetails(@NonNull String str) throws JSONException {
        this.a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.b = jSONObject;
        if (TextUtils.isEmpty(jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID))) {
            throw new IllegalArgumentException("SKU cannot be empty.");
        }
        if (TextUtils.isEmpty(jSONObject.optString("type"))) {
            throw new IllegalArgumentException("SkuType cannot be empty.");
        }
    }

    @NonNull
    public String a() {
        return this.b.optString("price");
    }

    public long b() {
        return this.b.optLong("price_amount_micros");
    }

    @NonNull
    public String c() {
        return this.b.optString("price_currency_code");
    }

    @NonNull
    public String d() {
        return this.b.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
    }

    @NonNull
    public String e() {
        return this.b.optString("type");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SkuDetails) {
            return TextUtils.equals(this.a, ((SkuDetails) obj).a);
        }
        return false;
    }

    public int f() {
        return this.b.optInt(CampaignEx.JSON_KEY_OFFER_TYPE);
    }

    @NonNull
    public String g() {
        return this.b.optString("offer_id");
    }

    @NonNull
    public String h() {
        String strOptString = this.b.optString("offerIdToken");
        return strOptString.isEmpty() ? this.b.optString("offer_id_token") : strOptString;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @NonNull
    public final String i() {
        return this.b.optString(HandleAndroidInvocationsUseCase.KEY_PACKAGE_NAME);
    }

    @NonNull
    public String j() {
        return this.b.optString("serializedDocid");
    }

    final String k() {
        return this.b.optString("skuDetailsToken");
    }

    @NonNull
    public String toString() {
        return "SkuDetails: ".concat(String.valueOf(this.a));
    }
}
