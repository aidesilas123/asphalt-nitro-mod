package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import java.lang.ref.WeakReference;
import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzah extends com.google.android.gms.internal.play_billing.zzf {
    final WeakReference a;
    final ResultReceiver b;

    /* synthetic */ zzah(WeakReference weakReference, ResultReceiver resultReceiver, zzag zzagVar) {
        this.a = weakReference;
        this.b = resultReceiver;
    }

    @Override // com.google.android.gms.internal.play_billing.zzg
    public final void zza(Bundle bundle) throws RemoteException {
        ResultReceiver resultReceiver = this.b;
        if (resultReceiver == null) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "Unable to send result for in-app messaging");
            return;
        }
        if (bundle == null) {
            resultReceiver.send(0, null);
            return;
        }
        Activity activity = (Activity) this.a.get();
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("KEY_LAUNCH_INTENT");
        if (activity == null || pendingIntent == null) {
            this.b.send(0, null);
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "Unable to launch intent for in-app messaging");
            return;
        }
        try {
            Intent intent = new Intent(activity, (Class<?>) ProxyBillingActivity.class);
            intent.putExtra("in_app_message_result_receiver", this.b);
            intent.putExtra("IN_APP_MESSAGE_INTENT", pendingIntent);
            activity.startActivity(intent);
        } catch (CancellationException e2) {
            this.b.send(0, null);
            com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "Exception caught while launching intent for in-app messaging.", e2);
        }
    }
}
