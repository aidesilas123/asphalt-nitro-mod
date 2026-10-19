package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class ProductDetails {
    private final String a;
    private final JSONObject b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f157d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f159f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f160g;
    private final String h;
    private final String i;
    private final String j;

    @Nullable
    private final String k;

    @Nullable
    private final List l;

    @Nullable
    private final List m;

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static final class OneTimePurchaseOfferDetails {
        private final String a;
        private final long b;
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f161d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f162e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final com.google.android.gms.internal.play_billing.zzu f163f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Nullable
        private final Long f164g;

        @Nullable
        private final zzbg h;

        @Nullable
        private final zzbi i;

        @Nullable
        private final zzbh j;

        OneTimePurchaseOfferDetails(JSONObject jSONObject) throws JSONException {
            this.a = jSONObject.optString("formattedPrice");
            this.b = jSONObject.optLong("priceAmountMicros");
            this.c = jSONObject.optString("priceCurrencyCode");
            this.f161d = jSONObject.optString("offerIdToken");
            this.f162e = jSONObject.optString("offerId");
            jSONObject.optInt("offerType");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("offerTags");
            ArrayList arrayList = new ArrayList();
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    arrayList.add(jSONArrayOptJSONArray.getString(i));
                }
            }
            this.f163f = com.google.android.gms.internal.play_billing.zzu.zzj(arrayList);
            this.f164g = jSONObject.has("fullPriceMicros") ? Long.valueOf(jSONObject.optLong("fullPriceMicros")) : null;
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("discountDisplayInfo");
            this.h = jSONObjectOptJSONObject == null ? null : new zzbg(jSONObjectOptJSONObject);
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("validTimeWindow");
            this.i = jSONObjectOptJSONObject2 == null ? null : new zzbi(jSONObjectOptJSONObject2);
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("limitedQuantityInfo");
            this.j = jSONObjectOptJSONObject3 != null ? new zzbh(jSONObjectOptJSONObject3) : null;
        }
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static final class PricingPhase {
        private final String a;
        private final long b;
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f165d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f166e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f167f;

        PricingPhase(JSONObject jSONObject) {
            this.f165d = jSONObject.optString("billingPeriod");
            this.c = jSONObject.optString("priceCurrencyCode");
            this.a = jSONObject.optString("formattedPrice");
            this.b = jSONObject.optLong("priceAmountMicros");
            this.f167f = jSONObject.optInt("recurrenceMode");
            this.f166e = jSONObject.optInt("billingCycleCount");
        }
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static class PricingPhases {
        private final List a;

        PricingPhases(JSONArray jSONArray) {
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null) {
                        arrayList.add(new PricingPhase(jSONObjectOptJSONObject));
                    }
                }
            }
            this.a = arrayList;
        }
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface RecurrenceMode {
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    public static final class SubscriptionOfferDetails {
        private final String a;

        @Nullable
        private final String b;
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final PricingPhases f168d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final List f169e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @Nullable
        private final zzbf f170f;

        SubscriptionOfferDetails(JSONObject jSONObject) throws JSONException {
            this.a = jSONObject.optString("basePlanId");
            String strOptString = jSONObject.optString("offerId");
            this.b = true == strOptString.isEmpty() ? null : strOptString;
            this.c = jSONObject.getString("offerIdToken");
            this.f168d = new PricingPhases(jSONObject.getJSONArray("pricingPhases"));
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("installmentPlanDetails");
            this.f170f = jSONObjectOptJSONObject != null ? new zzbf(jSONObjectOptJSONObject) : null;
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("offerTags");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    arrayList.add(jSONArrayOptJSONArray.getString(i));
                }
            }
            this.f169e = arrayList;
        }
    }

    ProductDetails(String str) throws JSONException {
        this.a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.b = jSONObject;
        String strOptString = jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
        this.c = strOptString;
        String strOptString2 = jSONObject.optString("type");
        this.f157d = strOptString2;
        if (TextUtils.isEmpty(strOptString)) {
            throw new IllegalArgumentException("Product id cannot be empty.");
        }
        if (TextUtils.isEmpty(strOptString2)) {
            throw new IllegalArgumentException("Product type cannot be empty.");
        }
        this.f158e = jSONObject.optString("title");
        this.f159f = jSONObject.optString("name");
        this.f160g = jSONObject.optString("description");
        this.i = jSONObject.optString("packageDisplayName");
        this.j = jSONObject.optString("iconUrl");
        this.h = jSONObject.optString("skuDetailsToken");
        this.k = jSONObject.optString("serializedDocid");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("subscriptionOfferDetails");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                arrayList.add(new SubscriptionOfferDetails(jSONArrayOptJSONArray.getJSONObject(i)));
            }
            this.l = arrayList;
        } else {
            this.l = (strOptString2.equals("subs") || strOptString2.equals("play_pass_subs")) ? new ArrayList() : null;
        }
        JSONObject jSONObjectOptJSONObject = this.b.optJSONObject("oneTimePurchaseOfferDetails");
        JSONArray jSONArrayOptJSONArray2 = this.b.optJSONArray("oneTimePurchaseOfferDetailsList");
        ArrayList arrayList2 = new ArrayList();
        if (jSONArrayOptJSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                arrayList2.add(new OneTimePurchaseOfferDetails(jSONArrayOptJSONArray2.getJSONObject(i2)));
            }
            this.m = arrayList2;
            return;
        }
        if (jSONObjectOptJSONObject == null) {
            this.m = null;
        } else {
            arrayList2.add(new OneTimePurchaseOfferDetails(jSONObjectOptJSONObject));
            this.m = arrayList2;
        }
    }

    @NonNull
    public String a() {
        return this.c;
    }

    @NonNull
    public String b() {
        return this.f157d;
    }

    @NonNull
    public final String c() {
        return this.b.optString(HandleAndroidInvocationsUseCase.KEY_PACKAGE_NAME);
    }

    final String d() {
        return this.h;
    }

    @Nullable
    public String e() {
        return this.k;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ProductDetails) {
            return TextUtils.equals(this.a, ((ProductDetails) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @NonNull
    public String toString() {
        return "ProductDetails{jsonString='" + this.a + "', parsedJson=" + this.b.toString() + ", productId='" + this.c + "', productType='" + this.f157d + "', title='" + this.f158e + "', productDetailsToken='" + this.h + "', subscriptionOfferDetails=" + String.valueOf(this.l) + "}";
    }
}
