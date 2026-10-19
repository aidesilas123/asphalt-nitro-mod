package com.tapjoy.internal;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public abstract class y2 {
    public static final Charset a;

    static {
        Charset.forName(C.ASCII_NAME);
        Charset.forName("ISO-8859-1");
        a = Charset.forName(C.UTF8_NAME);
        Charset.forName("UTF-16BE");
        Charset.forName("UTF-16LE");
        Charset.forName(C.UTF16_NAME);
    }
}
