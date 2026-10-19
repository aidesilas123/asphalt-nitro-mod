package com.json.mediationsdk.impressionData;

import com.json.mediationsdk.logger.IronLog;
import java.text.DecimalFormat;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class ImpressionData {
    public static final String IMPRESSION_DATA_KEY_ABTEST = "ab";
    public static final String IMPRESSION_DATA_KEY_AD_NETWORK = "adNetwork";
    public static final String IMPRESSION_DATA_KEY_AD_UNIT = "adUnit";
    public static final String IMPRESSION_DATA_KEY_AUCTION_ID = "auctionId";
    public static final String IMPRESSION_DATA_KEY_COUNTRY = "country";
    public static final String IMPRESSION_DATA_KEY_ENCRYPTED_CPM = "encryptedCPM";
    public static final String IMPRESSION_DATA_KEY_INSTANCE_ID = "instanceId";
    public static final String IMPRESSION_DATA_KEY_INSTANCE_NAME = "instanceName";
    public static final String IMPRESSION_DATA_KEY_LIFETIME_REVENUE = "lifetimeRevenue";
    public static final String IMPRESSION_DATA_KEY_PLACEMENT = "placement";
    public static final String IMPRESSION_DATA_KEY_PRECISION = "precision";
    public static final String IMPRESSION_DATA_KEY_REVENUE = "revenue";
    public static final String IMPRESSION_DATA_KEY_SEGMENT_NAME = "segmentName";
    private JSONObject a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6331d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6332e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6333f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f6334g;
    private String h;
    private String i;
    private String j;
    private Double k;
    private String l;
    private Double m;
    private String n;
    private DecimalFormat o = new DecimalFormat("#.#####");

    public ImpressionData(ImpressionData impressionData) {
        this.b = null;
        this.c = null;
        this.f6331d = null;
        this.f6332e = null;
        this.f6333f = null;
        this.f6334g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.a = impressionData.a;
        this.b = impressionData.b;
        this.c = impressionData.c;
        this.f6331d = impressionData.f6331d;
        this.f6332e = impressionData.f6332e;
        this.f6333f = impressionData.f6333f;
        this.f6334g = impressionData.f6334g;
        this.h = impressionData.h;
        this.i = impressionData.i;
        this.j = impressionData.j;
        this.l = impressionData.l;
        this.n = impressionData.n;
        this.m = impressionData.m;
        this.k = impressionData.k;
    }

    public ImpressionData(JSONObject jSONObject) {
        Double dValueOf = null;
        this.b = null;
        this.c = null;
        this.f6331d = null;
        this.f6332e = null;
        this.f6333f = null;
        this.f6334g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        if (jSONObject != null) {
            try {
                this.a = jSONObject;
                this.b = jSONObject.optString("auctionId", null);
                this.c = jSONObject.optString("adUnit", null);
                this.f6331d = jSONObject.optString("country", null);
                this.f6332e = jSONObject.optString(IMPRESSION_DATA_KEY_ABTEST, null);
                this.f6333f = jSONObject.optString(IMPRESSION_DATA_KEY_SEGMENT_NAME, null);
                this.f6334g = jSONObject.optString("placement", null);
                this.h = jSONObject.optString(IMPRESSION_DATA_KEY_AD_NETWORK, null);
                this.i = jSONObject.optString("instanceName", null);
                this.j = jSONObject.optString("instanceId", null);
                this.l = jSONObject.optString(IMPRESSION_DATA_KEY_PRECISION, null);
                this.n = jSONObject.optString(IMPRESSION_DATA_KEY_ENCRYPTED_CPM, null);
                double dOptDouble = jSONObject.optDouble(IMPRESSION_DATA_KEY_LIFETIME_REVENUE);
                this.m = Double.isNaN(dOptDouble) ? null : Double.valueOf(dOptDouble);
                double dOptDouble2 = jSONObject.optDouble(IMPRESSION_DATA_KEY_REVENUE);
                if (!Double.isNaN(dOptDouble2)) {
                    dValueOf = Double.valueOf(dOptDouble2);
                }
                this.k = dValueOf;
            } catch (Exception e2) {
                IronLog.INTERNAL.error("error parsing impression " + e2.getMessage());
            }
        }
    }

    public String getAb() {
        return this.f6332e;
    }

    public String getAdNetwork() {
        return this.h;
    }

    public String getAdUnit() {
        return this.c;
    }

    public JSONObject getAllData() {
        return this.a;
    }

    public String getAuctionId() {
        return this.b;
    }

    public String getCountry() {
        return this.f6331d;
    }

    public String getEncryptedCPM() {
        return this.n;
    }

    public String getInstanceId() {
        return this.j;
    }

    public String getInstanceName() {
        return this.i;
    }

    public Double getLifetimeRevenue() {
        return this.m;
    }

    public String getPlacement() {
        return this.f6334g;
    }

    public String getPrecision() {
        return this.l;
    }

    public Double getRevenue() {
        return this.k;
    }

    public String getSegmentName() {
        return this.f6333f;
    }

    public void replaceMacroForPlacementWithValue(String str, String str2) {
        String str3 = this.f6334g;
        if (str3 != null) {
            String strReplace = str3.replace(str, str2);
            this.f6334g = strReplace;
            JSONObject jSONObject = this.a;
            if (jSONObject != null) {
                try {
                    jSONObject.put("placement", strReplace);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("auctionId: '");
        sb.append(this.b);
        sb.append('\'');
        sb.append(", adUnit: '");
        sb.append(this.c);
        sb.append('\'');
        sb.append(", country: '");
        sb.append(this.f6331d);
        sb.append('\'');
        sb.append(", ab: '");
        sb.append(this.f6332e);
        sb.append('\'');
        sb.append(", segmentName: '");
        sb.append(this.f6333f);
        sb.append('\'');
        sb.append(", placement: '");
        sb.append(this.f6334g);
        sb.append('\'');
        sb.append(", adNetwork: '");
        sb.append(this.h);
        sb.append('\'');
        sb.append(", instanceName: '");
        sb.append(this.i);
        sb.append('\'');
        sb.append(", instanceId: '");
        sb.append(this.j);
        sb.append('\'');
        sb.append(", revenue: ");
        Double d2 = this.k;
        sb.append(d2 == null ? null : this.o.format(d2));
        sb.append(", precision: '");
        sb.append(this.l);
        sb.append('\'');
        sb.append(", lifetimeRevenue: ");
        Double d3 = this.m;
        sb.append(d3 != null ? this.o.format(d3) : null);
        sb.append(", encryptedCPM: '");
        sb.append(this.n);
        return sb.toString();
    }
}
