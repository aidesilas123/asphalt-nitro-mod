package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzayu {
    final /* synthetic */ zzayv zza;
    private final byte[] zzb;
    private int zzc;

    /* synthetic */ zzayu(zzayv zzayvVar, byte[] bArr, zzayt zzaytVar) {
        this.zza = zzayvVar;
        this.zzb = bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzd() {
        try {
            zzayv zzayvVar = this.zza;
            if (zzayvVar.zzb) {
                zzayvVar.zza.zzj(this.zzb);
                this.zza.zza.zzi(0);
                this.zza.zza.zzg(this.zzc);
                this.zza.zza.zzh(null);
                this.zza.zza.zzf();
            }
        } catch (RemoteException e2) {
            zzcbn.zzf("Clearcut log failed", e2);
        }
    }

    public final zzayu zza(int i) {
        this.zzc = i;
        return this;
    }

    public final synchronized void zzc() {
        this.zza.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzays
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzd();
            }
        });
    }
}
