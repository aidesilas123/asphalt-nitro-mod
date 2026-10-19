package com.json.adqualitysdk.sdk;

import com.json.adqualitysdk.sdk.i.jz;
import com.json.adqualitysdk.sdk.i.m;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class ISAdQualitySegment {
    private final String a;
    private final int b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f5114d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f5115e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f5116f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f5117g;
    private final Map<String, String> h;

    public static class Builder {
        private String b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f5118d;
        private double a = 999999.99d;
        private int c = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f5119e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private AtomicBoolean f5120f = null;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f5121g = 0;
        private double h = -1.0d;
        private Map<String, String> i = new HashMap();

        public ISAdQualitySegment build() {
            return new ISAdQualitySegment(this.b, this.c, this.f5118d, this.f5119e, this.f5120f, this.h, this.f5121g, new HashMap(this.i), (byte) 0);
        }

        public Builder setAge(int i) {
            if (i <= 0 || i > 199) {
                StringBuilder sb = new StringBuilder("setAge( ");
                sb.append(i);
                sb.append(" ) age must be between 1-199");
                m.m1020("ISAdQualitySegment Builder", sb.toString());
            } else {
                this.c = i;
            }
            return this;
        }

        public Builder setCustomData(String str, String str2) {
            try {
                if (this.i.size() >= 5) {
                    StringBuilder sb = new StringBuilder("setCustomData( ");
                    sb.append(str);
                    sb.append(" , ");
                    sb.append(str2);
                    sb.append(" ) limited to 5 custom values. Ignoring custom value.");
                    m.m1020("ISAdQualitySegment Builder", sb.toString());
                } else if (jz.m995(str) && jz.m995(str2) && jz.m997(str, 32) && jz.m997(str2, 32)) {
                    this.i.put("sgct_".concat(String.valueOf(str)), str2);
                } else {
                    StringBuilder sb2 = new StringBuilder("setCustomData( ");
                    sb2.append(str);
                    sb2.append(" , ");
                    sb2.append(str2);
                    sb2.append(" ) key and value must be alphanumeric and 1-32 in length");
                    m.m1020("ISAdQualitySegment Builder", sb2.toString());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public com.ironsource.adqualitysdk.sdk.ISAdQualitySegment.Builder setGender(java.lang.String r4) {
            /*
                r3 = this;
                boolean r0 = android.text.TextUtils.isEmpty(r4)
                if (r0 != 0) goto L27
                java.util.Locale r0 = java.util.Locale.ENGLISH
                java.lang.String r1 = r4.toLowerCase(r0)
                java.lang.String r2 = "male"
                boolean r1 = r1.equals(r2)
                if (r1 != 0) goto L20
                java.lang.String r1 = r4.toLowerCase(r0)
                java.lang.String r2 = "female"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L27
            L20:
                java.lang.String r4 = r4.toLowerCase(r0)
                r3.f5118d = r4
                goto L3f
            L27:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                java.lang.String r1 = "setGender( "
                r0.<init>(r1)
                r0.append(r4)
                java.lang.String r4 = " ) is invalid"
                r0.append(r4)
                java.lang.String r4 = r0.toString()
                java.lang.String r0 = "ISAdQualitySegment Builder"
                com.json.adqualitysdk.sdk.i.m.m1020(r0, r4)
            L3f:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.ISAdQualitySegment.Builder.setGender(java.lang.String):com.ironsource.adqualitysdk.sdk.ISAdQualitySegment$Builder");
        }

        public Builder setInAppPurchasesTotal(double d2) {
            if (d2 <= 0.0d || d2 >= this.a) {
                StringBuilder sb = new StringBuilder("setIAPTotal( ");
                sb.append(d2);
                sb.append(" ) iapt must be between 0-");
                sb.append(this.a);
                m.m1020("ISAdQualitySegment Builder", sb.toString());
            } else {
                this.h = Math.floor(d2 * 100.0d) / 100.0d;
            }
            return this;
        }

        public Builder setIsPaying(boolean z) {
            if (this.f5120f == null) {
                this.f5120f = new AtomicBoolean();
            }
            this.f5120f.set(z);
            return this;
        }

        public Builder setLevel(int i) {
            if (i <= 0 || i >= 999999) {
                StringBuilder sb = new StringBuilder("setLevel( ");
                sb.append(i);
                sb.append(" ) level must be between 1-999999");
                m.m1020("ISAdQualitySegment Builder", sb.toString());
            } else {
                this.f5119e = i;
            }
            return this;
        }

        public Builder setSegmentName(String str) {
            if (jz.m995(str) && jz.m997(str, 32)) {
                this.b = str;
            } else {
                StringBuilder sb = new StringBuilder("setSegmentName( ");
                sb.append(str);
                sb.append(" ) segment name must be alphanumeric and 1-32 in length");
                m.m1020("ISAdQualitySegment Builder", sb.toString());
            }
            return this;
        }

        public Builder setUserCreationDate(long j) {
            if (j > 0) {
                this.f5121g = j;
            } else {
                StringBuilder sb = new StringBuilder("setUserCreationDate( ");
                sb.append(j);
                sb.append(" ) is an invalid timestamp");
                m.m1020("ISAdQualitySegment Builder", sb.toString());
            }
            return this;
        }
    }

    private ISAdQualitySegment(String str, int i, String str2, int i2, AtomicBoolean atomicBoolean, double d2, long j, Map<String, String> map) {
        this.a = str;
        this.b = i;
        this.c = str2;
        this.f5114d = i2;
        this.f5115e = atomicBoolean;
        this.f5117g = d2;
        this.f5116f = j;
        this.h = map;
    }

    /* synthetic */ ISAdQualitySegment(String str, int i, String str2, int i2, AtomicBoolean atomicBoolean, double d2, long j, Map map, byte b) {
        this(str, i, str2, i2, atomicBoolean, d2, j, map);
    }

    public int getAge() {
        return this.b;
    }

    public Map<String, String> getCustomData() {
        return this.h;
    }

    public String getGender() {
        return this.c;
    }

    public double getInAppPurchasesTotal() {
        return this.f5117g;
    }

    public AtomicBoolean getIsPaying() {
        return this.f5115e;
    }

    public int getLevel() {
        return this.f5114d;
    }

    public String getName() {
        return this.a;
    }

    public long getUserCreationDate() {
        return this.f5116f;
    }
}
