package com.applovin.impl.b;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.y;
import com.applovin.impl.sdk.x;
import com.facebook.internal.security.CertificateUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class n {
    private List<o> aXY;
    private List<String> aXZ;
    private Uri aXg;
    private final Set<k> aXi;
    private final Map<String, Set<k>> aXj;
    private int aYa;
    private g aYb;

    public enum a {
        UNSPECIFIED,
        LOW,
        MEDIUM,
        HIGH,
        DYNAMIC
    }

    private n() {
        this.aXY = Collections.emptyList();
        this.aXZ = Collections.emptyList();
        this.aXi = new HashSet();
        this.aXj = new HashMap();
    }

    private n(e eVar) {
        this.aXY = Collections.emptyList();
        this.aXZ = Collections.emptyList();
        this.aXi = new HashSet();
        this.aXj = new HashMap();
        this.aXZ = eVar.Mu();
    }

    public static n a(y yVar, n nVar, e eVar, com.applovin.impl.sdk.n nVar2) {
        y yVarDK;
        g gVarA;
        List<y> listDJ;
        y yVarDK2;
        List<o> listC;
        y yVarDK3;
        int iF;
        if (yVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (eVar == null) {
            throw new IllegalArgumentException("No context specified.");
        }
        if (nVar2 == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        if (nVar == null) {
            try {
                nVar = new n(eVar);
            } catch (Throwable th) {
                nVar2.BN();
                if (x.Fn()) {
                    nVar2.BN().c("VastVideoCreative", "Error occurred while initializing", th);
                }
                nVar2.Cs().g("VastVideoCreative", th);
                return null;
            }
        }
        if (nVar.aYa == 0 && (yVarDK3 = yVar.dK("Duration")) != null && (iF = f(yVarDK3.LK(), nVar2)) > 0) {
            nVar.aYa = iF;
        }
        y yVarDK4 = yVar.dK("MediaFiles");
        if (yVarDK4 != null && (listC = c(yVarDK4, nVar2)) != null && listC.size() > 0) {
            List<o> list = nVar.aXY;
            if (list != null) {
                listC.addAll(list);
            }
            nVar.aXY = listC;
        }
        y yVarDK5 = yVar.dK("VideoClicks");
        if (yVarDK5 != null) {
            if (nVar.aXg == null && (yVarDK2 = yVarDK5.dK("ClickThrough")) != null) {
                String strLK = yVarDK2.LK();
                if (StringUtils.isValidString(strLK)) {
                    nVar.aXg = Uri.parse(strLK);
                }
            }
            m.a(yVarDK5.dJ("ClickTracking"), nVar.aXi, eVar, nVar2);
        }
        y yVarDK6 = yVar.dK("Icons");
        if (yVarDK6 != null && (gVarA = g.a((yVarDK = yVarDK6.dK("Icon")), nVar2)) != null) {
            y yVarDK7 = yVarDK.dK("IconClicks");
            if (yVarDK7 != null && (listDJ = yVarDK7.dJ("IconClickTracking")) != null) {
                m.a(listDJ, gVarA.aXi, eVar, nVar2);
            }
            List<y> listDJ2 = yVarDK.dJ("IconViewTracking");
            if (listDJ2 != null) {
                m.a(listDJ2, gVarA.aXE, eVar, nVar2);
            }
            nVar.aYb = gVarA;
        }
        m.a(yVar, nVar.aXj, eVar, nVar2);
        return nVar;
    }

    private static List<o> c(y yVar, com.applovin.impl.sdk.n nVar) {
        List<y> listDJ = yVar.dJ("MediaFile");
        ArrayList arrayList = new ArrayList(listDJ.size());
        List<String> listExplode = CollectionUtils.explode((String) nVar.a(com.applovin.impl.sdk.c.b.aPu));
        List<String> listExplode2 = CollectionUtils.explode((String) nVar.a(com.applovin.impl.sdk.c.b.aPt));
        Iterator<y> it = listDJ.iterator();
        while (it.hasNext()) {
            o oVarD = o.d(it.next(), nVar);
            if (oVarD != null) {
                try {
                    String strMJ = oVarD.MJ();
                    if (!StringUtils.isValidString(strMJ) || listExplode.contains(strMJ)) {
                        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aPv)).booleanValue()) {
                            String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(oVarD.FI().toString());
                            if (StringUtils.isValidString(fileExtensionFromUrl) && !listExplode2.contains(fileExtensionFromUrl)) {
                                arrayList.add(oVarD);
                            }
                        }
                        nVar.BN();
                        if (x.Fn()) {
                            nVar.BN().h("VastVideoCreative", "Video file not supported: " + oVarD);
                        }
                    } else {
                        arrayList.add(oVarD);
                    }
                } catch (Throwable th) {
                    nVar.BN();
                    if (x.Fn()) {
                        nVar.BN().c("VastVideoCreative", "Failed to validate video file: " + oVarD, th);
                    }
                }
            }
        }
        return arrayList;
    }

    private static int f(String str, com.applovin.impl.sdk.n nVar) {
        try {
            List<String> listExplode = CollectionUtils.explode(str, CertificateUtil.DELIMITER);
            if (listExplode.size() == 3) {
                return (int) (TimeUnit.HOURS.toSeconds(StringUtils.parseInt(listExplode.get(0))) + TimeUnit.MINUTES.toSeconds(StringUtils.parseInt(listExplode.get(1))) + ((long) StringUtils.parseInt(listExplode.get(2))));
            }
        } catch (Throwable unused) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().i("VastVideoCreative", "Unable to parse duration from \"" + str + "\"");
            }
        }
        return 0;
    }

    @Nullable
    public g LY() {
        return this.aYb;
    }

    public List<o> MG() {
        return this.aXY;
    }

    public int MH() {
        return this.aYa;
    }

    public Uri Mn() {
        return this.aXg;
    }

    public Set<k> Mp() {
        return this.aXi;
    }

    public Map<String, Set<k>> Mq() {
        return this.aXj;
    }

    @Nullable
    public o a(a aVar, long j) {
        List<o> list = this.aXY;
        o oVar = null;
        if (list == null || list.size() == 0) {
            return null;
        }
        List<o> arrayList = new ArrayList(3);
        for (String str : this.aXZ) {
            for (o oVar2 : this.aXY) {
                String strMJ = oVar2.MJ();
                if (StringUtils.isValidString(strMJ) && str.equalsIgnoreCase(strMJ)) {
                    arrayList.add(oVar2);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList = this.aXY;
        }
        Collections.sort(arrayList, new Comparator<o>() { // from class: com.applovin.impl.b.n.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(o oVar3, o oVar4) {
                return Long.compare(oVar3.MK(), oVar4.MK());
            }
        });
        if (aVar != a.DYNAMIC) {
            return aVar == a.LOW ? (o) arrayList.get(0) : aVar == a.MEDIUM ? (o) arrayList.get(arrayList.size() / 2) : (o) arrayList.get(arrayList.size() - 1);
        }
        for (o oVar3 : arrayList) {
            if (oVar3.MK() > j) {
                break;
            }
            oVar = oVar3;
        }
        return oVar != null ? oVar : (o) arrayList.get(0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        if (this.aYa != nVar.aYa) {
            return false;
        }
        List<o> list = this.aXY;
        if (list == null ? nVar.aXY != null : !list.equals(nVar.aXY)) {
            return false;
        }
        Uri uri = this.aXg;
        if (uri == null ? nVar.aXg != null : !uri.equals(nVar.aXg)) {
            return false;
        }
        Set<k> set = this.aXi;
        if (set == null ? nVar.aXi != null : !set.equals(nVar.aXi)) {
            return false;
        }
        Map<String, Set<k>> map = this.aXj;
        Map<String, Set<k>> map2 = nVar.aXj;
        return map != null ? map.equals(map2) : map2 == null;
    }

    public int hashCode() {
        List<o> list = this.aXY;
        int iHashCode = (((list != null ? list.hashCode() : 0) * 31) + this.aYa) * 31;
        Uri uri = this.aXg;
        int iHashCode2 = (iHashCode + (uri != null ? uri.hashCode() : 0)) * 31;
        Set<k> set = this.aXi;
        int iHashCode3 = (iHashCode2 + (set != null ? set.hashCode() : 0)) * 31;
        Map<String, Set<k>> map = this.aXj;
        return iHashCode3 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "VastVideoCreative{videoFiles=" + this.aXY + ", durationSeconds=" + this.aYa + ", destinationUri=" + this.aXg + ", clickTrackers=" + this.aXi + ", eventTrackers=" + this.aXj + ", industryIcon=" + this.aYb + '}';
    }
}
