package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzjl extends zzao {
    final /* synthetic */ zzkb zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzjl(zzkb zzkbVar, zzhd zzhdVar) {
        super(zzhdVar);
        this.zza = zzkbVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzao
    public final void zzc() {
        zzkb zzkbVar = this.zza;
        zzkbVar.zzg();
        if (zzkbVar.zzL()) {
            zzkbVar.zzs.zzaz().zzj().zza("Inactivity, disconnecting from the service");
            zzkbVar.zzs();
        }
    }
}
