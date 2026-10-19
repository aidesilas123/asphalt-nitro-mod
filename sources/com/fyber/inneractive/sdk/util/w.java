package com.fyber.inneractive.sdk.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class w {
    public static String a(long j, long j2) {
        return new SimpleDateFormat("ss:S", Locale.US).format(new Date((System.currentTimeMillis() - j) - j2));
    }
}
