package com.google.zxing.client.result;

import androidx.core.net.MailTo;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.stats.CodePackage;
import java.util.List;

/* JADX INFO: compiled from: VEventResultParser.java */
/* JADX INFO: loaded from: classes3.dex */
public final class c0 extends ResultParser {
    private static String n(CharSequence charSequence, String str) {
        List<String> listQ = b0.q(charSequence, str, true, false);
        if (listQ == null || listQ.isEmpty()) {
            return null;
        }
        return listQ.get(0);
    }

    private static String[] o(CharSequence charSequence, String str) {
        List<List<String>> listR = b0.r(charSequence, str, true, false);
        if (listR == null || listR.isEmpty()) {
            return null;
        }
        int size = listR.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = listR.get(i).get(0);
        }
        return strArr;
    }

    private static String q(String str) {
        return str != null ? (str.startsWith(MailTo.MAILTO_SCHEME) || str.startsWith("MAILTO:")) ? str.substring(7) : str : str;
    }

    @Override // com.google.zxing.client.result.ResultParser
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public g i(com.google.zxing.d dVar) {
        double d2;
        String strC = ResultParser.c(dVar);
        if (strC.indexOf("BEGIN:VEVENT") < 0) {
            return null;
        }
        String strN = n("SUMMARY", strC);
        String strN2 = n("DTSTART", strC);
        if (strN2 == null) {
            return null;
        }
        String strN3 = n("DTEND", strC);
        String strN4 = n("DURATION", strC);
        String strN5 = n(CodePackage.LOCATION, strC);
        String strQ = q(n("ORGANIZER", strC));
        String[] strArrO = o("ATTENDEE", strC);
        if (strArrO != null) {
            for (int i = 0; i < strArrO.length; i++) {
                strArrO[i] = q(strArrO[i]);
            }
        }
        String strN6 = n(ShareConstants.DESCRIPTION, strC);
        String strN7 = n("GEO", strC);
        double d3 = Double.NaN;
        if (strN7 == null) {
            d2 = Double.NaN;
        } else {
            int iIndexOf = strN7.indexOf(59);
            if (iIndexOf < 0) {
                return null;
            }
            try {
                d3 = Double.parseDouble(strN7.substring(0, iIndexOf));
                d2 = Double.parseDouble(strN7.substring(iIndexOf + 1));
            } catch (NumberFormatException | IllegalArgumentException unused) {
                return null;
            }
        }
        return new g(strN, strN2, strN3, strN4, strN5, strQ, strArrO, strN6, d3, d2);
    }
}
