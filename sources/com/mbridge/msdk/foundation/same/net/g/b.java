package com.mbridge.msdk.foundation.same.net.g;

import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.json.b4;
import com.json.o2;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ak;
import com.mbridge.msdk.foundation.tools.al;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

/* JADX INFO: compiled from: HttpUtils.java */
/* JADX INFO: loaded from: classes4.dex */
public class b {
    private static final String a = "b";

    public static String a(List<com.mbridge.msdk.foundation.same.net.d.b> list) {
        com.mbridge.msdk.foundation.same.net.d.b bVarB = b(list, b4.I);
        if (bVarB != null) {
            String strB = bVarB.b();
            if (!TextUtils.isEmpty(strB)) {
                String[] strArrSplit = strB.split(";");
                for (int i = 1; i < strArrSplit.length; i++) {
                    String[] strArrSplit2 = strArrSplit[i].trim().split(o2.i.b);
                    if (strArrSplit2.length == 2 && strArrSplit2[0].equals(b4.K)) {
                        return strArrSplit2[1];
                    }
                }
            }
        }
        return C.UTF8_NAME;
    }

    public static String a(List<com.mbridge.msdk.foundation.same.net.d.b> list, String str) {
        com.mbridge.msdk.foundation.same.net.d.b bVarB = b(list, str);
        return bVarB != null ? bVarB.b() : "";
    }

    public static void a(com.mbridge.msdk.foundation.same.net.h.d dVar, String str, String str2) {
        if (dVar != null) {
            try {
                if (!ak.a(str) && !ak.a(str2)) {
                    dVar.a(str, str2);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (str.startsWith(ProxyConfig.MATCH_HTTP)) {
                str = al.a(str);
            }
            if (!TextUtils.isEmpty(str) && com.mbridge.msdk.f.b.c()) {
                com.mbridge.msdk.foundation.same.net.a.a.a().a(str);
            }
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
    }

    private static com.mbridge.msdk.foundation.same.net.d.b b(List<com.mbridge.msdk.foundation.same.net.d.b> list, String str) {
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                com.mbridge.msdk.foundation.same.net.d.b bVar = list.get(i);
                if (bVar != null && str.equals(bVar.a())) {
                    return bVar;
                }
            }
        }
        return null;
    }

    public static boolean b(List<com.mbridge.msdk.foundation.same.net.d.b> list) {
        return TextUtils.equals(a(list, "Content-Encoding"), "gzip");
    }
}
