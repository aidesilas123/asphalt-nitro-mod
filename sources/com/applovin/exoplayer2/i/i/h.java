package com.applovin.exoplayer2.i.i;

import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
import com.facebook.internal.security.CertificateUtil;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    private static final Pattern TL = Pattern.compile("^NOTE([ \t].*)?$");

    public static long aG(String str) throws NumberFormatException {
        String[] strArrM = ai.m(str, "\\.");
        long j = 0;
        for (String str2 : ai.l(strArrM[0], CertificateUtil.DELIMITER)) {
            j = (j * 60) + Long.parseLong(str2);
        }
        long j2 = j * 1000;
        if (strArrM.length == 2) {
            j2 += Long.parseLong(strArrM[1]);
        }
        return j2 * 1000;
    }

    public static float aH(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static void ap(y yVar) throws com.applovin.exoplayer2.ai {
        int iIl = yVar.il();
        if (aq(yVar)) {
            return;
        }
        yVar.fx(iIl);
        throw com.applovin.exoplayer2.ai.c("Expected WEBVTT. Got " + yVar.pJ(), null);
    }

    public static boolean aq(y yVar) {
        String strPJ = yVar.pJ();
        return strPJ != null && strPJ.startsWith("WEBVTT");
    }
}
