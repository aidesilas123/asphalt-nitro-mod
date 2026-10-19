package com.android.billingclient.api;

import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzaa extends ResultReceiver {
    final /* synthetic */ InAppMessageResponseListener a;

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, @Nullable Bundle bundle) {
        this.a.a(com.google.android.gms.internal.play_billing.zzb.zze(bundle, "BillingClient"));
    }
}
