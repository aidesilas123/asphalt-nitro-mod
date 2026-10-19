package com.applovin.impl.privacy.a;

import androidx.annotation.Nullable;
import com.applovin.impl.privacy.a.d;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b {
    @Nullable
    public static List<e> h(com.applovin.impl.sdk.n nVar) {
        if (nVar.Cl().isEnabled()) {
            return j.m(nVar);
        }
        return null;
    }

    @Nullable
    public static List<e> i(com.applovin.impl.sdk.n nVar) {
        Boolean boolB;
        if (!nVar.Cl().isEnabled()) {
            return null;
        }
        if (nVar.Cl().zX() == d.a.UNIFIED && (boolB = com.applovin.impl.privacy.a.zO().B(com.applovin.impl.sdk.n.getApplicationContext())) != null && boolB.booleanValue()) {
            return null;
        }
        boolean zBL = nVar.BL();
        Boolean bool = (Boolean) nVar.b(com.applovin.impl.sdk.c.d.aRt, Boolean.FALSE);
        if (!zBL || bool.booleanValue()) {
            return j(nVar);
        }
        return null;
    }

    private static List<e> j(com.applovin.impl.sdk.n nVar) {
        return nVar.Cl().getTermsOfServiceUri() != null ? j.l(nVar) : j.k(nVar);
    }
}
