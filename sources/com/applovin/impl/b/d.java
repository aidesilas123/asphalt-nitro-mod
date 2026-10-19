package com.applovin.impl.b;

import android.net.Uri;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.y;
import com.applovin.impl.sdk.x;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private Uri aXg;
    private i aXh;
    private final Set<k> aXi = new HashSet();
    private final Map<String, Set<k>> aXj = new HashMap();
    private int dE;
    private int height;

    private d() {
    }

    public static d a(y yVar, d dVar, e eVar, com.applovin.impl.sdk.n nVar) {
        y yVarDK;
        if (yVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        if (dVar == null) {
            try {
                dVar = new d();
            } catch (Throwable th) {
                nVar.BN();
                if (x.Fn()) {
                    nVar.BN().c("VastCompanionAd", "Error occurred while initializing", th);
                }
                nVar.Cs().g("VastCompanionAd", th);
                return null;
            }
        }
        if (dVar.dE == 0 && dVar.height == 0) {
            int i = StringUtils.parseInt(yVar.LJ().get("width"));
            int i2 = StringUtils.parseInt(yVar.LJ().get("height"));
            if (i > 0 && i2 > 0) {
                dVar.dE = i;
                dVar.height = i2;
            }
        }
        dVar.aXh = i.a(yVar, dVar.aXh, nVar);
        if (dVar.aXg == null && (yVarDK = yVar.dK("CompanionClickThrough")) != null) {
            String strLK = yVarDK.LK();
            if (StringUtils.isValidString(strLK)) {
                dVar.aXg = Uri.parse(strLK);
            }
        }
        m.a(yVar.dJ("CompanionClickTracking"), dVar.aXi, eVar, nVar);
        m.a(yVar, dVar.aXj, eVar, nVar);
        return dVar;
    }

    public Uri Mn() {
        return this.aXg;
    }

    public i Mo() {
        return this.aXh;
    }

    public Set<k> Mp() {
        return this.aXi;
    }

    public Map<String, Set<k>> Mq() {
        return this.aXj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (this.dE != dVar.dE || this.height != dVar.height) {
            return false;
        }
        Uri uri = this.aXg;
        if (uri == null ? dVar.aXg != null : !uri.equals(dVar.aXg)) {
            return false;
        }
        i iVar = this.aXh;
        if (iVar == null ? dVar.aXh != null : !iVar.equals(dVar.aXh)) {
            return false;
        }
        Set<k> set = this.aXi;
        if (set == null ? dVar.aXi != null : !set.equals(dVar.aXi)) {
            return false;
        }
        Map<String, Set<k>> map = this.aXj;
        Map<String, Set<k>> map2 = dVar.aXj;
        return map != null ? map.equals(map2) : map2 == null;
    }

    public int hashCode() {
        int i = ((this.dE * 31) + this.height) * 31;
        Uri uri = this.aXg;
        int iHashCode = (i + (uri != null ? uri.hashCode() : 0)) * 31;
        i iVar = this.aXh;
        int iHashCode2 = (iHashCode + (iVar != null ? iVar.hashCode() : 0)) * 31;
        Set<k> set = this.aXi;
        int iHashCode3 = (iHashCode2 + (set != null ? set.hashCode() : 0)) * 31;
        Map<String, Set<k>> map = this.aXj;
        return iHashCode3 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "VastCompanionAd{width=" + this.dE + ", height=" + this.height + ", destinationUri=" + this.aXg + ", nonVideoResource=" + this.aXh + ", clickTrackers=" + this.aXi + ", eventTrackers=" + this.aXj + '}';
    }
}
