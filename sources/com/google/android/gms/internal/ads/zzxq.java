package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzxq extends zzxs implements Comparable {
    private final int zze;
    private final boolean zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;

    /* JADX WARN: Multi-variable type inference failed */
    public zzxq(int i, zzdc zzdcVar, int i2, zzxk zzxkVar, int i3, @Nullable String str) {
        int iZza;
        super(i, zzdcVar, i2);
        int i4 = 0;
        this.zzf = zzxw.zzn(i3, false);
        int i5 = this.zzd.zze;
        int i6 = zzxkVar.zzy;
        this.zzg = 1 == (i5 & 1);
        this.zzh = (i5 & 2) != 0;
        zzfwu zzfwuVarZzm = zzxkVar.zzw.isEmpty() ? zzfwu.zzm("") : zzxkVar.zzw;
        int i7 = 0;
        while (true) {
            if (i7 >= zzfwuVarZzm.size()) {
                i7 = Integer.MAX_VALUE;
                iZza = 0;
                break;
            } else {
                iZza = zzxw.zza(this.zzd, (String) zzfwuVarZzm.get(i7), false);
                if (iZza > 0) {
                    break;
                } else {
                    i7++;
                }
            }
        }
        this.zzi = i7;
        this.zzj = iZza;
        int i8 = this.zzd.zzf;
        int iBitCount = Integer.bitCount(0);
        this.zzk = iBitCount;
        int i9 = this.zzd.zzf;
        this.zzm = false;
        int iZza2 = zzxw.zza(this.zzd, str, zzxw.zzg(str) == null);
        this.zzl = iZza2;
        boolean z = iZza > 0 || (zzxkVar.zzw.isEmpty() && iBitCount > 0) || this.zzg || (this.zzh && iZza2 > 0);
        if (zzxw.zzn(i3, zzxkVar.zzS) && z) {
            i4 = 1;
        }
        this.zze = i4;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzxq zzxqVar) {
        zzfwj zzfwjVarZzb = zzfwj.zzj().zzd(this.zzf, zzxqVar.zzf).zzc(Integer.valueOf(this.zzi), Integer.valueOf(zzxqVar.zzi), zzfyd.zzc().zza()).zzb(this.zzj, zzxqVar.zzj).zzb(this.zzk, zzxqVar.zzk).zzd(this.zzg, zzxqVar.zzg).zzc(Boolean.valueOf(this.zzh), Boolean.valueOf(zzxqVar.zzh), this.zzj == 0 ? zzfyd.zzc() : zzfyd.zzc().zza()).zzb(this.zzl, zzxqVar.zzl);
        if (this.zzk == 0) {
            zzfwjVarZzb = zzfwjVarZzb.zze(false, false);
        }
        return zzfwjVarZzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    public final /* bridge */ /* synthetic */ boolean zzc(zzxs zzxsVar) {
        return false;
    }
}
