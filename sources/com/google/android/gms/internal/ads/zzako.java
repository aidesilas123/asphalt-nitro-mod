package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzako implements zzakx {
    private zzam zza;
    private zzfq zzb;
    private zzadk zzc;

    public zzako(String str) {
        zzak zzakVar = new zzak();
        zzakVar.zzU(str);
        this.zza = zzakVar.zzac();
    }

    @Override // com.google.android.gms.internal.ads.zzakx
    public final void zza(zzfj zzfjVar) {
        zzef.zzb(this.zzb);
        int i = zzfs.zza;
        long jZzd = this.zzb.zzd();
        long jZze = this.zzb.zze();
        if (jZzd == C.TIME_UNSET || jZze == C.TIME_UNSET) {
            return;
        }
        zzam zzamVar = this.zza;
        if (jZze != zzamVar.zzq) {
            zzak zzakVarZzb = zzamVar.zzb();
            zzakVarZzb.zzY(jZze);
            zzam zzamVarZzac = zzakVarZzb.zzac();
            this.zza = zzamVarZzac;
            this.zzc.zzl(zzamVarZzac);
        }
        int iZza = zzfjVar.zza();
        this.zzc.zzr(zzfjVar, iZza);
        this.zzc.zzt(jZzd, 1, iZza, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzakx
    public final void zzb(zzfq zzfqVar, zzach zzachVar, zzalk zzalkVar) {
        this.zzb = zzfqVar;
        zzalkVar.zzc();
        zzadk zzadkVarZzw = zzachVar.zzw(zzalkVar.zza(), 5);
        this.zzc = zzadkVarZzw;
        zzadkVarZzw.zzl(this.zza);
    }
}
