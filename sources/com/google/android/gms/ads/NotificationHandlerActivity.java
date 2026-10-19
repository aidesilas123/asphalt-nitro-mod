package com.google.android.gms.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbpo;
import com.google.android.gms.internal.ads.zzbti;
import com.google.android.gms.internal.ads.zzcbn;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
@KeepForSdk
public final class NotificationHandlerActivity extends Activity {

    @NonNull
    @KeepForSdk
    public static final String CLASS_NAME = "com.google.android.gms.ads.NotificationHandlerActivity";

    @Override // android.app.Activity
    protected final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        try {
            zzbti zzbtiVarZzm = zzay.zza().zzm(this, new zzbpo());
            if (zzbtiVarZzm == null) {
                zzcbn.zzg("OfflineUtils is null");
            } else {
                zzbtiVarZzm.zze(getIntent());
            }
        } catch (RemoteException e2) {
            zzcbn.zzg("RemoteException calling handleNotificationIntent: ".concat(e2.toString()));
        }
    }

    @Override // android.app.Activity
    protected final void onResume() {
        super.onResume();
        finish();
    }
}
