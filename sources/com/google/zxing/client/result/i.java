package com.google.zxing.client.result;

import androidx.core.net.MailTo;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: EmailAddressResultParser.java */
/* JADX INFO: loaded from: classes3.dex */
public final class i extends ResultParser {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Pattern f4306f = Pattern.compile(",");

    @Override // com.google.zxing.client.result.ResultParser
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public h i(com.google.zxing.d dVar) {
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        String str;
        String str2;
        String str3;
        String strC = ResultParser.c(dVar);
        if (!strC.startsWith(MailTo.MAILTO_SCHEME) && !strC.startsWith("MAILTO:")) {
            if (j.p(strC)) {
                return new h(strC);
            }
            return null;
        }
        String strSubstring = strC.substring(7);
        int iIndexOf = strSubstring.indexOf(63);
        if (iIndexOf >= 0) {
            strSubstring = strSubstring.substring(0, iIndexOf);
        }
        try {
            String strM = ResultParser.m(strSubstring);
            String[] strArrSplit = !strM.isEmpty() ? f4306f.split(strM) : null;
            Map<String, String> mapK = ResultParser.k(strC);
            if (mapK != null) {
                if (strArrSplit == null && (str3 = mapK.get("to")) != null) {
                    strArrSplit = f4306f.split(str3);
                }
                String str4 = mapK.get("cc");
                String[] strArrSplit2 = str4 != null ? f4306f.split(str4) : null;
                String str5 = mapK.get("bcc");
                String[] strArrSplit3 = str5 != null ? f4306f.split(str5) : null;
                String str6 = mapK.get("subject");
                str2 = mapK.get("body");
                strArr = strArrSplit;
                strArr3 = strArrSplit3;
                strArr2 = strArrSplit2;
                str = str6;
            } else {
                strArr = strArrSplit;
                strArr2 = null;
                strArr3 = null;
                str = null;
                str2 = null;
            }
            return new h(strArr, strArr2, strArr3, str, str2);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
