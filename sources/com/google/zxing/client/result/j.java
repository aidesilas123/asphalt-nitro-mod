package com.google.zxing.client.result;

import java.util.regex.Pattern;

/* JADX INFO: compiled from: EmailDoCoMoResultParser.java */
/* JADX INFO: loaded from: classes3.dex */
public final class j extends a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Pattern f4307f = Pattern.compile("[a-zA-Z0-9@.!#$%&'*+\\-/=?^_`{|}~]+");

    static boolean p(String str) {
        return str != null && f4307f.matcher(str).matches() && str.indexOf(64) >= 0;
    }

    @Override // com.google.zxing.client.result.ResultParser
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public h i(com.google.zxing.d dVar) {
        String[] strArrN;
        String strC = ResultParser.c(dVar);
        if (!strC.startsWith("MATMSG:") || (strArrN = a.n("TO:", strC)) == null) {
            return null;
        }
        for (String str : strArrN) {
            if (!p(str)) {
                return null;
            }
        }
        return new h(strArrN, null, null, a.o("SUB:", strC, false), a.o("BODY:", strC, false));
    }
}
