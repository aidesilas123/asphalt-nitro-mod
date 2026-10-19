package com.hyprmx.android.sdk.api.data;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements o {
    public final o a;

    public h(d requiredInfo) {
        Intrinsics.checkNotNullParameter(requiredInfo, "requiredInfo");
        this.a = requiredInfo;
    }

    @Override // com.hyprmx.android.sdk.api.data.o
    public final String getName() {
        return this.a.getName();
    }

    @Override // com.hyprmx.android.sdk.api.data.o
    public final String getTitle() {
        return this.a.getTitle();
    }
}
