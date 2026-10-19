package com.google.zxing.client.result;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: URIResultParser.java */
/* JADX INFO: loaded from: classes3.dex */
public final class z extends ResultParser {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Pattern f4314f = Pattern.compile("[-._~:/?#\\[\\]@!$&'()*+,;=%A-Za-z0-9]+");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f4315g = Pattern.compile(":/*([^/@]+)@[^/]+");
    private static final Pattern h = Pattern.compile("[a-zA-Z][a-zA-Z0-9+-.]+:");
    private static final Pattern i = Pattern.compile("([a-zA-Z0-9\\-]+\\.){1,6}[a-zA-Z]{2,}(:\\d{1,5})?(/|\\?|$)");

    static boolean n(String str) {
        if (str.contains(" ")) {
            return false;
        }
        Matcher matcher = h.matcher(str);
        if (matcher.find() && matcher.start() == 0) {
            return true;
        }
        Matcher matcher2 = i.matcher(str);
        return matcher2.find() && matcher2.start() == 0;
    }

    static boolean o(String str) {
        return !f4314f.matcher(str).matches() || f4315g.matcher(str).find();
    }

    @Override // com.google.zxing.client.result.ResultParser
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public y i(com.google.zxing.d dVar) {
        String strC = ResultParser.c(dVar);
        if (strC.startsWith("URL:") || strC.startsWith("URI:")) {
            return new y(strC.substring(4).trim(), null);
        }
        String strTrim = strC.trim();
        if (!n(strTrim) || o(strTrim)) {
            return null;
        }
        return new y(strTrim, null);
    }
}
