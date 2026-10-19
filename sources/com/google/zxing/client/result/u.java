package com.google.zxing.client.result;

/* JADX INFO: compiled from: SMSTOMMSTOResultParser.java */
/* JADX INFO: loaded from: classes3.dex */
public final class u extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public t i(com.google.zxing.d dVar) {
        String strSubstring;
        String strC = ResultParser.c(dVar);
        if (!strC.startsWith("smsto:") && !strC.startsWith("SMSTO:") && !strC.startsWith("mmsto:") && !strC.startsWith("MMSTO:")) {
            return null;
        }
        String strSubstring2 = strC.substring(6);
        int iIndexOf = strSubstring2.indexOf(58);
        if (iIndexOf >= 0) {
            strSubstring = strSubstring2.substring(iIndexOf + 1);
            strSubstring2 = strSubstring2.substring(0, iIndexOf);
        } else {
            strSubstring = null;
        }
        return new t(strSubstring2, (String) null, (String) null, strSubstring);
    }
}
