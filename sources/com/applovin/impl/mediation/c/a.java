package com.applovin.impl.mediation.c;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private final String advertiser;

    @Nullable
    private final String avb;
    private final int avc;
    private final int avd;

    @Nullable
    private final String ave;
    private final JSONArray avf;
    private final List<String> avg;
    private final String body;
    private final List<String> jsTrackers;
    private final String title;
    private final String version;

    /* JADX INFO: renamed from: com.applovin.impl.mediation.c.a$a, reason: collision with other inner class name */
    public static class C0061a {
        private String avb;
        private int avc;
        private int avd;
        private String ave;
        private boolean avh;
        private String avi;
        private boolean avj;
        private String avk;
        private boolean avl;
        private String avm;
        private boolean avn;
        private String avo;
        private boolean avp;
        private JSONArray avq;
        private boolean avr;
        private List<String> avs;
        private boolean avt;
        private List<String> avu;

        C0061a() {
        }

        public C0061a D(List<String> list) {
            this.avs = list;
            this.avr = true;
            return this;
        }

        public C0061a E(List<String> list) {
            this.avu = list;
            this.avt = true;
            return this;
        }

        public C0061a b(JSONArray jSONArray) {
            this.avq = jSONArray;
            this.avp = true;
            return this;
        }

        public C0061a cb(String str) {
            this.avi = str;
            this.avh = true;
            return this;
        }

        public C0061a cc(String str) {
            this.avk = str;
            this.avj = true;
            return this;
        }

        public C0061a cd(String str) {
            this.avm = str;
            this.avl = true;
            return this;
        }

        public C0061a ce(String str) {
            this.avo = str;
            this.avn = true;
            return this;
        }

        public C0061a cf(@Nullable String str) {
            this.avb = str;
            return this;
        }

        public C0061a cg(@Nullable String str) {
            this.ave = str;
            return this;
        }

        public C0061a gs(int i) {
            this.avc = i;
            return this;
        }

        public C0061a gt(int i) {
            this.avd = i;
            return this;
        }

        public String toString() {
            return "OpenRtbAdConfiguration.Builder(version$value=" + this.avi + ", title$value=" + this.avk + ", advertiser$value=" + this.avm + ", body$value=" + this.avo + ", mainImageUrl=" + this.avb + ", mainImageWidth=" + this.avc + ", mainImageHeight=" + this.avd + ", clickDestinationUrl=" + this.ave + ", clickTrackingUrls$value=" + this.avq + ", jsTrackers$value=" + this.avs + ", impressionUrls$value=" + this.avu + ")";
        }

        public a zp() {
            String strYT = this.avi;
            if (!this.avh) {
                strYT = a.yT();
            }
            String str = strYT;
            String strYU = this.avk;
            if (!this.avj) {
                strYU = a.yU();
            }
            String str2 = strYU;
            String strYV = this.avm;
            if (!this.avl) {
                strYV = a.yV();
            }
            String str3 = strYV;
            String strYW = this.avo;
            if (!this.avn) {
                strYW = a.yW();
            }
            String str4 = strYW;
            JSONArray jSONArrayYX = this.avq;
            if (!this.avp) {
                jSONArrayYX = a.yX();
            }
            JSONArray jSONArray = jSONArrayYX;
            List<String> listYY = this.avs;
            if (!this.avr) {
                listYY = a.yY();
            }
            List<String> list = listYY;
            List<String> listYZ = this.avu;
            if (!this.avt) {
                listYZ = a.yZ();
            }
            return new a(str, str2, str3, str4, this.avb, this.avc, this.avd, this.ave, jSONArray, list, listYZ);
        }
    }

    a(String str, String str2, String str3, String str4, @Nullable String str5, int i, int i2, @Nullable String str6, JSONArray jSONArray, List<String> list, List<String> list2) {
        this.version = str;
        this.title = str2;
        this.advertiser = str3;
        this.body = str4;
        this.avb = str5;
        this.avc = i;
        this.avd = i2;
        this.ave = str6;
        this.avf = jSONArray;
        this.jsTrackers = list;
        this.avg = list2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String yT() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String yU() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String yV() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String yW() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONArray yX() {
        return new JSONArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<String> yY() {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<String> yZ() {
        return new ArrayList();
    }

    public static C0061a za() {
        return new C0061a();
    }

    public String getAdvertiser() {
        return this.advertiser;
    }

    public String getBody() {
        return this.body;
    }

    public String getTitle() {
        return this.title;
    }

    public String getVersion() {
        return this.version;
    }

    @Nullable
    public String zb() {
        return this.avb;
    }

    public int zc() {
        return this.avc;
    }

    public int zd() {
        return this.avd;
    }

    @Nullable
    public String ze() {
        return this.ave;
    }

    public JSONArray zf() {
        return this.avf;
    }

    public List<String> zg() {
        return this.jsTrackers;
    }

    public List<String> zh() {
        return this.avg;
    }
}
