package com.hyprmx.android.sdk.api.data;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements o {
    public final o a;
    public final List<t> b;

    public q(d requiredInfo, ArrayList values) {
        Intrinsics.checkNotNullParameter(requiredInfo, "requiredInfo");
        Intrinsics.checkNotNullParameter(values, "values");
        this.a = requiredInfo;
        this.b = values;
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
