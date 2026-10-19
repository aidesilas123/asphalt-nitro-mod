package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaey extends zzact {
    final /* synthetic */ zzade zza;
    final /* synthetic */ zzaez zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzaey(zzaez zzaezVar, zzade zzadeVar, zzade zzadeVar2) {
        super(zzadeVar);
        this.zzb = zzaezVar;
        this.zza = zzadeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzact, com.google.android.gms.internal.ads.zzade
    public final zzadc zzg(long j) {
        zzadc zzadcVarZzg = this.zza.zzg(j);
        zzadf zzadfVar = zzadcVarZzg.zza;
        zzadf zzadfVar2 = new zzadf(zzadfVar.zzb, zzadfVar.zzc + this.zzb.zzb);
        zzadf zzadfVar3 = zzadcVarZzg.zzb;
        return new zzadc(zzadfVar2, new zzadf(zzadfVar3.zzb, zzadfVar3.zzc + this.zzb.zzb));
    }
}
