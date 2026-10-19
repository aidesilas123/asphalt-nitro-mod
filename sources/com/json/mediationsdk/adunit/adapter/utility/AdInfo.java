package com.json.mediationsdk.adunit.adapter.utility;

import com.json.mediationsdk.impressionData.ImpressionData;
import com.json.mediationsdk.logger.IronLog;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class AdInfo {
    private final ImpressionData a;

    public AdInfo() {
        this.a = null;
    }

    public AdInfo(ImpressionData impressionData) {
        this.a = impressionData;
    }

    public String getAb() {
        ImpressionData impressionData = this.a;
        return (impressionData == null || impressionData.getAb() == null) ? "" : this.a.getAb();
    }

    public String getAdNetwork() {
        ImpressionData impressionData = this.a;
        return (impressionData == null || impressionData.getAdNetwork() == null) ? "" : this.a.getAdNetwork();
    }

    public String getAdUnit() {
        ImpressionData impressionData = this.a;
        return (impressionData == null || impressionData.getAdUnit() == null) ? "" : this.a.getAdUnit();
    }

    public String getAuctionId() {
        ImpressionData impressionData = this.a;
        return (impressionData == null || impressionData.getAuctionId() == null) ? "" : this.a.getAuctionId();
    }

    public String getCountry() {
        ImpressionData impressionData = this.a;
        return (impressionData == null || impressionData.getCountry() == null) ? "" : this.a.getCountry();
    }

    public String getEncryptedCPM() {
        ImpressionData impressionData = this.a;
        return (impressionData == null || impressionData.getEncryptedCPM() == null) ? "" : this.a.getEncryptedCPM();
    }

    public String getInstanceId() {
        ImpressionData impressionData = this.a;
        return (impressionData == null || impressionData.getInstanceId() == null) ? "" : this.a.getInstanceId();
    }

    public String getInstanceName() {
        ImpressionData impressionData = this.a;
        return (impressionData == null || impressionData.getInstanceName() == null) ? "" : this.a.getInstanceName();
    }

    public Double getLifetimeRevenue() {
        ImpressionData impressionData = this.a;
        return (impressionData == null || impressionData.getLifetimeRevenue() == null) ? Double.valueOf(0.0d) : this.a.getLifetimeRevenue();
    }

    public String getPrecision() {
        ImpressionData impressionData = this.a;
        return (impressionData == null || impressionData.getPrecision() == null) ? "" : this.a.getPrecision();
    }

    public Double getRevenue() {
        ImpressionData impressionData = this.a;
        return (impressionData == null || impressionData.getRevenue() == null) ? Double.valueOf(0.0d) : this.a.getRevenue();
    }

    public String getSegmentName() {
        ImpressionData impressionData = this.a;
        return (impressionData == null || impressionData.getSegmentName() == null) ? "" : this.a.getSegmentName();
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("auctionId", getAuctionId());
            jSONObject.put("adUnit", getAdUnit());
            jSONObject.put("country", getCountry());
            jSONObject.put(ImpressionData.IMPRESSION_DATA_KEY_ABTEST, getAb());
            jSONObject.put(ImpressionData.IMPRESSION_DATA_KEY_SEGMENT_NAME, getSegmentName());
            jSONObject.put(ImpressionData.IMPRESSION_DATA_KEY_AD_NETWORK, getAdNetwork());
            jSONObject.put("instanceName", getInstanceName());
            jSONObject.put("instanceId", getInstanceId());
            jSONObject.put(ImpressionData.IMPRESSION_DATA_KEY_REVENUE, getRevenue());
            jSONObject.put(ImpressionData.IMPRESSION_DATA_KEY_PRECISION, getPrecision());
            jSONObject.put(ImpressionData.IMPRESSION_DATA_KEY_LIFETIME_REVENUE, getLifetimeRevenue());
            jSONObject.put(ImpressionData.IMPRESSION_DATA_KEY_ENCRYPTED_CPM, getEncryptedCPM());
        } catch (Exception e2) {
            IronLog.INTERNAL.error("error while parsing ad info " + e2.getMessage());
        }
        return jSONObject.toString();
    }
}
