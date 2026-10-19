package com.google.android.material.circularreveal;

import android.os.Build;

/* JADX INFO: compiled from: CircularRevealHelper.java */
/* JADX INFO: loaded from: classes3.dex */
public class a {
    public static final int a;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            a = 2;
        } else if (i >= 18) {
            a = 1;
        } else {
            a = 0;
        }
    }
}
