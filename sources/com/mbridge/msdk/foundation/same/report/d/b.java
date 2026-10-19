package com.mbridge.msdk.foundation.same.report.d;

import com.mbridge.msdk.foundation.same.net.f;
import com.mbridge.msdk.foundation.same.net.l;

/* JADX INFO: compiled from: ReportResponseHandler.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class b extends f<String> {
    private static final String TAG = "b";

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onError(com.mbridge.msdk.foundation.same.net.b.a aVar) {
        onFailed(com.mbridge.msdk.foundation.same.net.g.a.a(aVar));
    }

    public abstract void onFailed(String str);

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onSuccess(l<String> lVar) {
        if (lVar != null) {
            onSuccess(lVar.a);
        }
    }

    public abstract void onSuccess(String str);
}
