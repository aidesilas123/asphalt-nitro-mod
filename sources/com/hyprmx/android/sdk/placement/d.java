package com.hyprmx.android.sdk.placement;

import com.hyprmx.android.sdk.placement.c;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements c.a {
    @Override // com.hyprmx.android.sdk.placement.c.a
    public final void a(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
    }

    @Override // com.hyprmx.android.sdk.bidding.c
    public final boolean a(String placementName, String bidResponseData) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(bidResponseData, "bidResponseData");
        return false;
    }

    @Override // com.hyprmx.android.sdk.placement.c.a
    public final boolean b(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        return false;
    }

    @Override // com.hyprmx.android.sdk.placement.c.a
    public final void c(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
    }
}
