package com.fyber.inneractive.sdk.external;

/* JADX INFO: loaded from: classes2.dex */
public class ImpressionData {
    public Pricing a = new Pricing();
    public Video b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Long f1990d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f1991e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f1992f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f1993g;
    public String h;
    public String i;

    public static class Pricing {
        public double a;
        public String b;

        public String getCurrency() {
            return this.b;
        }

        public double getValue() {
            return this.a;
        }

        public void setValue(double d2) {
            this.a = d2;
        }

        public String toString() {
            return "Pricing{value=" + this.a + ", currency='" + this.b + "'}";
        }
    }

    public static class Video {
        public boolean a;
        public long b;

        public Video(boolean z, long j) {
            this.a = z;
            this.b = j;
        }

        public long getDuration() {
            return this.b;
        }

        public boolean isSkippable() {
            return this.a;
        }

        public String toString() {
            return "Video{skippable=" + this.a + ", duration=" + this.b + '}';
        }
    }

    public String getAdvertiserDomain() {
        return this.i;
    }

    public String getCampaignId() {
        return this.h;
    }

    public String getCountry() {
        return this.f1991e;
    }

    public String getCreativeId() {
        return this.f1993g;
    }

    public Long getDemandId() {
        return this.f1990d;
    }

    public String getDemandSource() {
        return this.c;
    }

    public String getImpressionId() {
        return this.f1992f;
    }

    public Pricing getPricing() {
        return this.a;
    }

    public Video getVideo() {
        return this.b;
    }

    public void setAdvertiserDomain(String str) {
        this.i = str;
    }

    public void setCampaignId(String str) {
        this.h = str;
    }

    public void setCountry(String str) {
        this.f1991e = str;
    }

    public void setCpmValue(String str) {
        double d2;
        try {
            d2 = Double.parseDouble(str);
        } catch (Exception unused) {
            d2 = 0.0d;
        }
        this.a.a = d2;
    }

    public void setCreativeId(String str) {
        this.f1993g = str;
    }

    public void setCurrency(String str) {
        this.a.b = str;
    }

    public void setDemandId(Long l) {
        this.f1990d = l;
    }

    public void setDemandSource(String str) {
        this.c = str;
    }

    public void setDuration(long j) {
        this.b.b = j;
    }

    public void setImpressionId(String str) {
        this.f1992f = str;
    }

    public void setPricing(Pricing pricing) {
        this.a = pricing;
    }

    public void setVideo(Video video) {
        this.b = video;
    }

    public String toString() {
        return "ImpressionData{pricing=" + this.a + ", video=" + this.b + ", demandSource='" + this.c + "', country='" + this.f1991e + "', impressionId='" + this.f1992f + "', creativeId='" + this.f1993g + "', campaignId='" + this.h + "', advertiserDomain='" + this.i + "'}";
    }
}
