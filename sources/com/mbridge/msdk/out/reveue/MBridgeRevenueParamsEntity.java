package com.mbridge.msdk.out.reveue;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.json.b4;
import com.json.mediationsdk.impressionData.ImpressionData;
import com.mbridge.msdk.foundation.tools.af;
import java.net.URLEncoder;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MBridgeRevenueParamsEntity {
    public static final String ATTRIBUTION_PLATFORM_ADBRIX = "Adbrix";
    public static final String ATTRIBUTION_PLATFORM_ADJUST = "Adjust";
    public static final String ATTRIBUTION_PLATFORM_AIRVRIDGE = "Airbridge";
    public static final String ATTRIBUTION_PLATFORM_APPSFLYER = "AppsFlyer";
    public static final String ATTRIBUTION_PLATFORM_APP_METRICA = "AppMetrica";
    public static final String ATTRIBUTION_PLATFORM_APSALAR = "Apsalar";
    public static final String ATTRIBUTION_PLATFORM_BRANCH = "Branch";
    public static final String ATTRIBUTION_PLATFORM_DATA_EYE = "DataEye";
    public static final String ATTRIBUTION_PLATFORM_FOX = "Fox";
    public static final String ATTRIBUTION_PLATFORM_JUST_TRACK = "JustTrack";
    public static final String ATTRIBUTION_PLATFORM_KOCHAVA = "Kochava";
    public static final String ATTRIBUTION_PLATFORM_MY_TRACKER = "MyTracker";
    public static final String ATTRIBUTION_PLATFORM_REYUN = "Reyun";
    public static final String ATTRIBUTION_PLATFORM_SINGULAR = "Singular";
    public static final String ATTRIBUTION_PLATFORM_SOLAR_ENGINE = "SolarEngine";
    public static final String ATTRIBUTION_PLATFORM_TALKING_DATA = "TalkingData";
    public static final String ATTRIBUTION_PLATFORM_TENJIN = "Tenjin";
    public static final String ATTRIBUTION_PLATFORM_UMENG = "Umeng";
    private JSONObject eventInfoJsonObject = new JSONObject();
    private String mediationName;
    private String mmpName;
    private String mmpUserId;
    private String traceId;

    public @interface AttributionPlatform {
    }

    public MBridgeRevenueParamsEntity(String str, String str2) {
        setMmpName(str);
        setMmpUserId(str2);
        setTraceId(af.c());
    }

    public String getMediationName() {
        return this.mediationName;
    }

    protected String getMmpName() {
        return this.mmpName;
    }

    protected String getMmpUserId() {
        return this.mmpUserId;
    }

    protected String getReportData() {
        try {
            return "event_info=" + URLEncoder.encode(this.eventInfoJsonObject.toString(), b4.L);
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    protected String getTraceId() {
        return this.traceId;
    }

    protected void setAdType(String str) {
        try {
            this.eventInfoJsonObject.put("mediation_ad_type", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setBidType(Boolean bool) {
        try {
            this.eventInfoJsonObject.put("bid_type", bool);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setCurrency(String str) {
        try {
            this.eventInfoJsonObject.put("currency", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setDspInfo(String str, String str2) {
        try {
            this.eventInfoJsonObject.put("dsp_name", str);
            this.eventInfoJsonObject.put("dsp_id", str2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setEventTime(String str) {
        try {
            this.eventInfoJsonObject.put("event_time", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setExtData(JSONObject jSONObject) {
        try {
            this.eventInfoJsonObject.put("extra_data", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setMediationName(String str) {
        try {
            this.mediationName = str;
            this.eventInfoJsonObject.put("mediation_name", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setMediationUnitId(String str) {
        try {
            this.eventInfoJsonObject.put("mediation_unit_id", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setMmpName(String str) {
        this.mmpName = str;
        try {
            this.eventInfoJsonObject.put("mmp_name", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setMmpUserId(String str) {
        this.mmpUserId = str;
        try {
            this.eventInfoJsonObject.put("mmp_user_id", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setNetworkInfo(JSONObject jSONObject) {
        try {
            this.eventInfoJsonObject.put("network_unit_info", jSONObject == null ? JsonUtils.EMPTY_JSON : jSONObject.toString());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setNetworkName(String str) {
        try {
            this.eventInfoJsonObject.put("network_name", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setPrecision(String str) {
        try {
            this.eventInfoJsonObject.put(ImpressionData.IMPRESSION_DATA_KEY_PRECISION, str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setRevenue(String str) {
        try {
            this.eventInfoJsonObject.put(ImpressionData.IMPRESSION_DATA_KEY_REVENUE, str);
            setEventTime((System.currentTimeMillis() / 1000) + "");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setSourceData(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("mediation_source_data", str);
            jSONObject.put("adNetwork_source_data", str2);
            this.eventInfoJsonObject.put("all_info", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void setTraceId(String str) {
        this.traceId = str;
        try {
            this.eventInfoJsonObject.put("trace_id", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
