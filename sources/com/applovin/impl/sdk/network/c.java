package com.applovin.impl.sdk.network;

import androidx.annotation.Nullable;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.p;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c<T> {
    private String aHC;

    @Nullable
    private Map<String, String> aHD;

    @Nullable
    private final JSONObject aHE;

    @Nullable
    private String aHF;
    private final int aHG;
    private int aHH;
    private final int aHI;
    private final int aHJ;
    private final boolean aHK;
    private final boolean aHL;
    private final boolean aHM;
    private final boolean aHN;
    private final p.a aHO;
    private final boolean aHP;
    private final boolean aHQ;
    private String aHr;

    @Nullable
    private final T aHt;

    @Nullable
    private Map<String, String> awy;

    public static class a<T> {
        String aHC;

        @Nullable
        JSONObject aHE;

        @Nullable
        String aHF;
        int aHI;
        int aHJ;
        boolean aHK;
        boolean aHL;
        boolean aHM;
        boolean aHN;
        p.a aHO;
        boolean aHP;
        boolean aHQ;
        String aHr;

        @Nullable
        T aHt;

        @Nullable
        Map<String, String> awy;
        int aHH = 1;

        @Nullable
        Map<String, String> aHD = new HashMap();

        public a(n nVar) {
            this.aHI = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aNL)).intValue();
            this.aHJ = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aNK)).intValue();
            this.aHL = ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aNJ)).booleanValue();
            this.aHM = ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aOi)).booleanValue();
            this.aHN = ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aPL)).booleanValue();
            this.aHO = p.a.gW(((Integer) nVar.a(com.applovin.impl.sdk.c.b.aPM)).intValue());
            this.aHQ = ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aQj)).booleanValue();
        }

        public c<T> Ig() {
            return new c<>(this);
        }

        public a<T> K(@Nullable JSONObject jSONObject) {
            this.aHE = jSONObject;
            return this;
        }

        public a<T> a(p.a aVar) {
            this.aHO = aVar;
            return this;
        }

        public a<T> aP(boolean z) {
            this.aHK = z;
            return this;
        }

        public a<T> aQ(boolean z) {
            this.aHL = z;
            return this;
        }

        public a<T> aR(boolean z) {
            this.aHM = z;
            return this;
        }

        public a<T> aS(boolean z) {
            this.aHN = z;
            return this;
        }

        public a<T> aT(boolean z) {
            this.aHP = z;
            return this;
        }

        public a<T> aU(boolean z) {
            this.aHQ = z;
            return this;
        }

        public a<T> ad(@Nullable T t) {
            this.aHt = t;
            return this;
        }

        public a<T> cW(String str) {
            this.aHr = str;
            return this;
        }

        public a<T> cX(String str) {
            this.aHC = str;
            return this;
        }

        public a<T> cY(@Nullable String str) {
            this.aHF = str;
            return this;
        }

        public a<T> gE(int i) {
            this.aHH = i;
            return this;
        }

        public a<T> gF(int i) {
            this.aHI = i;
            return this;
        }

        public a<T> gG(int i) {
            this.aHJ = i;
            return this;
        }

        public a<T> k(@Nullable Map<String, String> map) {
            this.aHD = map;
            return this;
        }

        public a<T> l(@Nullable Map<String, String> map) {
            this.awy = map;
            return this;
        }
    }

    protected c(a<T> aVar) {
        this.aHr = aVar.aHr;
        this.aHC = aVar.aHC;
        this.aHD = aVar.aHD;
        this.awy = aVar.awy;
        this.aHE = aVar.aHE;
        this.aHF = aVar.aHF;
        this.aHt = aVar.aHt;
        int i = aVar.aHH;
        this.aHG = i;
        this.aHH = i;
        this.aHI = aVar.aHI;
        this.aHJ = aVar.aHJ;
        this.aHK = aVar.aHK;
        this.aHL = aVar.aHL;
        this.aHM = aVar.aHM;
        this.aHN = aVar.aHN;
        this.aHO = aVar.aHO;
        this.aHP = aVar.aHP;
        this.aHQ = aVar.aHQ;
    }

    public static <T> a<T> D(n nVar) {
        return new a<>(nVar);
    }

    public String HQ() {
        return this.aHC;
    }

    @Nullable
    public Map<String, String> HR() {
        return this.aHD;
    }

    @Nullable
    public Map<String, String> HS() {
        return this.awy;
    }

    @Nullable
    public String HT() {
        return this.aHF;
    }

    @Nullable
    public T HU() {
        return this.aHt;
    }

    public int HV() {
        return this.aHH;
    }

    public int HW() {
        return this.aHG - this.aHH;
    }

    public int HX() {
        return this.aHI;
    }

    public int HY() {
        return this.aHJ;
    }

    public boolean HZ() {
        return this.aHK;
    }

    public boolean Ia() {
        return this.aHL;
    }

    public boolean Ib() {
        return this.aHM;
    }

    public boolean Ic() {
        return this.aHN;
    }

    public p.a Id() {
        return this.aHO;
    }

    public boolean Ie() {
        return this.aHP;
    }

    public boolean If() {
        return this.aHQ;
    }

    public void cU(String str) {
        this.aHr = str;
    }

    public void cV(String str) {
        this.aHC = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        String str = this.aHr;
        if (str == null ? cVar.aHr != null : !str.equals(cVar.aHr)) {
            return false;
        }
        Map<String, String> map = this.aHD;
        if (map == null ? cVar.aHD != null : !map.equals(cVar.aHD)) {
            return false;
        }
        Map<String, String> map2 = this.awy;
        if (map2 == null ? cVar.awy != null : !map2.equals(cVar.awy)) {
            return false;
        }
        String str2 = this.aHF;
        if (str2 == null ? cVar.aHF != null : !str2.equals(cVar.aHF)) {
            return false;
        }
        String str3 = this.aHC;
        if (str3 == null ? cVar.aHC != null : !str3.equals(cVar.aHC)) {
            return false;
        }
        JSONObject jSONObject = this.aHE;
        if (jSONObject == null ? cVar.aHE != null : !jSONObject.equals(cVar.aHE)) {
            return false;
        }
        T t = this.aHt;
        if (t == null ? cVar.aHt == null : t.equals(cVar.aHt)) {
            return this.aHG == cVar.aHG && this.aHH == cVar.aHH && this.aHI == cVar.aHI && this.aHJ == cVar.aHJ && this.aHK == cVar.aHK && this.aHL == cVar.aHL && this.aHM == cVar.aHM && this.aHN == cVar.aHN && this.aHO == cVar.aHO && this.aHP == cVar.aHP && this.aHQ == cVar.aHQ;
        }
        return false;
    }

    public void gD(int i) {
        this.aHH = i;
    }

    public int hashCode() {
        int iHashCode = super.hashCode() * 31;
        String str = this.aHr;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.aHF;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.aHC;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        T t = this.aHt;
        int iHashCode5 = ((((((((((((((((((((((iHashCode4 + (t != null ? t.hashCode() : 0)) * 31) + this.aHG) * 31) + this.aHH) * 31) + this.aHI) * 31) + this.aHJ) * 31) + (this.aHK ? 1 : 0)) * 31) + (this.aHL ? 1 : 0)) * 31) + (this.aHM ? 1 : 0)) * 31) + (this.aHN ? 1 : 0)) * 31) + this.aHO.getValue()) * 31) + (this.aHP ? 1 : 0)) * 31) + (this.aHQ ? 1 : 0);
        Map<String, String> map = this.aHD;
        if (map != null) {
            iHashCode5 = (iHashCode5 * 31) + map.hashCode();
        }
        Map<String, String> map2 = this.awy;
        if (map2 != null) {
            iHashCode5 = (iHashCode5 * 31) + map2.hashCode();
        }
        JSONObject jSONObject = this.aHE;
        if (jSONObject == null) {
            return iHashCode5;
        }
        char[] charArray = jSONObject.toString().toCharArray();
        Arrays.sort(charArray);
        return (iHashCode5 * 31) + new String(charArray).hashCode();
    }

    public String toString() {
        return "HttpRequest {endpoint=" + this.aHr + ", backupEndpoint=" + this.aHF + ", httpMethod=" + this.aHC + ", httpHeaders=" + this.awy + ", body=" + this.aHE + ", emptyResponse=" + this.aHt + ", initialRetryAttempts=" + this.aHG + ", retryAttemptsLeft=" + this.aHH + ", timeoutMillis=" + this.aHI + ", retryDelayMillis=" + this.aHJ + ", exponentialRetries=" + this.aHK + ", retryOnAllErrors=" + this.aHL + ", retryOnNoConnection=" + this.aHM + ", encodingEnabled=" + this.aHN + ", encodingType=" + this.aHO + ", trackConnectionSpeed=" + this.aHP + ", gzipBodyEncoding=" + this.aHQ + '}';
    }

    @Nullable
    public JSONObject vS() {
        return this.aHE;
    }

    public String zL() {
        return this.aHr;
    }
}
