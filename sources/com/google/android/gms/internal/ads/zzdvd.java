package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzdvd extends zzbxp {
    final /* synthetic */ zzdvf zza;

    zzdvd(zzdvf zzdvfVar) {
        this.zza = zzdvfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zze(int i) throws RemoteException {
        zzdvf zzdvfVar = this.zza;
        zzdvfVar.zzb.zzm(zzdvfVar.zza, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        zzdvf zzdvfVar = this.zza;
        zzdvfVar.zzb.zzm(zzdvfVar.zza, zzeVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zzg() throws RemoteException {
        zzdvf zzdvfVar = this.zza;
        zzdvfVar.zzb.zzp(zzdvfVar.zza);
    }
}
