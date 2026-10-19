package com.mbridge.msdk.mbbid.common;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.tools.ad;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.g;
import com.mbridge.msdk.foundation.tools.u;
import com.mbridge.msdk.foundation.tools.v;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.out.MBConfiguration;

/* JADX INFO: compiled from: AreaBidCommon.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    public static String a(Context context, String str, String str2) {
        long jA;
        StringBuffer stringBuffer = new StringBuffer();
        if (context != null) {
            try {
                if (com.mbridge.msdk.foundation.controller.b.d().g() == null) {
                    com.mbridge.msdk.foundation.controller.b.d().b(context);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        e eVarB = f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
        if (eVarB == null) {
            eVarB = f.a().b();
        }
        stringBuffer.append(g.a());
        stringBuffer.append("|");
        stringBuffer.append("|");
        stringBuffer.append("|");
        stringBuffer.append("|");
        stringBuffer.append("|");
        stringBuffer.append(w.k());
        stringBuffer.append("|");
        stringBuffer.append(w.j());
        stringBuffer.append("|");
        stringBuffer.append(w.r(context));
        stringBuffer.append("|");
        stringBuffer.append(MBConfiguration.SDK_VERSION);
        stringBuffer.append("|");
        stringBuffer.append(w.l(context));
        stringBuffer.append("x");
        stringBuffer.append(w.m(context));
        stringBuffer.append("|");
        stringBuffer.append(w.l());
        stringBuffer.append("|");
        stringBuffer.append("|");
        stringBuffer.append(af.a(20));
        stringBuffer.append("|");
        stringBuffer.append(System.currentTimeMillis());
        stringBuffer.append("|");
        stringBuffer.append(com.mbridge.msdk.foundation.same.a.a);
        stringBuffer.append("|");
        stringBuffer.append(w.v());
        stringBuffer.append("|");
        stringBuffer.append(w.t());
        stringBuffer.append("|");
        stringBuffer.append("|");
        stringBuffer.append("|");
        stringBuffer.append("|");
        stringBuffer.append(ad.b());
        stringBuffer.append("|");
        stringBuffer.append(ad.a());
        stringBuffer.append("|");
        try {
            jA = v.a();
        } catch (Exception unused) {
            jA = 0;
        }
        if (jA > 0) {
            stringBuffer.append(jA);
            stringBuffer.append("|");
        } else {
            stringBuffer.append("");
            stringBuffer.append("|");
        }
        stringBuffer.append("|");
        stringBuffer.append("|");
        stringBuffer.append(com.mbridge.msdk.foundation.a.a.a.a().b(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B));
        stringBuffer.append("|");
        stringBuffer.append(com.mbridge.msdk.foundation.a.a.a.a().b("c"));
        stringBuffer.append("|");
        stringBuffer.append(w.u());
        String strC = eVarB != null ? eVarB.c() : "";
        stringBuffer.append("|");
        stringBuffer.append(strC);
        stringBuffer.append("|");
        stringBuffer.append(af.f());
        stringBuffer.append("|");
        String strG = af.g();
        if (TextUtils.isEmpty(strG)) {
            strG = "";
        }
        stringBuffer.append(strG);
        stringBuffer.append("|");
        stringBuffer.append(af.m(str));
        stringBuffer.append("|");
        stringBuffer.append("");
        stringBuffer.append("|");
        stringBuffer.append(w.g());
        stringBuffer.append("|");
        stringBuffer.append(w.f(context));
        stringBuffer.append("|");
        stringBuffer.append(w.h() + "");
        stringBuffer.append("|");
        stringBuffer.append(w.c(com.mbridge.msdk.foundation.controller.b.d().i()) + "");
        stringBuffer.append("|");
        stringBuffer.append(w.x());
        stringBuffer.append("|");
        stringBuffer.append(com.mbridge.msdk.foundation.controller.authoritycontroller.a.g() ? "1" : MBridgeConstans.API_REUQEST_CATEGORY_APP);
        stringBuffer.append("|");
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            stringBuffer.append("");
        }
        stringBuffer.append("|");
        stringBuffer.append("");
        stringBuffer.append("|");
        stringBuffer.append("");
        stringBuffer.append("|");
        stringBuffer.append("");
        stringBuffer.append("|");
        stringBuffer.append("1");
        stringBuffer.append("|");
        stringBuffer.append(com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().e());
        stringBuffer.append("|");
        if (w.y() != 0) {
            stringBuffer.append(w.y() + "");
        }
        if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
            stringBuffer.append("|");
            stringBuffer.append(1);
        } else {
            stringBuffer.append("|");
            stringBuffer.append("");
        }
        stringBuffer.append("|");
        stringBuffer.append("");
        stringBuffer.append("|");
        stringBuffer.append(str2);
        stringBuffer.append("|");
        stringBuffer.append(w.e(context));
        stringBuffer.append("|");
        stringBuffer.append(w.d(context));
        stringBuffer.append("|");
        stringBuffer.append(g.e());
        stringBuffer.append("|");
        stringBuffer.append(g.b());
        stringBuffer.append("|");
        stringBuffer.append(com.mbridge.msdk.f.b.a);
        stringBuffer.append("|");
        stringBuffer.append("");
        return u.a(stringBuffer.toString());
    }
}
