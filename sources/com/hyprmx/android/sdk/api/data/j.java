package com.hyprmx.android.sdk.api.data;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements a {
    public final /* synthetic */ a a;

    public j(i ad, String preloadPlayerUrl) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(preloadPlayerUrl, "preloadPlayerUrl");
        this.a = ad;
    }

    @Override // com.hyprmx.android.sdk.api.data.a
    public final String a() {
        return this.a.a();
    }

    @Override // com.hyprmx.android.sdk.api.data.a
    public final m b() {
        return this.a.b();
    }

    @Override // com.hyprmx.android.sdk.api.data.a
    public final String getId() {
        return this.a.getId();
    }

    @Override // com.hyprmx.android.sdk.api.data.a
    public final String getType() {
        return this.a.getType();
    }
}
