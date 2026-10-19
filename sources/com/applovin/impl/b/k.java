package com.applovin.impl.b;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.y;
import com.applovin.impl.sdk.x;
import com.facebook.internal.security.CertificateUtil;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class k {
    private String aXR;
    private String aXS;
    private long aXT = -1;
    private int aXU = -1;
    private String ahJ;

    private k() {
    }

    private static int a(String str, e eVar) {
        if ("start".equalsIgnoreCase(str)) {
            return 0;
        }
        if ("firstQuartile".equalsIgnoreCase(str)) {
            return 25;
        }
        if (CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT.equalsIgnoreCase(str)) {
            return 50;
        }
        if ("thirdQuartile".equalsIgnoreCase(str)) {
            return 75;
        }
        if (!CampaignEx.JSON_NATIVE_VIDEO_COMPLETE.equalsIgnoreCase(str)) {
            return -1;
        }
        if (eVar != null) {
            return eVar.GE();
        }
        return 95;
    }

    public static k b(y yVar, e eVar, com.applovin.impl.sdk.n nVar) {
        List<String> listExplode;
        int size;
        long seconds;
        if (yVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        try {
            String strLK = yVar.LK();
            if (!StringUtils.isValidString(strLK)) {
                nVar.BN();
                if (!x.Fn()) {
                    return null;
                }
                nVar.BN().i("VastTracker", "Unable to create tracker. Could not find URL.");
                return null;
            }
            k kVar = new k();
            kVar.aXS = strLK;
            kVar.ahJ = yVar.LJ().get("id");
            kVar.aXR = yVar.LJ().get(NotificationCompat.CATEGORY_EVENT);
            kVar.aXU = a(kVar.Ai(), eVar);
            String str = yVar.LJ().get(TypedValues.CycleType.S_WAVE_OFFSET);
            if (StringUtils.isValidString(str)) {
                String strTrim = str.trim();
                if (strTrim.contains("%")) {
                    kVar.aXU = StringUtils.parseInt(strTrim.substring(0, strTrim.length() - 1));
                } else if (strTrim.contains(CertificateUtil.DELIMITER) && (size = (listExplode = CollectionUtils.explode(strTrim, CertificateUtil.DELIMITER)).size()) > 0) {
                    long j = 0;
                    int i = size - 1;
                    for (int i2 = i; i2 >= 0; i2--) {
                        String str2 = listExplode.get(i2);
                        if (StringUtils.isNumeric(str2)) {
                            int i3 = Integer.parseInt(str2);
                            if (i2 == i) {
                                seconds = i3;
                            } else if (i2 == size - 2) {
                                seconds = TimeUnit.MINUTES.toSeconds(i3);
                            } else if (i2 == size - 3) {
                                seconds = TimeUnit.HOURS.toSeconds(i3);
                            }
                            j += seconds;
                        }
                    }
                    kVar.aXT = j;
                    kVar.aXU = -1;
                }
            }
            return kVar;
        } catch (Throwable th) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().c("VastTracker", "Error occurred while initializing", th);
            }
            nVar.Cs().g("VastTracker", th);
            return null;
        }
    }

    public String Ai() {
        return this.aXR;
    }

    public String MD() {
        return this.aXS;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (this.aXT != kVar.aXT || this.aXU != kVar.aXU) {
            return false;
        }
        String str = this.ahJ;
        if (str == null ? kVar.ahJ != null : !str.equals(kVar.ahJ)) {
            return false;
        }
        String str2 = this.aXR;
        if (str2 == null ? kVar.aXR == null : str2.equals(kVar.aXR)) {
            return this.aXS.equals(kVar.aXS);
        }
        return false;
    }

    public boolean h(long j, int i) {
        long j2 = this.aXT;
        boolean z = j2 >= 0;
        boolean z2 = j >= j2;
        int i2 = this.aXU;
        boolean z3 = i2 >= 0;
        boolean z4 = i >= i2;
        if (z && z2) {
            return true;
        }
        return z3 && z4;
    }

    public int hashCode() {
        String str = this.ahJ;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.aXR;
        int iHashCode2 = (((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.aXS.hashCode()) * 31;
        long j = this.aXT;
        return ((iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31) + this.aXU;
    }

    public String toString() {
        return "VastTracker{identifier='" + this.ahJ + "', event='" + this.aXR + "', uriString='" + this.aXS + "', offsetSeconds=" + this.aXT + ", offsetPercent=" + this.aXU + '}';
    }
}
