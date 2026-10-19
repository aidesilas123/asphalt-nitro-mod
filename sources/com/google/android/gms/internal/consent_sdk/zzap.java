package com.google.android.gms.internal.consent_sdk;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.1.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzap implements zzaz {
    private final zzaj zza;
    private final zzap zzb = this;
    private final zzdr zzc;
    private final zzdr zzd;
    private final zzdr zze;
    private final zzdr zzf;
    private final zzdr zzg;

    /* synthetic */ zzap(zzaj zzajVar, zzbs zzbsVar, zzao zzaoVar) {
        this.zza = zzajVar;
        zzdr zzdrVarZza = zzdn.zza(new zzbz(zzajVar.zzb));
        this.zzc = zzdrVarZza;
        zzdo zzdoVarZza = zzdp.zza(zzbsVar);
        this.zzd = zzdoVarZza;
        zzdm zzdmVar = new zzdm();
        this.zze = zzdmVar;
        zzcd zzcdVar = new zzcd(zzajVar.zzb, zzdrVarZza, zzau.zza, zzaw.zza, zzajVar.zzi, zzajVar.zzj, zzdmVar, zzajVar.zzc);
        this.zzf = zzcdVar;
        zzbx zzbxVar = new zzbx(zzdrVarZza, zzau.zza, zzcdVar);
        this.zzg = zzbxVar;
        zzdm.zza(zzdmVar, zzdn.zza(new zzbf(zzajVar.zzb, zzajVar.zzd, zzdrVarZza, zzajVar.zzc, zzdoVarZza, zzbxVar)));
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzaz
    public final zzbe zza() {
        return (zzbe) this.zze.zzb();
    }
}
