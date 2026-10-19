package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgs implements Runnable {
    final /* synthetic */ zzp zza;
    final /* synthetic */ zzha zzb;

    zzgs(zzha zzhaVar, zzp zzpVar) {
        this.zzb = zzhaVar;
        this.zza = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzA();
        zzli zzliVar = this.zzb.zza;
        zzp zzpVar = this.zza;
        zzliVar.zzaA().zzg();
        zzliVar.zzB();
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzah zzahVarZzb = zzah.zzb(zzpVar.zzv);
        zzah zzahVarZzh = zzliVar.zzh(zzpVar.zza);
        zzliVar.zzaz().zzj().zzc("Setting consent, package, consent", zzpVar.zza, zzahVarZzb);
        zzliVar.zzU(zzpVar.zza, zzahVarZzb);
        if (zzahVarZzb.zzk(zzahVarZzh)) {
            zzliVar.zzP(zzpVar);
        }
    }
}
