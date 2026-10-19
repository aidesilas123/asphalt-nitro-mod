package com.hyprmx.android.sdk.model;

import com.hyprmx.android.sdk.analytics.k;
import com.hyprmx.android.sdk.model.a;
import com.hyprmx.android.sdk.preload.n;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements a {
    public final n a;

    public b(n cacheController) {
        Intrinsics.checkNotNullParameter(cacheController, "cacheController");
        this.a = cacheController;
    }

    @Override // com.hyprmx.android.sdk.model.a
    public final n a() {
        return this.a;
    }

    @Override // com.hyprmx.android.sdk.model.a
    public /* synthetic */ Object a(k.a aVar) {
        return a.CC.a(this, aVar);
    }
}
