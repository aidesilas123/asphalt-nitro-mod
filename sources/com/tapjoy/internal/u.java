package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class u {
    public static String a(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        String strTrim = str.trim();
        if (strTrim.length() == 0) {
            return null;
        }
        return strTrim;
    }
}
