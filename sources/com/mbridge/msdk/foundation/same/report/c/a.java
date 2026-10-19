package com.mbridge.msdk.foundation.same.report.c;

/* JADX INFO: compiled from: LogFileController.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    public static final String a = "a";
    private static a b;

    private a() {
    }

    public static synchronized a a() {
        if (b == null) {
            b = new a();
        }
        return b;
    }
}
