package com.apm.insight.l;

/* JADX INFO: loaded from: classes.dex */
public class u {
    public static boolean a(String str) {
        try {
            System.loadLibrary(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
