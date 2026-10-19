package com.hyprmx.android.sdk.bidding;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements a {
    public final com.hyprmx.android.sdk.core.js.a a;

    public d(com.hyprmx.android.sdk.core.js.a jsEngine) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        this.a = jsEngine;
    }

    @Override // com.hyprmx.android.sdk.bidding.c
    public final boolean a(String placementName, String bidResponseData) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(bidResponseData, "bidResponseData");
        Object objA = this.a.a("HYPRBiddingController.loadBid('" + placementName + "', '" + bidResponseData + "');");
        Intrinsics.checkNotNull(objA, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objA).booleanValue();
    }

    @Override // com.hyprmx.android.sdk.bidding.a
    public final String l() {
        Object objA = this.a.a("HYPRBiddingController.getSessionToken();");
        Intrinsics.checkNotNull(objA, "null cannot be cast to non-null type kotlin.String");
        return (String) objA;
    }
}
