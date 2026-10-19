package com.json.adqualitysdk.sdk;

/* JADX INFO: loaded from: classes2.dex */
public class ISAdQualityCustomMediationRevenue {
    private final ISAdQualityMediationNetwork a;
    private final ISAdQualityAdType b;
    private final double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f5112d;

    public static class Builder {
        private ISAdQualityMediationNetwork a = ISAdQualityMediationNetwork.UNKNOWN;
        private ISAdQualityAdType b = ISAdQualityAdType.UNKNOWN;
        private double c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f5113d;

        public ISAdQualityCustomMediationRevenue build() {
            return new ISAdQualityCustomMediationRevenue(this.a, this.b, this.c, this.f5113d, (byte) 0);
        }

        public Builder setAdType(ISAdQualityAdType iSAdQualityAdType) {
            this.b = iSAdQualityAdType;
            return this;
        }

        public Builder setMediationNetwork(ISAdQualityMediationNetwork iSAdQualityMediationNetwork) {
            this.a = iSAdQualityMediationNetwork;
            return this;
        }

        public Builder setPlacement(String str) {
            this.f5113d = str;
            return this;
        }

        public Builder setRevenue(double d2) {
            this.c = d2;
            return this;
        }
    }

    private ISAdQualityCustomMediationRevenue(ISAdQualityMediationNetwork iSAdQualityMediationNetwork, ISAdQualityAdType iSAdQualityAdType, double d2, String str) {
        this.a = iSAdQualityMediationNetwork;
        this.b = iSAdQualityAdType;
        this.c = d2;
        this.f5112d = str;
    }

    /* synthetic */ ISAdQualityCustomMediationRevenue(ISAdQualityMediationNetwork iSAdQualityMediationNetwork, ISAdQualityAdType iSAdQualityAdType, double d2, String str, byte b) {
        this(iSAdQualityMediationNetwork, iSAdQualityAdType, d2, str);
    }

    public ISAdQualityAdType getAdType() {
        return this.b;
    }

    public ISAdQualityMediationNetwork getMediationNetwork() {
        return this.a;
    }

    public String getPlacement() {
        return this.f5112d;
    }

    public double getRevenue() {
        return this.c;
    }
}
