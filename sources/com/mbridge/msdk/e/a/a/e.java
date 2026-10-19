package com.mbridge.msdk.e.a.a;

import com.json.b4;
import com.json.o2;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import com.mbridge.msdk.e.a.a;
import com.mbridge.msdk.e.a.v;
import com.mbridge.msdk.foundation.download.Command;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeSet;

/* JADX INFO: compiled from: HttpHeaderParser.java */
/* JADX INFO: loaded from: classes4.dex */
public final class e {
    private static long a(String str) {
        try {
            Date date = b("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str);
            if (date != null) {
                return date.getTime();
            }
            return 0L;
        } catch (ParseException e2) {
            if ("0".equals(str) || UniquePlacementId.NO_ID.equals(str)) {
                v.a("Unable to parse dateStr: %s, falling back to 0", str);
            } else {
                v.a(e2, "Unable to parse dateStr: %s, falling back to 0", str);
            }
            return 0L;
        }
    }

    public static a.C0396a a(com.mbridge.msdk.e.a.k kVar) {
        boolean z;
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = kVar.c;
        if (map == null) {
            return null;
        }
        String str = map.get("Date");
        long jA = str != null ? a(str) : 0L;
        String str2 = map.get("Cache-Control");
        int i = 0;
        if (str2 != null) {
            String[] strArrSplit = str2.split(",", 0);
            int i2 = 0;
            j = 0;
            j2 = 0;
            while (i < strArrSplit.length) {
                String strTrim = strArrSplit[i].trim();
                if (strTrim.equals("no-cache") || strTrim.equals("no-store")) {
                    return null;
                }
                if (strTrim.startsWith("max-age=")) {
                    try {
                        j = Long.parseLong(strTrim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (strTrim.startsWith("stale-while-revalidate=")) {
                    j2 = Long.parseLong(strTrim.substring(23));
                } else if (strTrim.equals("must-revalidate") || strTrim.equals("proxy-revalidate")) {
                    i2 = 1;
                }
                i++;
            }
            i = i2;
            z = true;
        } else {
            z = false;
            j = 0;
            j2 = 0;
        }
        String str3 = map.get("Expires");
        long jA2 = str3 != null ? a(str3) : 0L;
        String str4 = map.get("Last-Modified");
        long jA3 = str4 != null ? a(str4) : 0L;
        String str5 = map.get(Command.HTTP_HEADER_ETAG);
        if (z) {
            j4 = jCurrentTimeMillis + (j * 1000);
            if (i != 0) {
                j5 = j4;
            } else {
                Long.signum(j2);
                j5 = (j2 * 1000) + j4;
            }
            j3 = j5;
        } else {
            j3 = 0;
            if (jA <= 0 || jA2 < jA) {
                j4 = 0;
            } else {
                j4 = jCurrentTimeMillis + (jA2 - jA);
                j3 = j4;
            }
        }
        a.C0396a c0396a = new a.C0396a();
        c0396a.a = kVar.b;
        c0396a.b = str5;
        c0396a.f6938f = j4;
        c0396a.f6937e = j3;
        c0396a.c = jA;
        c0396a.f6936d = jA3;
        c0396a.f6939g = map;
        c0396a.h = kVar.f6950d;
        return c0396a;
    }

    static String a(long j) {
        return b("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(j));
    }

    public static String a(Map<String, String> map, String str) {
        String str2;
        if (map != null && (str2 = map.get(b4.I)) != null) {
            String[] strArrSplit = str2.split(";", 0);
            for (int i = 1; i < strArrSplit.length; i++) {
                String[] strArrSplit2 = strArrSplit[i].trim().split(o2.i.b, 0);
                if (strArrSplit2.length == 2 && strArrSplit2[0].equals(b4.K)) {
                    return strArrSplit2[1];
                }
            }
        }
        return str;
    }

    static List<com.mbridge.msdk.e.a.g> a(List<com.mbridge.msdk.e.a.g> list, a.C0396a c0396a) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator<com.mbridge.msdk.e.a.g> it = list.iterator();
            while (it.hasNext()) {
                treeSet.add(it.next().a());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<com.mbridge.msdk.e.a.g> list2 = c0396a.h;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (com.mbridge.msdk.e.a.g gVar : c0396a.h) {
                    if (!treeSet.contains(gVar.a())) {
                        arrayList.add(gVar);
                    }
                }
            }
        } else if (!c0396a.f6939g.isEmpty()) {
            for (Map.Entry<String, String> entry : c0396a.f6939g.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new com.mbridge.msdk.e.a.g(entry.getKey(), entry.getValue()));
                }
            }
        }
        return arrayList;
    }

    private static SimpleDateFormat b(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }
}
