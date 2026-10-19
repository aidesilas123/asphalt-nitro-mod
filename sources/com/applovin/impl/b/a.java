package com.applovin.impl.b;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.b.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.applovin.impl.sdk.ad.e {
    private final String aGc;
    private final String aWI;
    private final j aWJ;
    private final n aWK;
    private final d aWL;
    private final com.applovin.impl.b.c aWM;
    private final com.applovin.impl.sdk.a.g aWN;
    private final Set<k> aWO;
    private final Set<k> aWP;
    private final long createdAtMillis;
    private final String title;

    /* JADX INFO: renamed from: com.applovin.impl.b.a$a, reason: collision with other inner class name */
    public static class C0057a {
        private String aWI;
        private j aWJ;
        private n aWK;
        private d aWL;
        private com.applovin.impl.b.c aWM;
        private Set<k> aWO;
        private Set<k> aWP;
        private JSONObject adObject;
        private long createdAtMillis;
        private JSONObject fullResponse;
        private com.applovin.impl.sdk.n sdk;
        private com.applovin.impl.sdk.ad.b source;
        private String title;

        public a Mi() {
            return new a(this);
        }

        public C0057a R(com.applovin.impl.sdk.n nVar) {
            if (nVar == null) {
                throw new IllegalArgumentException("No sdk specified.");
            }
            this.sdk = nVar;
            return this;
        }

        public C0057a V(JSONObject jSONObject) {
            if (jSONObject == null) {
                throw new IllegalArgumentException("No ad object specified.");
            }
            this.adObject = jSONObject;
            return this;
        }

        public C0057a W(JSONObject jSONObject) {
            if (jSONObject == null) {
                throw new IllegalArgumentException("No full ad response specified.");
            }
            this.fullResponse = jSONObject;
            return this;
        }

        public C0057a a(com.applovin.impl.b.c cVar) {
            this.aWM = cVar;
            return this;
        }

        public C0057a a(d dVar) {
            this.aWL = dVar;
            return this;
        }

        public C0057a a(j jVar) {
            this.aWJ = jVar;
            return this;
        }

        public C0057a a(n nVar) {
            this.aWK = nVar;
            return this;
        }

        public C0057a a(com.applovin.impl.sdk.ad.b bVar) {
            this.source = bVar;
            return this;
        }

        public C0057a b(Set<k> set) {
            this.aWO = set;
            return this;
        }

        public C0057a c(Set<k> set) {
            this.aWP = set;
            return this;
        }

        public C0057a cc(long j) {
            this.createdAtMillis = j;
            return this;
        }

        public C0057a dP(String str) {
            this.title = str;
            return this;
        }

        public C0057a dQ(String str) {
            this.aWI = str;
            return this;
        }
    }

    public enum b {
        COMPANION_AD,
        VIDEO
    }

    public enum c {
        IMPRESSION,
        VIDEO_CLICK,
        COMPANION_CLICK,
        VIDEO,
        COMPANION,
        INDUSTRY_ICON_IMPRESSION,
        INDUSTRY_ICON_CLICK,
        ERROR
    }

    private a(C0057a c0057a) {
        super(c0057a.adObject, c0057a.fullResponse, c0057a.source, c0057a.sdk);
        this.title = c0057a.title;
        this.aWJ = c0057a.aWJ;
        this.aWI = c0057a.aWI;
        this.aWK = c0057a.aWK;
        this.aWL = c0057a.aWL;
        this.aWM = c0057a.aWM;
        this.aWO = c0057a.aWO;
        this.aWP = c0057a.aWP;
        this.aWN = new com.applovin.impl.sdk.a.g(this);
        Uri uriFI = FI();
        if (uriFI != null) {
            this.aGc = uriFI.toString();
        } else {
            this.aGc = "";
        }
        this.createdAtMillis = c0057a.createdAtMillis;
    }

    private String LS() {
        String stringFromAdObject = getStringFromAdObject("vimp_url", null);
        if (stringFromAdObject != null) {
            return stringFromAdObject.replace("{CLCODE}", getClCode());
        }
        return null;
    }

    private n.a LW() {
        n.a[] aVarArrValues = n.a.values();
        int iIntValue = ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aPw)).intValue();
        return (iIntValue < 0 || iIntValue >= aVarArrValues.length) ? n.a.UNSPECIFIED : aVarArrValues[iIntValue];
    }

    private Set<k> Mg() {
        n nVar = this.aWK;
        return nVar != null ? nVar.Mp() : Collections.emptySet();
    }

    private Set<k> Mh() {
        d dVar = this.aWL;
        return dVar != null ? dVar.Mp() : Collections.emptySet();
    }

    private Set<k> a(b bVar, String[] strArr) {
        d dVar;
        n nVar;
        if (strArr == null || strArr.length <= 0) {
            return Collections.emptySet();
        }
        Map<String, Set<k>> mapMq = null;
        if (bVar == b.VIDEO && (nVar = this.aWK) != null) {
            mapMq = nVar.Mq();
        } else if (bVar == b.COMPANION_AD && (dVar = this.aWL) != null) {
            mapMq = dVar.Mq();
        }
        HashSet hashSet = new HashSet();
        if (mapMq != null && !mapMq.isEmpty()) {
            for (String str : strArr) {
                if (mapMq.containsKey(str)) {
                    hashSet.addAll(mapMq.get(str));
                }
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @Override // com.applovin.impl.sdk.ad.e
    public void FA() {
    }

    @Override // com.applovin.impl.sdk.ad.e
    public String FD() {
        return this.aGc;
    }

    @Override // com.applovin.impl.sdk.ad.e
    public boolean FF() {
        return getBooleanFromAdObject("vast_is_streaming", Boolean.FALSE);
    }

    public void FH() {
        synchronized (this.adObjectLock) {
            this.adObject.remove("vast_is_streaming");
        }
    }

    @Override // com.applovin.impl.sdk.ad.e
    public Uri FI() {
        o oVarLV = LV();
        if (oVarLV != null) {
            return oVarLV.FI();
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.e
    public Uri FK() {
        n nVar = this.aWK;
        if (nVar != null) {
            return nVar.Mn();
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.e
    public Uri FL() {
        return FK();
    }

    @Override // com.applovin.impl.sdk.ad.e
    public boolean Gq() {
        return getBooleanFromAdObject("video_clickable", Boolean.FALSE) && FK() != null;
    }

    @Override // com.applovin.impl.sdk.ad.e
    public List<com.applovin.impl.sdk.d.a> Hj() {
        List<com.applovin.impl.sdk.d.a> listA;
        synchronized (this.adObjectLock) {
            listA = u.a("vimp_urls", this.adObject, getClCode(), null, LS(), Hl(), Gl(), this.sdk);
        }
        return listA;
    }

    public boolean LM() {
        return getBooleanFromAdObject("iopms", Boolean.FALSE);
    }

    public boolean LN() {
        return getBooleanFromAdObject("iopmsfsr", Boolean.TRUE);
    }

    @Override // com.applovin.impl.sdk.ad.e
    /* JADX INFO: renamed from: LO, reason: merged with bridge method [inline-methods] */
    public com.applovin.impl.sdk.a.g getAdEventTracker() {
        return this.aWN;
    }

    public long LP() {
        return getLongFromAdObject("real_close_delay", 0L);
    }

    public b LQ() {
        return "companion_ad".equalsIgnoreCase(getStringFromAdObject("vast_first_caching_operation", "companion_ad")) ? b.COMPANION_AD : b.VIDEO;
    }

    public boolean LR() {
        return getBooleanFromAdObject("vast_immediate_ad_load", Boolean.TRUE);
    }

    public j LT() {
        return this.aWJ;
    }

    public n LU() {
        return this.aWK;
    }

    @Nullable
    public o LV() {
        Long lK = com.applovin.impl.sdk.utils.i.K(this.sdk);
        return this.aWK.a(LW(), lK != null ? lK.longValue() : 0L);
    }

    public d LX() {
        return this.aWL;
    }

    @Nullable
    public g LY() {
        n nVar = this.aWK;
        if (nVar != null) {
            return nVar.LY();
        }
        return null;
    }

    public boolean LZ() {
        return LY() != null;
    }

    public boolean Ma() {
        return getBooleanFromAdObject("vast_fire_click_trackers_on_html_clicks", Boolean.FALSE);
    }

    public String Mb() {
        return getStringFromAdObject("html_template", "");
    }

    public Uri Mc() {
        String stringFromAdObject = getStringFromAdObject("html_template_url", null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    public boolean Md() {
        return getBooleanFromAdObject("cache_companion_ad", Boolean.TRUE);
    }

    public boolean Me() {
        return getBooleanFromAdObject("cache_video", Boolean.TRUE);
    }

    @Nullable
    public com.applovin.impl.b.c Mf() {
        return this.aWM;
    }

    public Set<k> a(c cVar, String str) {
        return a(cVar, new String[]{str});
    }

    public Set<k> a(c cVar, String[] strArr) {
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("VastAd", "Retrieving trackers of type '" + cVar + "' and events '" + strArr + "'...");
        }
        if (cVar == c.IMPRESSION) {
            return this.aWO;
        }
        if (cVar == c.VIDEO_CLICK) {
            return Mg();
        }
        if (cVar == c.COMPANION_CLICK) {
            return Mh();
        }
        if (cVar == c.VIDEO) {
            return a(b.VIDEO, strArr);
        }
        if (cVar == c.COMPANION) {
            return a(b.COMPANION_AD, strArr);
        }
        if (cVar == c.INDUSTRY_ICON_CLICK) {
            return LY().Mp();
        }
        if (cVar == c.INDUSTRY_ICON_IMPRESSION) {
            return LY().Mx();
        }
        if (cVar == c.ERROR) {
            return this.aWP;
        }
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().i("VastAd", "Failed to retrieve trackers of invalid type '" + cVar + "' and events '" + strArr + "'");
        }
        return Collections.emptySet();
    }

    public void dO(String str) {
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "html_template", str);
        }
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a) || !super.equals(obj)) {
            return false;
        }
        a aVar = (a) obj;
        String str = this.title;
        if (str == null ? aVar.title != null : !str.equals(aVar.title)) {
            return false;
        }
        String str2 = this.aWI;
        if (str2 == null ? aVar.aWI != null : !str2.equals(aVar.aWI)) {
            return false;
        }
        j jVar = this.aWJ;
        if (jVar == null ? aVar.aWJ != null : !jVar.equals(aVar.aWJ)) {
            return false;
        }
        n nVar = this.aWK;
        if (nVar == null ? aVar.aWK != null : !nVar.equals(aVar.aWK)) {
            return false;
        }
        d dVar = this.aWL;
        if (dVar == null ? aVar.aWL != null : !dVar.equals(aVar.aWL)) {
            return false;
        }
        com.applovin.impl.b.c cVar = this.aWM;
        if (cVar == null ? aVar.aWM != null : !cVar.equals(aVar.aWM)) {
            return false;
        }
        Set<k> set = this.aWO;
        if (set == null ? aVar.aWO != null : !set.equals(aVar.aWO)) {
            return false;
        }
        Set<k> set2 = this.aWP;
        Set<k> set3 = aVar.aWP;
        return set2 != null ? set2.equals(set3) : set3 == null;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public long getCreatedAtMillis() {
        return this.createdAtMillis;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public JSONObject getOriginalFullResponse() {
        return this.fullResponse;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean hasVideoUrl() {
        List<o> listMG;
        n nVar = this.aWK;
        return (nVar == null || (listMG = nVar.MG()) == null || listMG.size() <= 0) ? false : true;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public int hashCode() {
        int iHashCode = super.hashCode() * 31;
        String str = this.title;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.aWI;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        j jVar = this.aWJ;
        int iHashCode4 = (iHashCode3 + (jVar != null ? jVar.hashCode() : 0)) * 31;
        n nVar = this.aWK;
        int iHashCode5 = (iHashCode4 + (nVar != null ? nVar.hashCode() : 0)) * 31;
        d dVar = this.aWL;
        int iHashCode6 = (iHashCode5 + (dVar != null ? dVar.hashCode() : 0)) * 31;
        com.applovin.impl.b.c cVar = this.aWM;
        int iHashCode7 = (iHashCode6 + (cVar != null ? cVar.hashCode() : 0)) * 31;
        Set<k> set = this.aWO;
        int iHashCode8 = (iHashCode7 + (set != null ? set.hashCode() : 0)) * 31;
        Set<k> set2 = this.aWP;
        return iHashCode8 + (set2 != null ? set2.hashCode() : 0);
    }

    @Override // com.applovin.impl.sdk.ad.e, com.applovin.impl.sdk.a.a
    public boolean isOpenMeasurementEnabled() {
        return getBooleanFromAdObject("omsdk_enabled", Boolean.TRUE) && this.aWM != null;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    @NonNull
    public String toString() {
        return "VastAd{title='" + this.title + "', adDescription='" + this.aWI + "', systemInfo=" + this.aWJ + ", videoCreative=" + this.aWK + ", companionAd=" + this.aWL + ", adVerifications=" + this.aWM + ", impressionTrackers=" + this.aWO + ", errorTrackers=" + this.aWP + '}';
    }
}
