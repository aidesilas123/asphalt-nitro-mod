package com.hyprmx.android.sdk.api.data;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class k implements o {
    public final o a;
    public final String b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4487d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f4488e;

    public k(d requiredInfo, String hint, int i, int i2, String invalidAnswerMsg) {
        Intrinsics.checkNotNullParameter(requiredInfo, "requiredInfo");
        Intrinsics.checkNotNullParameter(hint, "hint");
        Intrinsics.checkNotNullParameter(invalidAnswerMsg, "invalidAnswerMsg");
        this.a = requiredInfo;
        this.b = hint;
        this.c = i;
        this.f4487d = i2;
        this.f4488e = invalidAnswerMsg;
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
