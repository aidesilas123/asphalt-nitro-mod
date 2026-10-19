package com.hyprmx.android.sdk.api.data;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class s {
    public final String a;
    public final int b;
    public final com.hyprmx.android.sdk.footer.a c;

    public s(String title, String title_color, int i, com.hyprmx.android.sdk.footer.a footer) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(title_color, "title_color");
        Intrinsics.checkNotNullParameter(footer, "footer");
        this.a = title;
        this.b = i;
        this.c = footer;
    }
}
