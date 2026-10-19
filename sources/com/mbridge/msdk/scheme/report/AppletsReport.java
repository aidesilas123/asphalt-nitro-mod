package com.mbridge.msdk.scheme.report;

import android.content.Context;
import android.text.TextUtils;
import com.json.o2;
import com.mbridge.msdk.foundation.same.a;
import com.mbridge.msdk.foundation.same.net.g.d;
import com.mbridge.msdk.foundation.same.report.d.b;
import com.mbridge.msdk.foundation.same.report.k;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.w;

/* JADX INFO: loaded from: classes4.dex */
public class AppletsReport {
    public static final String APPLETS_API_VALUE = "2000118";
    private static final String TAG = "com.mbridge.msdk.scheme.report.AppletsReport";

    public static void reportAppletsLoadState(Context context, String str, String str2, String str3) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    return;
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("key=2000118&");
                stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
                stringBuffer.append("unit_id=" + str2 + o2.i.c);
                if (!TextUtils.isEmpty(a.l)) {
                    stringBuffer.append("b=" + a.l + o2.i.c);
                }
                if (!TextUtils.isEmpty(a.m)) {
                    stringBuffer.append("c=" + a.m + o2.i.c);
                }
                stringBuffer.append("hb=0&");
                if (!TextUtils.isEmpty(str3)) {
                    stringBuffer.append("rid_n=");
                    stringBuffer.append(str3);
                    stringBuffer.append(o2.i.c);
                }
                stringBuffer.append("reason=" + str);
                if (k.a().c()) {
                    k.a().a(stringBuffer.toString());
                } else {
                    reportLoadData(context, stringBuffer.toString());
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private static void reportLoadData(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            new com.mbridge.msdk.foundation.same.report.d.a(context).post(0, d.a().a, q.a(str, context), new b() { // from class: com.mbridge.msdk.scheme.report.AppletsReport.1
                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onFailed(String str2) {
                    aa.d(AppletsReport.TAG, str2);
                }

                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onSuccess(String str2) {
                    aa.d(AppletsReport.TAG, str2);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            aa.d(TAG, e2.getMessage());
        }
    }
}
