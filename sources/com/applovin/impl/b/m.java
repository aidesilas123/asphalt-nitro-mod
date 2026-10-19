package com.applovin.impl.b;

import android.net.Uri;
import android.webkit.URLUtil;
import androidx.core.app.NotificationCompat;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.y;
import com.applovin.impl.sdk.x;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class m {
    private static final DateFormat aXW = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);
    private static final Random aXX = new Random(System.currentTimeMillis());

    private static String ME() {
        return Integer.toString(aXX.nextInt(89999999) + 10000000);
    }

    private static String MF() {
        DateFormat dateFormat = aXW;
        dateFormat.setTimeZone(TimeZone.getDefault());
        return dateFormat.format(new Date());
    }

    public static Uri a(String str, long j, Uri uri, f fVar, com.applovin.impl.sdk.n nVar) {
        if (!URLUtil.isValidUrl(str)) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().i("VastUtils", "Unable to replace macros in invalid URL string.");
            }
            return null;
        }
        try {
            String string = Integer.toString(fVar.getErrorCode());
            String strReplace = str.replace("[ERRORCODE]", string).replace("[REASON]", string);
            if (j >= 0) {
                strReplace = strReplace.replace("[CONTENTPLAYHEAD]", cd(j));
            }
            if (uri != null) {
                strReplace = strReplace.replace("[ASSETURI]", uri.toString());
            }
            return Uri.parse(strReplace.replace("[CACHEBUSTING]", ME()).replace("[TIMESTAMP]", MF()));
        } catch (Throwable th) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().c("VastUtils", "Unable to replace macros in URL string " + str, th);
            }
            nVar.Cs().g("VastUtils", th);
            return null;
        }
    }

    public static f a(a aVar) {
        if (b(aVar) || c(aVar)) {
            return null;
        }
        return f.GENERAL_WRAPPER_ERROR;
    }

    public static String a(e eVar) {
        y yVarDL;
        if (eVar == null) {
            throw new IllegalArgumentException("Unable to get resolution uri string for fetching the next wrapper or inline response in the chain");
        }
        List<y> listMs = eVar.Ms();
        int size = eVar.Ms().size();
        if (size <= 0 || (yVarDL = listMs.get(size - 1).dL("VASTAdTagURI")) == null) {
            return null;
        }
        return yVarDL.LK();
    }

    public static String a(y yVar, String str, String str2) {
        y yVarDK = yVar.dK(str);
        if (yVarDK != null) {
            String strLK = yVarDK.LK();
            if (StringUtils.isValidString(strLK)) {
                return strLK;
            }
        }
        return str2;
    }

    private static Set<k> a(e eVar, com.applovin.impl.sdk.n nVar) {
        if (eVar == null) {
            return null;
        }
        List<y> listMs = eVar.Ms();
        Set<k> hashSet = new HashSet<>(listMs.size());
        for (y yVar : listMs) {
            y yVarDL = yVar.dL("Wrapper");
            if (yVarDL == null) {
                yVarDL = yVar.dL("InLine");
            }
            hashSet = yVarDL != null ? a(hashSet, yVarDL.dJ("Error"), eVar, nVar) : a(hashSet, yVar.dJ("Error"), eVar, nVar);
        }
        nVar.BN();
        if (x.Fn()) {
            nVar.BN().f("VastUtils", "Retrieved " + hashSet.size() + " top level error trackers: " + hashSet);
        }
        return hashSet;
    }

    private static Set<k> a(Set<k> set, List<y> list, e eVar, com.applovin.impl.sdk.n nVar) {
        if (list != null) {
            Iterator<y> it = list.iterator();
            while (it.hasNext()) {
                k kVarB = k.b(it.next(), eVar, nVar);
                if (kVarB != null) {
                    set.add(kVarB);
                }
            }
        }
        return set;
    }

    public static void a(e eVar, AppLovinAdLoadListener appLovinAdLoadListener, f fVar, int i, com.applovin.impl.sdk.n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("Unable to handle failure. No sdk specified.");
        }
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.failedToReceiveAd(i);
        }
        a(a(eVar, nVar), fVar, nVar);
    }

    public static void a(y yVar, Map<String, Set<k>> map, e eVar, com.applovin.impl.sdk.n nVar) {
        List<y> listDJ;
        if (nVar == null) {
            throw new IllegalArgumentException("Unable to render event trackers. No sdk specified.");
        }
        if (yVar == null) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().i("VastUtils", "Unable to render event trackers; null node provided");
                return;
            }
            return;
        }
        if (map == null) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().i("VastUtils", "Unable to render event trackers; null event trackers provided");
                return;
            }
            return;
        }
        y yVarDK = yVar.dK("TrackingEvents");
        if (yVarDK == null || (listDJ = yVarDK.dJ("Tracking")) == null) {
            return;
        }
        for (y yVar2 : listDJ) {
            String str = yVar2.LJ().get(NotificationCompat.CATEGORY_EVENT);
            if (StringUtils.isValidString(str)) {
                k kVarB = k.b(yVar2, eVar, nVar);
                if (kVarB != null) {
                    Set<k> set = map.get(str);
                    if (set != null) {
                        set.add(kVarB);
                    } else {
                        HashSet hashSet = new HashSet();
                        hashSet.add(kVarB);
                        map.put(str, hashSet);
                    }
                }
            } else {
                nVar.BN();
                if (x.Fn()) {
                    nVar.BN().i("VastUtils", "Could not find event for tracking node = " + yVar2);
                }
            }
        }
    }

    public static void a(List<y> list, Set<k> set, e eVar, com.applovin.impl.sdk.n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("Unable to render trackers. No sdk specified.");
        }
        if (list == null) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().i("VastUtils", "Unable to render trackers; null nodes provided");
                return;
            }
            return;
        }
        if (set == null) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().i("VastUtils", "Unable to render trackers; null trackers provided");
                return;
            }
            return;
        }
        Iterator<y> it = list.iterator();
        while (it.hasNext()) {
            k kVarB = k.b(it.next(), eVar, nVar);
            if (kVarB != null) {
                set.add(kVarB);
            }
        }
    }

    public static void a(Set<k> set, long j, Uri uri, f fVar, com.applovin.impl.sdk.n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("Unable to fire trackers. No sdk specified.");
        }
        if (set == null || set.isEmpty()) {
            return;
        }
        Iterator<k> it = set.iterator();
        while (it.hasNext()) {
            Uri uriA = a(it.next().MD(), j, uri, fVar, nVar);
            if (uriA != null) {
                nVar.Cu().a(com.applovin.impl.sdk.network.h.ID().dd(uriA.toString()).aV(false).IF(), false);
            }
        }
    }

    public static void a(Set<k> set, f fVar, com.applovin.impl.sdk.n nVar) {
        a(set, -1L, (Uri) null, fVar, nVar);
    }

    public static void a(Set<k> set, com.applovin.impl.sdk.n nVar) {
        a(set, -1L, (Uri) null, f.UNSPECIFIED, nVar);
    }

    public static boolean b(a aVar) {
        n nVarLU;
        List<o> listMG;
        return (aVar == null || (nVarLU = aVar.LU()) == null || (listMG = nVarLU.MG()) == null || listMG.isEmpty()) ? false : true;
    }

    public static boolean c(a aVar) {
        d dVarLX;
        i iVarMo;
        if (aVar == null || (dVarLX = aVar.LX()) == null || (iVarMo = dVarLX.Mo()) == null) {
            return false;
        }
        return iVarMo.MB() != null || StringUtils.isValidString(iVarMo.MC());
    }

    private static String cd(long j) {
        if (j <= 0) {
            return "00:00:00.000";
        }
        TimeUnit timeUnit = TimeUnit.SECONDS;
        long hours = timeUnit.toHours(j);
        long minutes = timeUnit.toMinutes(j);
        TimeUnit timeUnit2 = TimeUnit.MINUTES;
        return String.format(Locale.US, "%02d:%02d:%02d.000", Long.valueOf(hours), Long.valueOf(minutes % timeUnit2.toSeconds(1L)), Long.valueOf(j % timeUnit2.toSeconds(1L)));
    }

    public static boolean d(y yVar) {
        if (yVar != null) {
            return yVar.dL("Wrapper") != null;
        }
        throw new IllegalArgumentException("Unable to check if a given XmlNode contains a wrapper response");
    }

    public static boolean e(y yVar) {
        if (yVar != null) {
            return yVar.dL("InLine") != null;
        }
        throw new IllegalArgumentException("Unable to check if a given XmlNode contains an inline response");
    }
}
