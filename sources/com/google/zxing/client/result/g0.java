package com.google.zxing.client.result;

/* JADX INFO: compiled from: WifiResultParser.java */
/* JADX INFO: loaded from: classes3.dex */
public final class g0 extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public f0 i(com.google.zxing.d dVar) {
        String strSubstring;
        String strG;
        String str;
        boolean z;
        String strC = ResultParser.c(dVar);
        if (!strC.startsWith("WIFI:") || (strG = ResultParser.g("S:", (strSubstring = strC.substring(5)), ';', false)) == null || strG.isEmpty()) {
            return null;
        }
        String strG2 = ResultParser.g("P:", strSubstring, ';', false);
        String strG3 = ResultParser.g("T:", strSubstring, ';', false);
        if (strG3 == null) {
            strG3 = "nopass";
        }
        String str2 = strG3;
        String strG4 = ResultParser.g("PH2:", strSubstring, ';', false);
        String strG5 = ResultParser.g("H:", strSubstring, ';', false);
        if (strG5 == null) {
            str = strG4;
        } else {
            if (strG4 != null || "true".equalsIgnoreCase(strG5) || "false".equalsIgnoreCase(strG5)) {
                str = strG4;
                z = Boolean.parseBoolean(strG5);
                return new f0(str2, strG, strG2, z, ResultParser.g("I:", strSubstring, ';', false), ResultParser.g("A:", strSubstring, ';', false), ResultParser.g("E:", strSubstring, ';', false), str);
            }
            str = strG5;
        }
        z = false;
        return new f0(str2, strG, strG2, z, ResultParser.g("I:", strSubstring, ';', false), ResultParser.g("A:", strSubstring, ';', false), ResultParser.g("E:", strSubstring, ';', false), str);
    }
}
