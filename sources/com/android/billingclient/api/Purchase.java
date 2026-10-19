package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public class Purchase {
    private final String a;
    private final String b;
    private final JSONObject c;

    /* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface PurchaseState {
    }

    public Purchase(@NonNull String str, @NonNull String str2) throws JSONException {
        this.a = str;
        this.b = str2;
        this.c = new JSONObject(str);
    }

    private final ArrayList i() {
        ArrayList arrayList = new ArrayList();
        if (this.c.has("productIds")) {
            JSONArray jSONArrayOptJSONArray = this.c.optJSONArray("productIds");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    arrayList.add(jSONArrayOptJSONArray.optString(i));
                }
            }
        } else if (this.c.has(InAppPurchaseMetaData.KEY_PRODUCT_ID)) {
            arrayList.add(this.c.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID));
        }
        return arrayList;
    }

    @NonNull
    public String a() {
        return this.c.optString(SDKConstants.PARAM_DEVELOPER_PAYLOAD);
    }

    @Nullable
    public String b() {
        String strOptString = this.c.optString("orderId");
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        return strOptString;
    }

    @NonNull
    public String c() {
        return this.a;
    }

    public int d() {
        return this.c.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    @NonNull
    public String e() {
        JSONObject jSONObject = this.c;
        return jSONObject.optString("token", jSONObject.optString(SDKConstants.PARAM_PURCHASE_TOKEN));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        return TextUtils.equals(this.a, purchase.c()) && TextUtils.equals(this.b, purchase.f());
    }

    @NonNull
    public String f() {
        return this.b;
    }

    @NonNull
    @Deprecated
    public ArrayList<String> g() {
        return i();
    }

    public boolean h() {
        return this.c.optBoolean("acknowledged", true);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @NonNull
    public String toString() {
        return "Purchase. Json: ".concat(String.valueOf(this.a));
    }
}
