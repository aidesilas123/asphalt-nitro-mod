package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfrx extends zzfsp {
    final /* synthetic */ zzfsd zza;
    final /* synthetic */ zzfsg zzb;
    final /* synthetic */ TaskCompletionSource zzc;
    final /* synthetic */ zzfsb zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfrx(zzfsb zzfsbVar, TaskCompletionSource taskCompletionSource, zzfsd zzfsdVar, zzfsg zzfsgVar, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.zzd = zzfsbVar;
        this.zza = zzfsdVar;
        this.zzb = zzfsgVar;
        this.zzc = taskCompletionSource2;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [android.os.IInterface, com.google.android.gms.internal.ads.zzfsl] */
    @Override // com.google.android.gms.internal.ads.zzfsp
    protected final void zza() {
        try {
            ?? Zze = this.zzd.zza.zze();
            zzfsb zzfsbVar = this.zzd;
            String str = zzfsbVar.zzd;
            zzfsd zzfsdVar = this.zza;
            String str2 = zzfsbVar.zzd;
            Bundle bundle = new Bundle();
            bundle.putBinder("windowToken", zzfsdVar.zze());
            bundle.putString("adFieldEnifd", zzfsdVar.zzf());
            bundle.putInt("layoutGravity", zzfsdVar.zzc());
            bundle.putFloat("layoutVerticalMargin", zzfsdVar.zza());
            bundle.putInt("displayMode", 0);
            bundle.putInt("windowWidthPx", zzfsdVar.zzd());
            bundle.putString("deeplinkUrl", null);
            bundle.putBoolean("stableSessionToken", false);
            bundle.putString("callerPackage", str2);
            if (zzfsdVar.zzg() != null) {
                bundle.putString("appId", zzfsdVar.zzg());
            }
            Zze.zzf(str, bundle, new zzfsa(this.zzd, this.zzb));
        } catch (RemoteException e2) {
            zzfsb.zzb.zzb(e2, "show overlay display from: %s", this.zzd.zzd);
            this.zzc.trySetException(new RuntimeException(e2));
        }
    }
}
