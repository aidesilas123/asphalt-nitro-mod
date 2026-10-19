package com.google.zxing.client.result;

/* JADX INFO: compiled from: AddressBookDoCoMoResultParser.java */
/* JADX INFO: loaded from: classes3.dex */
public final class c extends a {
    private static String q(String str) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf < 0) {
            return str;
        }
        return str.substring(iIndexOf + 1) + ' ' + str.substring(0, iIndexOf);
    }

    @Override // com.google.zxing.client.result.ResultParser
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public d i(com.google.zxing.d dVar) {
        String[] strArrN;
        String strC = ResultParser.c(dVar);
        if (!strC.startsWith("MECARD:") || (strArrN = a.n("N:", strC)) == null) {
            return null;
        }
        String strQ = q(strArrN[0]);
        String strO = a.o("SOUND:", strC, true);
        String[] strArrN2 = a.n("TEL:", strC);
        String[] strArrN3 = a.n("EMAIL:", strC);
        String strO2 = a.o("NOTE:", strC, false);
        String[] strArrN4 = a.n("ADR:", strC);
        String strO3 = a.o("BDAY:", strC, true);
        return new d(ResultParser.h(strQ), null, strO, strArrN2, null, strArrN3, null, null, strO2, strArrN4, null, a.o("ORG:", strC, true), !ResultParser.d(strO3, 8) ? null : strO3, null, a.n("URL:", strC), null);
    }
}
