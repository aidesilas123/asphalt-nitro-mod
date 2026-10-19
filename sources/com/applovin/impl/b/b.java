package com.applovin.impl.b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.y;
import com.applovin.impl.sdk.x;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private final String aXc;
    private final List<h> aXd;
    private final Set<k> aXe;
    private final String verificationParameters;

    private b(String str, List<h> list, String str2, Set<k> set) {
        this.aXc = str;
        this.aXd = list;
        this.verificationParameters = str2;
        this.aXe = set;
    }

    @Nullable
    public static b a(y yVar, e eVar, com.applovin.impl.sdk.n nVar) {
        try {
            String str = yVar.LJ().get("vendor");
            y yVarDL = yVar.dL("VerificationParameters");
            String strLK = yVarDL != null ? yVarDL.LK() : null;
            List<y> listDJ = yVar.dJ("JavaScriptResource");
            ArrayList arrayList = new ArrayList(listDJ.size());
            Iterator<y> it = listDJ.iterator();
            while (it.hasNext()) {
                h hVarB = h.b(it.next(), nVar);
                if (hVarB != null) {
                    arrayList.add(hVarB);
                }
            }
            HashMap map = new HashMap();
            m.a(yVar, map, eVar, nVar);
            return new b(str, arrayList, strLK, (Set) map.get("verificationNotExecuted"));
        } catch (Throwable th) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().c("VastAdVerification", "Error occurred while initializing", th);
            }
            nVar.Cs().g("VastAdVerification", th);
            return null;
        }
    }

    public String Mj() {
        return this.aXc;
    }

    public List<h> Mk() {
        return this.aXd;
    }

    public Set<k> Ml() {
        return this.aXe;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        String str = this.aXc;
        if (str == null ? bVar.aXc != null : !str.equals(bVar.aXc)) {
            return false;
        }
        List<h> list = this.aXd;
        if (list == null ? bVar.aXd != null : !list.equals(bVar.aXd)) {
            return false;
        }
        String str2 = this.verificationParameters;
        if (str2 == null ? bVar.verificationParameters != null : !str2.equals(bVar.verificationParameters)) {
            return false;
        }
        Set<k> set = this.aXe;
        Set<k> set2 = bVar.aXe;
        return set != null ? set.equals(set2) : set2 == null;
    }

    public String getVerificationParameters() {
        return this.verificationParameters;
    }

    public int hashCode() {
        String str = this.aXc;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        List<h> list = this.aXd;
        int iHashCode2 = (iHashCode + (list != null ? list.hashCode() : 0)) * 31;
        String str2 = this.verificationParameters;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Set<k> set = this.aXe;
        return iHashCode3 + (set != null ? set.hashCode() : 0);
    }

    @NonNull
    public String toString() {
        return "VastAdVerification{vendorId='" + this.aXc + "'javascriptResources='" + this.aXd + "'verificationParameters='" + this.verificationParameters + "'errorEventTrackers='" + this.aXe + "'}";
    }
}
