package com.hyprmx.android.sdk.model.vast;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class g {
    public final String a;
    public final String b;
    public final long c;

    public g() {
        this(0);
    }

    public /* synthetic */ g(int i) {
        this(0L, "", "");
    }

    public g(long j, String url, String event) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(event, "event");
        this.a = url;
        this.b = event;
        this.c = j;
    }
}
