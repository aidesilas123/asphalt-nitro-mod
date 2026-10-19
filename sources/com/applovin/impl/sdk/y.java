package com.applovin.impl.sdk;

import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class y {
    private final Map<String, a> aFn = new HashMap(4);
    private final Object aFo = new Object();
    private final x logger;

    public static class a {
        private final String aFp;
        private final String aFq;
        private final String aFr;

        @Nullable
        private String aFs;

        @Nullable
        private String aFt;

        public a(String str, String str2, String str3) {
            this.aFp = str;
            this.aFq = str2;
            this.aFr = str3;
        }

        @Nullable
        public String Fo() {
            return this.aFs;
        }

        @Nullable
        public String Fp() {
            return this.aFt;
        }

        protected boolean canEqual(Object obj) {
            return obj instanceof a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!aVar.canEqual(this)) {
                return false;
            }
            String strXs = xs();
            String strXs2 = aVar.xs();
            if (strXs != null ? !strXs.equals(strXs2) : strXs2 != null) {
                return false;
            }
            String strYA = yA();
            String strYA2 = aVar.yA();
            if (strYA != null ? !strYA.equals(strYA2) : strYA2 != null) {
                return false;
            }
            String networkName = getNetworkName();
            String networkName2 = aVar.getNetworkName();
            if (networkName != null ? !networkName.equals(networkName2) : networkName2 != null) {
                return false;
            }
            String strFo = Fo();
            String strFo2 = aVar.Fo();
            if (strFo != null ? !strFo.equals(strFo2) : strFo2 != null) {
                return false;
            }
            String strFp = Fp();
            String strFp2 = aVar.Fp();
            return strFp != null ? strFp.equals(strFp2) : strFp2 == null;
        }

        public String getNetworkName() {
            return this.aFr;
        }

        public int hashCode() {
            String strXs = xs();
            int iHashCode = strXs == null ? 43 : strXs.hashCode();
            String strYA = yA();
            int iHashCode2 = ((iHashCode + 59) * 59) + (strYA == null ? 43 : strYA.hashCode());
            String networkName = getNetworkName();
            int iHashCode3 = (iHashCode2 * 59) + (networkName == null ? 43 : networkName.hashCode());
            String strFo = Fo();
            int iHashCode4 = (iHashCode3 * 59) + (strFo == null ? 43 : strFo.hashCode());
            String strFp = Fp();
            return (iHashCode4 * 59) + (strFp != null ? strFp.hashCode() : 43);
        }

        public String toString() {
            return "MediationWaterfallWinnerTracker.WinningAd(bCode=" + xs() + ", adapterName=" + yA() + ", networkName=" + getNetworkName() + ", secondWinnerAdapterName=" + Fo() + ", secondWinnerNetworkName=" + Fp() + ")";
        }

        public String xs() {
            return this.aFp;
        }

        public String yA() {
            return this.aFq;
        }
    }

    y(n nVar) {
        this.logger = nVar.BN();
    }

    public void b(com.applovin.impl.mediation.b.a aVar, @Nullable com.applovin.impl.mediation.b.a aVar2) {
        synchronized (this.aFo) {
            if (x.Fn()) {
                this.logger.f("MediationWaterfallWinnerTracker", "Tracking winning ad: " + aVar);
            }
            a aVar3 = new a(aVar.xs(), aVar.yA(), aVar.getNetworkName());
            if (aVar2 != null) {
                aVar3.aFs = aVar2.yA();
                aVar3.aFt = aVar2.getNetworkName();
            }
            this.aFn.put(aVar.getAdUnitId(), aVar3);
        }
    }

    @Nullable
    public a cK(String str) {
        a aVar;
        synchronized (this.aFo) {
            aVar = this.aFn.get(str);
        }
        return aVar;
    }

    public void l(com.applovin.impl.mediation.b.a aVar) {
        b(aVar, null);
    }

    public void m(com.applovin.impl.mediation.b.a aVar) {
        synchronized (this.aFo) {
            String adUnitId = aVar.getAdUnitId();
            a aVar2 = this.aFn.get(adUnitId);
            if (aVar2 == null) {
                if (x.Fn()) {
                    this.logger.f("MediationWaterfallWinnerTracker", "No previous winner to clear.");
                }
                return;
            }
            if (aVar.xs().equals(aVar2.xs())) {
                if (x.Fn()) {
                    this.logger.f("MediationWaterfallWinnerTracker", "Clearing previous winning ad: " + aVar2);
                }
                this.aFn.remove(adUnitId);
            } else if (x.Fn()) {
                this.logger.f("MediationWaterfallWinnerTracker", "Previous winner not cleared for ad: " + aVar + " , since it could have already been updated with a new ad: " + aVar2);
            }
        }
    }
}
