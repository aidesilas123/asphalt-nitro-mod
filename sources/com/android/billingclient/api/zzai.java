package com.android.billingclient.api;

import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzai {
    private final List a;
    private final BillingResult b;

    zzai(BillingResult billingResult, @Nullable List list) {
        this.a = list;
        this.b = billingResult;
    }

    final BillingResult a() {
        return this.b;
    }

    final List b() {
        return this.a;
    }
}
