package com.google.common.net;

import com.google.common.escape.d;

/* JADX INFO: loaded from: classes3.dex */
public final class UrlEscapers {
    private static final d a = new c("-_.*", true);
    private static final d b = new c("-._~!$'()*,;&=@:+", false);
    private static final d c = new c("-._~!$'()*,;&=@:+/?", false);

    private UrlEscapers() {
    }

    public static d urlFormParameterEscaper() {
        return a;
    }

    public static d urlFragmentEscaper() {
        return c;
    }

    public static d urlPathSegmentEscaper() {
        return b;
    }
}
