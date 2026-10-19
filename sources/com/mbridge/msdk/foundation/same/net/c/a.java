package com.mbridge.msdk.foundation.same.net.c;

import com.mbridge.msdk.foundation.same.net.f;
import com.mbridge.msdk.foundation.same.net.l;
import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: CommonStringResponseHandler.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends f<String> {
    private static final String a = "a";

    public abstract void a(String str);

    public abstract void b(String str);

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onError(com.mbridge.msdk.foundation.same.net.b.a aVar) {
        aa.d(a, "errorCode = " + aVar.a);
        b(com.mbridge.msdk.foundation.same.net.g.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onSuccess(l<String> lVar) {
        if (lVar != null) {
            a(lVar.a);
        }
    }
}
