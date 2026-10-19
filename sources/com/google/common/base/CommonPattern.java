package com.google.common.base;

/* JADX INFO: loaded from: classes3.dex */
abstract class CommonPattern {
    CommonPattern() {
    }

    public static CommonPattern compile(String str) {
        return j.a(str);
    }

    public static boolean isPcreLike() {
        return j.g();
    }

    public abstract int c();

    public abstract c d(CharSequence charSequence);

    public abstract String e();
}
