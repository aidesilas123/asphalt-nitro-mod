package com.hyprmx.android.sdk.model.vast;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    public final String a;
    public final String b;
    public final boolean c;

    public d() {
        this(0);
    }

    public /* synthetic */ d(int i) {
        this("", "", false);
    }

    public d(String url, String apiFramework, boolean z) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(apiFramework, "apiFramework");
        this.a = url;
        this.b = apiFramework;
        this.c = z;
    }
}
