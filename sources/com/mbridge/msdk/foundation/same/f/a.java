package com.mbridge.msdk.foundation.same.f;

import com.mbridge.msdk.foundation.same.net.g.d;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: ReportTask.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a implements Runnable {
    private String a;
    private String b;

    public a(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            new com.mbridge.msdk.foundation.same.report.d.a(com.mbridge.msdk.foundation.controller.b.d().g()).post(0, d.a().a, q.a(this.a, com.mbridge.msdk.foundation.controller.b.d().g(), this.b), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.f.a.1
                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onFailed(String str) {
                    aa.d("ReportTask", str);
                }

                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onSuccess(String str) {
                    aa.d("ReportTask", str);
                }
            });
        } catch (Throwable th) {
            aa.d("ReportTask", th.getMessage());
        }
    }
}
