package com.applovin.impl.mediation.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.preference.PreferenceManager;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.c.e;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.i;
import com.applovin.impl.sdk.x;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.facebook.share.internal.ShareConstants;
import com.json.b4;
import com.json.o2;
import com.json.v4;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    private static JSONObject avv;
    protected final SharedPreferences avw = PreferenceManager.getDefaultSharedPreferences(n.getApplicationContext());
    protected final n sdk;
    protected final String tag;

    public static class a {

        @Nullable
        private final JSONObject avA;

        @Nullable
        private final JSONObject avB;

        @Nullable
        private final JSONObject avC;

        @Nullable
        private final JSONObject avD;

        @Nullable
        private final JSONObject avx;

        @Nullable
        private final JSONObject avy;

        @Nullable
        private final JSONObject avz;

        /* JADX INFO: renamed from: com.applovin.impl.mediation.c.b$a$a, reason: collision with other inner class name */
        public static class C0062a {
            private JSONObject avA;
            private JSONObject avB;
            private JSONObject avC;
            private JSONObject avD;
            private JSONObject avx;
            private JSONObject avy;
            private JSONObject avz;

            C0062a() {
            }

            public C0062a k(@Nullable JSONObject jSONObject) {
                this.avx = jSONObject;
                return this;
            }

            public C0062a l(@Nullable JSONObject jSONObject) {
                this.avy = jSONObject;
                return this;
            }

            public C0062a m(@Nullable JSONObject jSONObject) {
                this.avB = jSONObject;
                return this;
            }

            public C0062a n(@Nullable JSONObject jSONObject) {
                this.avD = jSONObject;
                return this;
            }

            public String toString() {
                return "S2SApiService.Extensions.Builder(bidRequestExtObject=" + this.avx + ", impExtObject=" + this.avy + ", appExtObject=" + this.avz + ", deviceExtObject=" + this.avA + ", userExtObject=" + this.avB + ", sourceExtObject=" + this.avC + ", regsExtObject=" + this.avD + ")";
            }

            public a zu() {
                return new a(this.avx, this.avy, this.avz, this.avA, this.avB, this.avC, this.avD);
            }
        }

        a(@Nullable JSONObject jSONObject, @Nullable JSONObject jSONObject2, @Nullable JSONObject jSONObject3, @Nullable JSONObject jSONObject4, @Nullable JSONObject jSONObject5, @Nullable JSONObject jSONObject6, @Nullable JSONObject jSONObject7) {
            this.avx = jSONObject;
            this.avy = jSONObject2;
            this.avz = jSONObject3;
            this.avA = jSONObject4;
            this.avB = jSONObject5;
            this.avC = jSONObject6;
            this.avD = jSONObject7;
        }

        public static C0062a zt() {
            return new C0062a();
        }
    }

    protected b(String str, n nVar) {
        this.tag = str;
        this.sdk = nVar;
    }

    private JSONArray a(Bundle bundle, MaxAdFormat maxAdFormat, @Nullable JSONObject jSONObject) {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        JsonUtils.putDouble(jSONObject2, "bidfloor", bundle.getDouble("bidfloor", 0.0d));
        if (maxAdFormat.isAdViewAd()) {
            JSONObject jSONObject3 = new JSONObject();
            JsonUtils.putInt(jSONObject3, "w", bundle.getInt("width", maxAdFormat.getSize().getWidth()));
            JsonUtils.putInt(jSONObject3, "h", bundle.getInt("height", maxAdFormat.getSize().getHeight()));
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(3);
            jSONArray2.put(5);
            jSONArray2.put(6);
            JsonUtils.putJsonArray(jSONObject3, "api", jSONArray2);
            JsonUtils.putJSONObject(jSONObject2, "banner", jSONObject3);
        }
        JsonUtils.putJSONObjectIfValid(jSONObject2, KidozParams.EXTENSION_TYPE, jSONObject);
        jSONArray.put(jSONObject2);
        return jSONArray;
    }

    private JSONObject a(Bundle bundle, @Nullable JSONObject jSONObject, Context context) {
        JSONObject jSONObjectZ = z(context);
        JsonUtils.putString(jSONObjectZ, o2.i.C, bundle.getString(o2.i.C, ""));
        JsonUtils.putString(jSONObjectZ, "storeurl", bundle.getString("storeurl", ""));
        JsonUtils.putJSONObjectIfValid(jSONObjectZ, KidozParams.EXTENSION_TYPE, jSONObject);
        return jSONObjectZ;
    }

    private JSONObject a(@Nullable JSONObject jSONObject, Context context) {
        JSONObject jSONObject2 = new JSONObject();
        Boolean boolB = com.applovin.impl.privacy.a.zO().B(context);
        if (boolB != null) {
            JsonUtils.putBoolean(jSONObject2, "coppa", boolB.booleanValue());
        }
        JsonUtils.putJSONObjectIfValid(jSONObject2, KidozParams.EXTENSION_TYPE, jSONObject);
        return jSONObject2;
    }

    private JSONObject a(@Nullable JSONObject jSONObject, Map<String, Object> map, n nVar) {
        JSONObject jSONObject2 = new JSONObject();
        JsonUtils.putString(jSONObject2, v4.R, String.valueOf(map.get(v4.R)));
        JsonUtils.putBoolean(jSONObject2, "dnt", ((Boolean) map.get("dnt")).booleanValue());
        JsonUtils.putBoolean(jSONObject2, "lmt", ((Boolean) map.get("dnt")).booleanValue());
        JsonUtils.putString(jSONObject2, "ifa", String.valueOf(map.get("idfa")));
        JsonUtils.putString(jSONObject2, v4.q, String.valueOf(map.get("brand_name")));
        JsonUtils.putString(jSONObject2, "model", String.valueOf(map.get("model")));
        JsonUtils.putString(jSONObject2, v4.x, "android");
        JsonUtils.putString(jSONObject2, v4.y, String.valueOf(map.get(v4.x)));
        JsonUtils.putInt(jSONObject2, "devicetype", 1);
        JsonUtils.putInt(jSONObject2, b4.f6057e, i.H(nVar));
        JsonUtils.putInt(jSONObject2, "w", ((Integer) map.get("dx")).intValue());
        JsonUtils.putInt(jSONObject2, "h", ((Integer) map.get("dy")).intValue());
        JsonUtils.putJSONObjectIfValid(jSONObject2, KidozParams.EXTENSION_TYPE, jSONObject);
        return jSONObject2;
    }

    private JSONObject f(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putInt(jSONObject, "w", ((Integer) map.get("dx")).intValue());
        JsonUtils.putInt(jSONObject, "h", ((Integer) map.get("dy")).intValue());
        return jSONObject;
    }

    private JSONObject i(@Nullable JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        JsonUtils.putJSONObjectIfValid(jSONObject2, KidozParams.EXTENSION_TYPE, jSONObject);
        return jSONObject2;
    }

    private JSONObject j(@Nullable JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        JsonUtils.putJSONObjectIfValid(jSONObject2, KidozParams.EXTENSION_TYPE, jSONObject);
        return jSONObject2;
    }

    private static JSONObject z(Context context) {
        JSONObject jSONObject = avv;
        if (jSONObject != null) {
            return jSONObject;
        }
        PackageManager packageManager = context.getPackageManager();
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        PackageInfo packageInfo = null;
        try {
            packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
        } catch (Throwable unused) {
        }
        JSONObject jSONObject2 = new JSONObject();
        JsonUtils.putString(jSONObject2, "name", packageManager.getApplicationLabel(applicationInfo).toString());
        JsonUtils.putString(jSONObject2, "bundle", applicationInfo.packageName);
        JsonUtils.putString(jSONObject2, "ver", packageInfo != null ? packageInfo.versionName : "");
        avv = jSONObject2;
        return jSONObject2;
    }

    public com.applovin.impl.sdk.network.c a(String str, String str2, MaxAdapterResponseParameters maxAdapterResponseParameters, MaxAdFormat maxAdFormat, @Nullable a aVar, Map<String, String> map, boolean z, n nVar) {
        nVar.BN();
        if (x.Fn()) {
            nVar.BN().f(this.tag, "Creating OpenRTB request with " + str2);
        }
        Bundle customParameters = maxAdapterResponseParameters.getCustomParameters();
        Context applicationContext = n.getApplicationContext();
        Map<String, Object> mapCV = nVar.BV() != null ? nVar.BV().CV() : nVar.BS().aL(false);
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "id", str2);
        JsonUtils.putBoolean(jSONObject, "test", maxAdapterResponseParameters.isTesting());
        JsonUtils.putJsonArrayIfValid(jSONObject, "imp", a(customParameters, maxAdFormat, aVar.avy));
        JsonUtils.putJSONObjectIfValid(jSONObject, MBridgeConstans.DYNAMIC_VIEW_WX_APP, a(customParameters, aVar.avz, applicationContext));
        JsonUtils.putJSONObjectIfValid(jSONObject, "device", a(aVar.avA, mapCV, nVar));
        JsonUtils.putJSONObjectIfValid(jSONObject, "user", i(aVar.avB));
        JsonUtils.putJSONObjectIfValid(jSONObject, ShareConstants.FEED_SOURCE_PARAM, j(aVar.avC));
        JsonUtils.putJSONObjectIfValid(jSONObject, "regs", a(aVar.avD, applicationContext));
        JsonUtils.putJSONObjectIfValid(jSONObject, "format", f(mapCV));
        JsonUtils.putJSONObjectIfValid(jSONObject, KidozParams.EXTENSION_TYPE, aVar.avx);
        return com.applovin.impl.sdk.network.c.D(nVar).cW(str).cX("POST").l(map).K(jSONObject).ad(new JSONObject()).aS(false).aU(z).Ig();
    }

    protected JSONObject zq() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putObject(jSONObject, "gdpr", (this.sdk.BV() != null ? this.sdk.BV().DI() : this.sdk.BS().Db()).get("IABTCF_gdprApplies"));
        Boolean boolB = com.applovin.impl.privacy.a.zQ().B(n.getApplicationContext());
        if (boolB != null) {
            JsonUtils.putString(jSONObject, "us_privacy", boolB.booleanValue() ? "1YY-" : "1YN-");
        }
        return jSONObject;
    }

    protected JSONObject zr() {
        JSONObject jSONObject = new JSONObject();
        Boolean boolZs = zs();
        if (boolZs != null && boolZs.booleanValue()) {
            JsonUtils.putBoolean(jSONObject, "did_consent", com.applovin.impl.privacy.a.zP().B(n.getApplicationContext()).booleanValue());
            JsonUtils.putString(jSONObject, "consent", this.sdk.Cm().As());
        }
        return jSONObject;
    }

    protected Boolean zs() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(n.getApplicationContext());
        String name = com.applovin.impl.sdk.c.d.aRw.getName();
        if (!defaultSharedPreferences.contains(name)) {
            return null;
        }
        String str = (String) e.a(name, "", String.class, defaultSharedPreferences, false);
        if (StringUtils.isValidString(str)) {
            return Boolean.valueOf(str.equals("1") || str.equalsIgnoreCase("true"));
        }
        Integer num = (Integer) e.a(name, Integer.MAX_VALUE, Integer.class, defaultSharedPreferences, false);
        if (num != null && num.intValue() != Integer.MAX_VALUE) {
            return Boolean.valueOf(num.intValue() > 0);
        }
        Long l = (Long) e.a(name, Long.MAX_VALUE, Long.class, defaultSharedPreferences, false);
        if (l == null || l.longValue() == Long.MAX_VALUE) {
            return (Boolean) e.a(name, Boolean.FALSE, Boolean.class, defaultSharedPreferences, false);
        }
        return Boolean.valueOf(l.longValue() > 0);
    }
}
