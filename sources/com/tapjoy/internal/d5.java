package com.tapjoy.internal;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class d5 {
    public float a;
    public int b;

    public static d5 a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            d5 d5Var = new d5();
            int length = str.length() - 1;
            char cCharAt = str.charAt(length);
            if (cCharAt == 'w') {
                d5Var.a = Float.valueOf(str.substring(0, length)).floatValue();
                d5Var.b = 1;
            } else if (cCharAt == 'h') {
                d5Var.a = Float.valueOf(str.substring(0, length)).floatValue();
                d5Var.b = 2;
            } else {
                d5Var.a = Float.valueOf(str).floatValue();
                d5Var.b = 0;
            }
            return d5Var;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public final float a(float f2, float f3) {
        int i = this.b;
        return i == 1 ? (this.a * f2) / 100.0f : i == 2 ? (this.a * f3) / 100.0f : this.a;
    }
}
