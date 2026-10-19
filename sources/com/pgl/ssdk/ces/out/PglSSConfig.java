package com.pgl.ssdk.ces.out;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class PglSSConfig {
    public static final int COLLECT_MODE_DEFAULT = 0;
    public static final int COLLECT_MODE_ML_MINIMIZE = 1;
    public static final int OVREGION_TYPE_CN = 2;
    public static final int OVREGION_TYPE_SG = 0;
    public static final int OVREGION_TYPE_UNKNOWN = -1;
    public static final int OVREGION_TYPE_VA = 1;
    private String a;
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f7709d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map f7710e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7711f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7712g;

    public class Builder {
        private String a;
        private int b = -1;
        private int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f7713d;

        public PglSSConfig build() {
            if (TextUtils.isEmpty(this.a)) {
                return null;
            }
            int i = this.b;
            if (i != 2 && i != 1 && i != 0) {
                return null;
            }
            int i2 = this.c;
            if (i2 == 0 || i2 == 1) {
                return new PglSSConfig(this.a, i, i2, this.f7713d);
            }
            return null;
        }

        public Builder setAdsdkVersionCode(int i) {
            this.f7713d = i;
            return this;
        }

        public Builder setAppId(String str) {
            this.a = str;
            return this;
        }

        public Builder setCollectMode(int i) {
            this.c = i;
            return this;
        }

        public Builder setOVRegionType(int i) {
            this.b = i;
            return this;
        }
    }

    private PglSSConfig(String str, int i, int i2, int i3) {
        this.a = str;
        this.b = i;
        this.c = i2;
        this.f7709d = i3;
    }

    public static Builder builder() {
        return new Builder();
    }

    public int getAdSdkVersionCode() {
        return this.f7709d;
    }

    public String getAppId() {
        return this.a;
    }

    public String getCnReportUrl() {
        return this.f7711f;
    }

    public String getCnTokenUrl() {
        return this.f7712g;
    }

    public int getCollectMode() {
        return this.c;
    }

    public Map getCustomInfo() {
        return this.f7710e;
    }

    public int getOVRegionType() {
        return this.b;
    }

    public void setCnReportUrl(String str) {
        this.f7711f = str;
    }

    public void setCnTokenUrl(String str) {
        this.f7712g = str;
    }

    public void setCustomInfo(Map map) {
        this.f7710e = map;
    }
}
