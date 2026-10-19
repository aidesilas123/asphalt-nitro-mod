package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzenx {
    private final zzeoc zza;
    private final String zzb;

    @Nullable
    private com.google.android.gms.ads.internal.client.zzdn zzc;

    public zzenx(zzeoc zzeocVar, String str) {
        this.zza = zzeocVar;
        this.zzb = str;
    }

    @Nullable
    public final synchronized String zza() {
        com.google.android.gms.ads.internal.client.zzdn zzdnVar;
        try {
            zzdnVar = this.zzc;
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
            return null;
        }
        return zzdnVar != null ? zzdnVar.zzg() : null;
    }

    @Nullable
    public final synchronized String zzb() {
        com.google.android.gms.ads.internal.client.zzdn zzdnVar;
        try {
            zzdnVar = this.zzc;
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
            return null;
        }
        return zzdnVar != null ? zzdnVar.zzg() : null;
    }

    public final synchronized void zzd(com.google.android.gms.ads.internal.client.zzl zzlVar, int i) throws RemoteException {
        this.zzc = null;
        zzeod zzeodVar = new zzeod(i);
        zzenw zzenwVar = new zzenw(this);
        this.zza.zzb(zzlVar, this.zzb, zzeodVar, zzenwVar);
    }

    public final synchronized boolean zze() throws RemoteException {
        return this.zza.zza();
    }
}
