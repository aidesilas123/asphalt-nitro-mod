package com.hyprmx.android.sdk.model.vast;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class i {
    public final String a;
    public final String b;

    public i() {
        this(0);
    }

    public /* synthetic */ i(int i) {
        this("", "");
    }

    public i(String type, String url) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(url, "url");
        this.a = type;
        this.b = url;
    }
}
