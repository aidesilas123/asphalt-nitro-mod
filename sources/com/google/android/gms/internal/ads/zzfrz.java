package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfrz extends zzfsp {
    final /* synthetic */ zzfsi zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ zzfsg zzc;
    final /* synthetic */ TaskCompletionSource zzd;
    final /* synthetic */ zzfsb zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfrz(zzfsb zzfsbVar, TaskCompletionSource taskCompletionSource, zzfsi zzfsiVar, int i, zzfsg zzfsgVar, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.zze = zzfsbVar;
        this.zza = zzfsiVar;
        this.zzb = i;
        this.zzc = zzfsgVar;
        this.zzd = taskCompletionSource2;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.os.IInterface, com.google.android.gms.internal.ads.zzfsl] */
    @Override // com.google.android.gms.internal.ads.zzfsp
    protected final void zza() {
        try {
            ?? Zze = this.zze.zza.zze();
            zzfsi zzfsiVar = this.zza;
            String str = this.zze.zzd;
            int i = this.zzb;
            Bundle bundle = new Bundle();
            bundle.putString("sessionToken", zzfsiVar.zzb());
            bundle.putInt("displayMode", i);
            bundle.putString("callerPackage", str);
            bundle.putString("appId", zzfsiVar.zza());
            Zze.zzg(bundle, new zzfsa(this.zze, this.zzc));
        } catch (RemoteException e2) {
            zzfsb.zzb.zzb(e2, "switchDisplayMode overlay display to %d from: %s", Integer.valueOf(this.zzb), this.zze.zzd);
            this.zzd.trySetException(new RuntimeException(e2));
        }
    }
}
