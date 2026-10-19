package com.mbridge.msdk.foundation.same.report;

import java.io.UnsupportedEncodingException;

/* JADX INFO: compiled from: StringReportResponseHandler.java */
/* JADX INFO: loaded from: classes4.dex */
public final class u extends com.mbridge.msdk.e.v {
    @Override // com.mbridge.msdk.e.v
    protected final com.mbridge.msdk.e.a.o<String> a(com.mbridge.msdk.e.a.k kVar) {
        String str;
        try {
            str = new String(kVar.b, com.mbridge.msdk.e.a.a.e.a(kVar.c, "ISO-8859-1"));
        } catch (UnsupportedEncodingException unused) {
            str = new String(kVar.b);
        }
        return com.mbridge.msdk.e.a.o.a(str, com.mbridge.msdk.e.a.a.e.a(kVar));
    }
}
