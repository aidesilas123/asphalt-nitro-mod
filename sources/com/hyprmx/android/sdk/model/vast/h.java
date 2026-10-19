package com.hyprmx.android.sdk.model.vast;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class h {
    public final String a;
    public final String b;

    public h() {
        this(0);
    }

    public /* synthetic */ h(int i) {
        this("", "");
    }

    public h(String type, String url) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(url, "url");
        this.a = type;
        this.b = url;
    }
}
