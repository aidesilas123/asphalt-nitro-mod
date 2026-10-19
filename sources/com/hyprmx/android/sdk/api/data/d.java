package com.hyprmx.android.sdk.api.data;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements o {
    public final String a;
    public final String b;

    public d(String title, String name) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(name, "name");
        this.a = title;
        this.b = name;
    }

    @Override // com.hyprmx.android.sdk.api.data.o
    public final String getName() {
        return this.b;
    }

    @Override // com.hyprmx.android.sdk.api.data.o
    public final String getTitle() {
        return this.a;
    }
}
