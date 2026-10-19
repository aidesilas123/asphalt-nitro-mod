package com.android.billingclient.api;

import android.content.Context;
import android.content.IntentFilter;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzh {
    private final Context a;
    private final zzg b;

    zzh(Context context, PurchasesUpdatedListener purchasesUpdatedListener, AlternativeBillingListener alternativeBillingListener, zzar zzarVar) {
        this.a = context;
        this.b = new zzg(this, purchasesUpdatedListener, alternativeBillingListener, zzarVar, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    zzh(Context context, zzaz zzazVar, zzar zzarVar) {
        this.a = context;
        this.b = new zzg(this, null, zzarVar, 0 == true ? 1 : 0);
    }

    @Nullable
    final zzaz b() {
        zzg.a(this.b);
        return null;
    }

    @Nullable
    final PurchasesUpdatedListener c() {
        return this.b.a;
    }

    final void d() {
        IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
        intentFilter.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
        this.b.c(this.a, intentFilter);
    }
}
