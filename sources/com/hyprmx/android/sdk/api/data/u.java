package com.hyprmx.android.sdk.api.data;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class u implements a {
    public final com.hyprmx.android.sdk.header.a a;
    public final com.hyprmx.android.sdk.footer.a b;
    public final /* synthetic */ a c;

    public u(i ad, com.hyprmx.android.sdk.header.a webTrafficHeader, com.hyprmx.android.sdk.footer.a footer) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(webTrafficHeader, "webTrafficHeader");
        Intrinsics.checkNotNullParameter(footer, "footer");
        this.a = webTrafficHeader;
        this.b = footer;
        this.c = ad;
    }

    @Override // com.hyprmx.android.sdk.api.data.a
    public final String a() {
        return this.c.a();
    }

    @Override // com.hyprmx.android.sdk.api.data.a
    public final m b() {
        return this.c.b();
    }

    @Override // com.hyprmx.android.sdk.api.data.a
    public final String getId() {
        return this.c.getId();
    }

    @Override // com.hyprmx.android.sdk.api.data.a
    public final String getType() {
        return this.c.getType();
    }
}
