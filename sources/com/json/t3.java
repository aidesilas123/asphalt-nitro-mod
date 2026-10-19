package com.json;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class t3 {
    private long a = new Date().getTime();

    public static long a(t3 t3Var) {
        if (t3Var == null) {
            return 0L;
        }
        return new Date().getTime() - t3Var.a;
    }
}
