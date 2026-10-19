package com.applovin.impl.a.a.a;

import com.applovin.impl.sdk.ad.e;
import com.facebook.internal.AnalyticsEvents;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private final long aks;
    private final Object akt;
    private String aku;
    private String akv;

    public a(Object obj, long j) {
        this.akt = obj;
        this.aks = j;
        if (obj instanceof e) {
            e eVar = (e) obj;
            this.aku = eVar.getAdZone().getFormat() != null ? eVar.getAdZone().getFormat().getLabel() : null;
            this.akv = "AppLovin";
        } else if (obj instanceof com.applovin.impl.mediation.b.a) {
            com.applovin.impl.mediation.b.a aVar = (com.applovin.impl.mediation.b.a) obj;
            this.aku = aVar.getFormat().getLabel();
            this.akv = aVar.getNetworkName();
        }
    }

    public String getNetworkName() {
        String str = this.akv;
        return str != null ? str : AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
    }

    public String tG() {
        String str = this.aku;
        return str != null ? str : AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
    }

    public Object tH() {
        return this.akt;
    }

    public long tI() {
        return this.aks;
    }
}
