package com.google.common.xml;

import com.google.common.escape.Escapers;
import com.google.common.escape.d;

/* JADX INFO: loaded from: classes3.dex */
public class XmlEscapers {
    private static final d a;
    private static final d b;
    private static final d c;

    static {
        Escapers.b bVarBuilder = Escapers.builder();
        bVarBuilder.d((char) 0, (char) 65533);
        bVarBuilder.e("�");
        for (char c2 = 0; c2 <= 31; c2 = (char) (c2 + 1)) {
            if (c2 != '\t' && c2 != '\n' && c2 != '\r') {
                bVarBuilder.b(c2, "�");
            }
        }
        bVarBuilder.b('&', "&amp;");
        bVarBuilder.b('<', "&lt;");
        bVarBuilder.b('>', "&gt;");
        b = bVarBuilder.c();
        bVarBuilder.b('\'', "&apos;");
        bVarBuilder.b('\"', "&quot;");
        a = bVarBuilder.c();
        bVarBuilder.b('\t', "&#x9;");
        bVarBuilder.b('\n', "&#xA;");
        bVarBuilder.b('\r', "&#xD;");
        c = bVarBuilder.c();
    }

    private XmlEscapers() {
    }

    public static d xmlAttributeEscaper() {
        return c;
    }

    public static d xmlContentEscaper() {
        return b;
    }
}
