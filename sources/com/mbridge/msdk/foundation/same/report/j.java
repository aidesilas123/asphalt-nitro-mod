package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.json.o2;
import com.mbridge.msdk.foundation.same.report.b;
import com.mbridge.msdk.foundation.tools.aa;
import org.json.JSONObject;

/* JADX INFO: compiled from: EventLibraryReport.java */
/* JADX INFO: loaded from: classes4.dex */
public final class j implements o {
    private com.mbridge.msdk.e.m a;

    private static JSONObject a(String str) {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        try {
            for (String str2 : str.split(o2.i.c)) {
                String[] strArrSplit = str2.split(o2.i.b);
                if (strArrSplit.length == 2) {
                    jSONObject.put(strArrSplit[0], strArrSplit[1]);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    @Override // com.mbridge.msdk.foundation.same.report.o
    public final void a(Context context, b.InterfaceC0407b interfaceC0407b, b bVar, com.mbridge.msdk.foundation.same.net.h.d dVar) throws Exception {
        com.mbridge.msdk.c.h hVarE;
        if (this.a == null) {
            this.a = m.a().d();
        }
        if (this.a == null) {
            return;
        }
        if (bVar == null) {
            aa.d("EventLibraryReport", "reportEvent is null, report failed");
            if (interfaceC0407b != null) {
                interfaceC0407b.a(null, 0, "reportEvent is null");
                return;
            }
            return;
        }
        try {
            String strP = bVar.p();
            com.mbridge.msdk.e.e eVar = new com.mbridge.msdk.e.e(bVar.i());
            JSONObject jSONObjectA = a(strP);
            if (jSONObjectA == null) {
                jSONObjectA = new JSONObject();
            }
            try {
                long[] jArrF = this.a.f();
                jSONObjectA.put("track_time", jArrF[0]);
                jSONObjectA.put("track_count", jArrF[1]);
                jSONObjectA.put(SDKAnalyticsEvents.PARAMETER_SESSION_ID, this.a.b());
            } catch (Exception unused) {
            }
            String strG = bVar.g();
            if (!TextUtils.isEmpty(strG) && (hVarE = com.mbridge.msdk.c.f.a().e(com.mbridge.msdk.foundation.controller.b.d().h(), strG)) != null && !TextUtils.isEmpty(hVarE.a())) {
                jSONObjectA.put("u_stid", hVarE.a());
            }
            eVar.a(jSONObjectA);
            eVar.b(0);
            eVar.a(0);
            this.a.a(eVar);
            if (interfaceC0407b != null) {
                interfaceC0407b.a(bVar);
            }
        } catch (Exception e2) {
            aa.d("EventLibraryReport", "report failed, exception: " + e2.getMessage());
            if (interfaceC0407b != null) {
                interfaceC0407b.a(bVar, 0, e2.getMessage());
            }
        }
    }
}
