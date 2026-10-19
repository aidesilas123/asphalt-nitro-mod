package com.google.common.html;

import com.google.common.escape.Escapers;
import com.google.common.escape.d;

/* JADX INFO: loaded from: classes3.dex */
public final class HtmlEscapers {
    private static final d a = Escapers.builder().b('\"', "&quot;").b('\'', "&#39;").b('&', "&amp;").b('<', "&lt;").b('>', "&gt;").c();

    private HtmlEscapers() {
    }

    public static d htmlEscaper() {
        return a;
    }
}
