package com.google.zxing.client.result;

/* JADX INFO: compiled from: URIParsedResult.java */
/* JADX INFO: loaded from: classes3.dex */
public final class y extends ParsedResult {
    private final String b;
    private final String c;

    public y(String str, String str2) {
        super(ParsedResultType.URI);
        this.b = c(str);
        this.c = str2;
    }

    private static boolean b(String str, int i) {
        int i2 = i + 1;
        int iIndexOf = str.indexOf(47, i2);
        if (iIndexOf < 0) {
            iIndexOf = str.length();
        }
        return ResultParser.e(str, i2, iIndexOf - i2);
    }

    private static String c(String str) {
        String strTrim = str.trim();
        int iIndexOf = strTrim.indexOf(58);
        if (iIndexOf >= 0 && !b(strTrim, iIndexOf)) {
            return strTrim;
        }
        return "http://" + strTrim;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String a() {
        StringBuilder sb = new StringBuilder(30);
        ParsedResult.maybeAppend(this.c, sb);
        ParsedResult.maybeAppend(this.b, sb);
        return sb.toString();
    }
}
