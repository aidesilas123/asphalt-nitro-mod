package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzoo {
    final /* synthetic */ zzop zza;
    private final String zzb;
    private int zzc;
    private long zzd;
    private zzuk zze;
    private boolean zzf;
    private boolean zzg;

    public zzoo(zzop zzopVar, String str, @Nullable int i, zzuk zzukVar) {
        this.zza = zzopVar;
        this.zzb = str;
        this.zzc = i;
        this.zzd = zzukVar == null ? -1L : zzukVar.zzd;
        if (zzukVar == null || !zzukVar.zzb()) {
            return;
        }
        this.zze = zzukVar;
    }

    public final void zzg(int i, @Nullable zzuk zzukVar) {
        if (this.zzd == -1 && i == this.zzc && zzukVar != null) {
            zzop zzopVar = this.zza;
            long j = zzukVar.zzd;
            if (j >= zzopVar.zzl()) {
                this.zzd = j;
            }
        }
    }

    public final boolean zzj(int i, @Nullable zzuk zzukVar) {
        if (zzukVar == null) {
            return i == this.zzc;
        }
        zzuk zzukVar2 = this.zze;
        return zzukVar2 == null ? !zzukVar.zzb() && zzukVar.zzd == this.zzd : zzukVar.zzd == zzukVar2.zzd && zzukVar.zzb == zzukVar2.zzb && zzukVar.zzc == zzukVar2.zzc;
    }

    public final boolean zzk(zzmk zzmkVar) {
        zzuk zzukVar = zzmkVar.zzd;
        if (zzukVar == null) {
            return this.zzc != zzmkVar.zzc;
        }
        long j = this.zzd;
        if (j == -1) {
            return false;
        }
        if (zzukVar.zzd > j) {
            return true;
        }
        if (this.zze == null) {
            return false;
        }
        zzda zzdaVar = zzmkVar.zzb;
        int iZza = zzdaVar.zza(zzukVar.zza);
        int iZza2 = zzdaVar.zza(this.zze.zza);
        zzuk zzukVar2 = zzmkVar.zzd;
        if (zzukVar2.zzd < this.zze.zzd || iZza < iZza2) {
            return false;
        }
        if (iZza > iZza2) {
            return true;
        }
        if (!zzukVar2.zzb()) {
            int i = zzmkVar.zzd.zze;
            return i == -1 || i > this.zze.zzb;
        }
        zzuk zzukVar3 = zzmkVar.zzd;
        int i2 = zzukVar3.zzb;
        int i3 = zzukVar3.zzc;
        zzuk zzukVar4 = this.zze;
        int i4 = zzukVar4.zzb;
        if (i2 <= i4) {
            return i2 == i4 && i3 > zzukVar4.zzc;
        }
        return true;
    }

    public final boolean zzl(zzda zzdaVar, zzda zzdaVar2) {
        int i = this.zzc;
        if (i < zzdaVar.zzc()) {
            zzdaVar.zze(i, this.zza.zzc, 0L);
            for (int i2 = this.zza.zzc.zzp; i2 <= this.zza.zzc.zzq; i2++) {
                int iZza = zzdaVar2.zza(zzdaVar.zzf(i2));
                if (iZza != -1) {
                    i = zzdaVar2.zzd(iZza, this.zza.zzd, false).zzd;
                    break;
                }
            }
            i = -1;
        } else if (i >= zzdaVar2.zzc()) {
            i = -1;
        }
        this.zzc = i;
        if (i == -1) {
            return false;
        }
        zzuk zzukVar = this.zze;
        return zzukVar == null || zzdaVar2.zza(zzukVar.zza) != -1;
    }
}
