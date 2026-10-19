package com.hyprmx.android.sdk.api.data;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class l {
    public final String a;
    public final String b;
    public final int c;

    public l(String title, String titleColor, int i) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(titleColor, "titleColor");
        this.a = title;
        this.b = titleColor;
        this.c = i;
    }
}
