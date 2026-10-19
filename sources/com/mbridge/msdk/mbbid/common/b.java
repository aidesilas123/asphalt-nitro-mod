package com.mbridge.msdk.mbbid.common;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.ah;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.mbbid.out.BidConstants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: compiled from: BidCommon.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b extends a {
    public static Map<String, String> a = new HashMap();
    public static JSONArray b;

    public static String a(Context context, String str) {
        HashMap map = new HashMap();
        map.put(BidConstants.BID_FILTER_KEY_UNIT_ID, str);
        return a(context, map);
    }

    public static String a(Context context, Map<String, String> map) {
        String md5;
        a = map;
        try {
            if (com.mbridge.msdk.foundation.controller.b.d().g() == null) {
                com.mbridge.msdk.foundation.controller.b.d().b(context);
            }
            if (b == null) {
                b = f.a().g(com.mbridge.msdk.foundation.controller.b.d().h()).i();
            }
            md5 = SameMD5.getMD5(af.c());
            try {
                if (b(context, md5)) {
                    return "";
                }
                Map<String, String> map2 = a;
                return a.a(context, (map2 == null || !map2.containsKey(BidConstants.BID_FILTER_KEY_UNIT_ID)) ? "" : a.get(BidConstants.BID_FILTER_KEY_UNIT_ID), md5);
            } catch (Exception unused) {
                return a.a(context, "", md5);
            }
        } catch (Exception unused2) {
            md5 = "";
        }
    }

    private static void a(Context context, String str, long j) {
        ah.a(context, str, Long.valueOf(j));
    }

    private static void a(String str, int i) {
        String str2;
        String str3;
        Map<String, String> map = a;
        if (map != null) {
            String str4 = map.containsKey(BidConstants.BID_FILTER_KEY_UNIT_ID) ? a.get(BidConstants.BID_FILTER_KEY_UNIT_ID) : "";
            if (a.containsKey(BidConstants.BID_FILTER_KEY_AD_TYPE)) {
                str2 = str4;
                str3 = a.get(BidConstants.BID_FILTER_KEY_AD_TYPE);
            } else {
                str2 = str4;
                str3 = "";
            }
        } else {
            str2 = "";
            str3 = str2;
        }
        HashMap map2 = new HashMap();
        map2.put("filter", i + "");
        m.a().a("2000124", str, "buyer_id", str2, str3, map2);
    }

    private static boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        if (str.equals(str2)) {
            return true;
        }
        for (String str3 : str.split("-")) {
            if (!TextUtils.isEmpty(str3) && str3.length() > 2 && str3.startsWith("{") && str3.endsWith("}")) {
                String strSubstring = str3.substring(1, str3.length() - 1);
                Map<String, String> map = a;
                if (map != null && map.containsKey(strSubstring)) {
                    String strValueOf = String.valueOf(a.get(strSubstring));
                    if (!TextUtils.isEmpty(strValueOf)) {
                        str = str.replace(str3, strValueOf + "");
                    }
                } else if (BidConstants.BID_FILTER_KEY_NETWORK.equals(str3)) {
                    str = str.replace(str3, w.r(com.mbridge.msdk.foundation.controller.b.d().g()) + "");
                }
            }
        }
        return str.equals(str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c7, code lost:
    
        r5 = java.lang.System.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00cd, code lost:
    
        if (r13 <= 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00de, code lost:
    
        if ((r5 - r13) >= (((long) r8.optInt("ttl")) * 1000)) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f8, code lost:
    
        if ((r8.optDouble("rate") * 100.0d) < new java.util.Random().nextInt(100)) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00fa, code lost:
    
        r0 = 1;
        r3 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00fd, code lost:
    
        r0 = 2;
        r3 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ff, code lost:
    
        r4 = r0;
        r0 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0102, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0103, code lost:
    
        r5 = r0;
        r3 = r8;
        r0 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0107, code lost:
    
        a(r19, r10, r5);
        r0 = 1;
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x010c, code lost:
    
        r5 = r4;
        r4 = r3;
        r3 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0110, code lost:
    
        a(r19, r10, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0113, code lost:
    
        r3 = r8;
        r0 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0116, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0117, code lost:
    
        r5 = r0;
        r3 = r8;
        r0 = 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:67:0x013e A[Catch: all -> 0x0270, TryCatch #0 {all -> 0x0270, blocks: (B:65:0x0134, B:67:0x013e, B:69:0x0192, B:70:0x01ad, B:72:0x01c8, B:74:0x01d0, B:75:0x01f3, B:77:0x01fd, B:78:0x0220, B:80:0x022a, B:81:0x024d, B:83:0x025c, B:84:0x0268), top: B:95:0x0134 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x027f A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0281 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean b(android.content.Context r19, java.lang.String r20) {
        /*
            Method dump skipped, instruction units count: 648
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.mbbid.common.b.b(android.content.Context, java.lang.String):boolean");
    }
}
