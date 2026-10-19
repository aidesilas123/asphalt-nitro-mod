package com.gameloft.android.ANMP.GloftAGHM.GLUtils;

/* JADX INFO: loaded from: classes2.dex */
public class DefReader {
    private static DefReader a;
    private final String b = "AES";

    public static DefReader getInstance() {
        if (a == null) {
            a = new DefReader();
        }
        return a;
    }
}
