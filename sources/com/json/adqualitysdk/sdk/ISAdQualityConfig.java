package com.json.adqualitysdk.sdk;

import com.json.adqualitysdk.sdk.i.jz;
import com.json.adqualitysdk.sdk.i.m;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ISAdQualityConfig {
    private String a;
    private boolean b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ISAdQualityInitListener f5104d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ISAdQualityLogLevel f5105e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f5106f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5107g;
    private ISAdQualityDeviceIdType h;
    private final Map<String, String> i;

    public static class Builder {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ISAdQualityInitListener f5109e;
        private String a = null;
        private boolean b = false;
        private boolean c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ISAdQualityLogLevel f5108d = ISAdQualityLogLevel.INFO;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f5110f = null;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f5111g = false;
        private ISAdQualityDeviceIdType h = ISAdQualityDeviceIdType.NONE;
        private final Map<String, String> i = new HashMap();

        public ISAdQualityConfig build() {
            return new ISAdQualityConfig(this.a, this.b, this.c, this.f5108d, this.f5109e, this.f5110f, this.f5111g, this.h, this.i, (byte) 0);
        }

        public Builder setAdQualityInitListener(ISAdQualityInitListener iSAdQualityInitListener) {
            this.f5109e = iSAdQualityInitListener;
            return this;
        }

        public Builder setCoppa(boolean z) {
            this.f5111g = z;
            return this;
        }

        public Builder setDeviceIdType(ISAdQualityDeviceIdType iSAdQualityDeviceIdType) {
            this.h = iSAdQualityDeviceIdType;
            return this;
        }

        public Builder setInitializationSource(String str) {
            if (jz.m997(str, 20)) {
                this.f5110f = str;
            } else {
                StringBuilder sb = new StringBuilder("setInitializationSource( ");
                sb.append(str);
                sb.append(" ) init source must have length of 1-20");
                m.m1020("ISAdQualityConfig", sb.toString());
            }
            return this;
        }

        public Builder setLogLevel(ISAdQualityLogLevel iSAdQualityLogLevel) {
            this.f5108d = iSAdQualityLogLevel;
            return this;
        }

        public Builder setMetaData(String str, String str2) {
            try {
                if (this.i.size() >= 5) {
                    StringBuilder sb = new StringBuilder("setMetaData( ");
                    sb.append(str);
                    sb.append(" , ");
                    sb.append(str2);
                    sb.append(" ) limited to 5 meta data values. Ignoring meta data value.");
                    m.m1020("ISAdQualityConfig", sb.toString());
                } else if (jz.m997(str, 64) && jz.m997(str2, 64)) {
                    this.i.put(str, str2);
                } else {
                    StringBuilder sb2 = new StringBuilder("setMetaData( ");
                    sb2.append(str);
                    sb2.append(" , ");
                    sb2.append(str2);
                    sb2.append(" ) the length of both the key and the value should be between 1 and 64 characters.");
                    m.m1020("ISAdQualityConfig", sb2.toString());
                }
            } catch (Exception unused) {
            }
            return this;
        }

        public Builder setMetaData(JSONObject jSONObject) {
            if (jSONObject != null) {
                for (int i = 0; i < jSONObject.names().length(); i++) {
                    try {
                        String string = jSONObject.names().getString(i);
                        Object objOpt = jSONObject.opt(string);
                        if (objOpt instanceof String) {
                            setMetaData(string, (String) objOpt);
                        } else {
                            StringBuilder sb = new StringBuilder("setMetaData( ");
                            sb.append(string);
                            sb.append(" , ");
                            sb.append(objOpt);
                            sb.append(" ) value must be a string");
                            m.m1020("ISAdQualityConfig", sb.toString());
                        }
                    } catch (Exception unused) {
                    }
                }
            }
            return this;
        }

        public Builder setTestMode(boolean z) {
            this.c = z;
            return this;
        }

        public Builder setUserId(String str) {
            this.a = str;
            this.b = true;
            return this;
        }
    }

    private ISAdQualityConfig(String str, boolean z, boolean z2, ISAdQualityLogLevel iSAdQualityLogLevel, ISAdQualityInitListener iSAdQualityInitListener, String str2, boolean z3, ISAdQualityDeviceIdType iSAdQualityDeviceIdType, Map<String, String> map) {
        this.a = str;
        this.b = z;
        this.c = z2;
        this.f5105e = iSAdQualityLogLevel;
        this.f5104d = iSAdQualityInitListener;
        this.f5106f = str2;
        this.f5107g = z3;
        this.h = iSAdQualityDeviceIdType;
        this.i = map;
    }

    /* synthetic */ ISAdQualityConfig(String str, boolean z, boolean z2, ISAdQualityLogLevel iSAdQualityLogLevel, ISAdQualityInitListener iSAdQualityInitListener, String str2, boolean z3, ISAdQualityDeviceIdType iSAdQualityDeviceIdType, Map map, byte b) {
        this(str, z, z2, iSAdQualityLogLevel, iSAdQualityInitListener, str2, z3, iSAdQualityDeviceIdType, map);
    }

    public ISAdQualityInitListener getAdQualityInitListener() {
        return this.f5104d;
    }

    public boolean getCoppa() {
        return this.f5107g;
    }

    public ISAdQualityDeviceIdType getDeviceIdType() {
        return this.h;
    }

    public String getInitializationSource() {
        return this.f5106f;
    }

    public ISAdQualityLogLevel getLogLevel() {
        return this.f5105e;
    }

    public Map<String, String> getMetaData() {
        return this.i;
    }

    public String getUserId() {
        return this.a;
    }

    public boolean isTestMode() {
        return this.c;
    }

    public boolean isUserIdSet() {
        return this.b;
    }
}
