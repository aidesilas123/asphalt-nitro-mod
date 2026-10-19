package com.android.billingclient.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.json.o2;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
@zzd
public final class AlternativeChoiceDetails {
    private final String a;
    private final JSONObject b;
    private final List c;

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    @zzd
    public static class Product {
        private final String a;
        private final String b;

        @Nullable
        private final String c;

        /* synthetic */ Product(JSONObject jSONObject, zzc zzcVar) {
            this.a = jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
            this.b = jSONObject.optString(o2.h.m);
            String strOptString = jSONObject.optString("offerToken");
            this.c = true == strOptString.isEmpty() ? null : strOptString;
        }

        @NonNull
        @zzd
        public String a() {
            return this.a;
        }

        @Nullable
        @zzd
        public String b() {
            return this.c;
        }

        @NonNull
        @zzd
        public String c() {
            return this.b;
        }

        public final boolean equals(@Nullable Object obj) {
            String str;
            String strB;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Product)) {
                return false;
            }
            Product product = (Product) obj;
            return this.a.equals(product.a()) && this.b.equals(product.c()) && ((str = this.c) == (strB = product.b()) || (str != null && str.equals(strB)));
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{this.a, this.b, this.c});
        }

        @NonNull
        public final String toString() {
            return String.format("{id: %s, type: %s, offer token: %s}", this.a, this.b, this.c);
        }
    }

    AlternativeChoiceDetails(String str) throws JSONException {
        this.a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.b = jSONObject;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("products");
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    arrayList.add(new Product(jSONObjectOptJSONObject, null));
                }
            }
        }
        this.c = arrayList;
    }
}
