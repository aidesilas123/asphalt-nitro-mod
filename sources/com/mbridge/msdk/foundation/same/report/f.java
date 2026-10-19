package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.report.b;
import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: DefaultReport.java */
/* JADX INFO: loaded from: classes4.dex */
public final class f implements o {

    /* JADX INFO: compiled from: DefaultReport.java */
    private static final class a extends com.mbridge.msdk.foundation.same.report.d.b {
        private final Context a;
        private final b.InterfaceC0407b b;
        private final b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final com.mbridge.msdk.foundation.same.net.h.d f7186d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f7187e;

        private a(Context context, b.InterfaceC0407b interfaceC0407b, b bVar, com.mbridge.msdk.foundation.same.net.h.d dVar) {
            this.a = context;
            this.b = interfaceC0407b;
            this.c = bVar;
            this.f7186d = dVar;
            this.f7187e = bVar.k();
        }

        @Override // com.mbridge.msdk.foundation.same.report.d.b
        public final void onFailed(String str) {
            if (MBridgeConstans.DEBUG) {
                aa.d("CommonReport", "report failed: " + str + " and isRetry = " + this.f7187e);
            }
            b bVar = this.c;
            if (bVar == null || !this.f7187e || this.a == null) {
                return;
            }
            final String strP = bVar.p();
            if (TextUtils.isEmpty(strP)) {
                return;
            }
            final long jQ = this.c.q();
            if (jQ <= 0) {
                jQ = System.currentTimeMillis();
            }
            final Context context = this.a;
            this.c.c().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.report.f.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (TextUtils.isEmpty(strP) || context == null) {
                        return;
                    }
                    try {
                        com.mbridge.msdk.foundation.entity.l lVar = new com.mbridge.msdk.foundation.entity.l();
                        lVar.c(strP);
                        lVar.a(jQ);
                        lVar.a(0);
                        lVar.b("POST");
                        lVar.a(com.mbridge.msdk.foundation.same.net.g.d.a().a);
                        com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.h.a(context)).a(lVar);
                    } catch (Exception e2) {
                        if (MBridgeConstans.DEBUG) {
                            aa.d("CommonReport", "createReportDataThread error: " + e2.getMessage());
                        }
                    }
                }
            });
        }

        @Override // com.mbridge.msdk.foundation.same.report.d.b
        public final void onSuccess(String str) {
            if (MBridgeConstans.DEBUG) {
                aa.a("CommonReport", "report success: " + str);
            }
        }
    }

    @Override // com.mbridge.msdk.foundation.same.report.o
    public final void a(Context context, b.InterfaceC0407b interfaceC0407b, b bVar, com.mbridge.msdk.foundation.same.net.h.d dVar) throws Exception {
        if (bVar == null || dVar == null) {
            if (MBridgeConstans.DEBUG) {
                aa.d("CommonReport", "reportEvent or params or reportEvent is null");
                return;
            }
            return;
        }
        com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(context);
        if (bVar.l() == null) {
            new com.mbridge.msdk.foundation.same.net.b();
        }
        if (bVar.j()) {
            if (!k.a().c() || TextUtils.isEmpty(bVar.p())) {
                aVar.postFocusReport(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, dVar, new a(context, interfaceC0407b, bVar, dVar));
            } else {
                k.a().a(bVar.p());
            }
        } else if (!k.a().c() || TextUtils.isEmpty(bVar.p())) {
            aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, dVar, new a(context, interfaceC0407b, bVar, dVar));
        } else {
            k.a().a(bVar.p());
        }
        if (MBridgeConstans.DEBUG) {
            aa.a("CommonReport", "report: key = " + bVar.i() + " retry = " + bVar.k() + " isFocusReport = " + bVar.j() + " isTimer = " + bVar.o() + "\ndata = " + bVar.p());
        }
    }
}
