package com.hyprmx.android.sdk.core;

import android.content.Context;
import com.hyprmx.android.sdk.consent.ConsentStatus;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements p {
    @Override // com.hyprmx.android.sdk.core.p
    public final j a(Context context, String distributorId, String userId, ConsentStatus consentStatus) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(distributorId, "distributorId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        return new j(applicationContext, distributorId, userId, consentStatus);
    }
}
