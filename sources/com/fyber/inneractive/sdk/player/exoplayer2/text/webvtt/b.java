package com.fyber.inneractive.sdk.player.exoplayer2.text.webvtt;

import com.facebook.internal.security.CertificateUtil;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public static final Pattern a = Pattern.compile("^NOTE(( |\t).*)?$");
    public static final Pattern b = Pattern.compile("^\ufeff?WEBVTT(( |\t).*)?$");

    public static long a(String str) throws NumberFormatException {
        String[] strArrSplit = str.split("\\.", 2);
        long j = 0;
        for (String str2 : strArrSplit[0].split(CertificateUtil.DELIMITER)) {
            j = (j * 60) + Long.parseLong(str2);
        }
        return ((j * 1000) + Long.parseLong(strArrSplit[1])) * 1000;
    }
}
