package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzxv extends zzxs {
    private final boolean zze;
    private final zzxk zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;
    private final int zzn;
    private final boolean zzo;
    private final boolean zzp;
    private final int zzq;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public zzxv(int r5, com.google.android.gms.internal.ads.zzdc r6, int r7, com.google.android.gms.internal.ads.zzxk r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 334
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxv.<init>(int, com.google.android.gms.internal.ads.zzdc, int, com.google.android.gms.internal.ads.zzxk, int, int, boolean):void");
    }

    public static /* synthetic */ int zza(zzxv zzxvVar, zzxv zzxvVar2) {
        zzfyd zzfydVarZza = (zzxvVar.zze && zzxvVar.zzh) ? zzxw.zzc : zzxw.zzc.zza();
        zzfwj zzfwjVarZzj = zzfwj.zzj();
        Integer numValueOf = Integer.valueOf(zzxvVar.zzi);
        Integer numValueOf2 = Integer.valueOf(zzxvVar2.zzi);
        boolean z = zzxvVar.zzf.zzA;
        return zzfwjVarZzj.zzc(numValueOf, numValueOf2, zzxw.zzd).zzc(Integer.valueOf(zzxvVar.zzj), Integer.valueOf(zzxvVar2.zzj), zzfydVarZza).zzc(Integer.valueOf(zzxvVar.zzi), Integer.valueOf(zzxvVar2.zzi), zzfydVarZza).zza();
    }

    public static /* synthetic */ int zzd(zzxv zzxvVar, zzxv zzxvVar2) {
        zzfwj zzfwjVarZzc = zzfwj.zzj().zzd(zzxvVar.zzh, zzxvVar2.zzh).zzb(zzxvVar.zzl, zzxvVar2.zzl).zzd(true, true).zzd(zzxvVar.zze, zzxvVar2.zze).zzd(zzxvVar.zzg, zzxvVar2.zzg).zzc(Integer.valueOf(zzxvVar.zzk), Integer.valueOf(zzxvVar2.zzk), zzfyd.zzc().zza());
        boolean z = zzxvVar.zzo;
        zzfwj zzfwjVarZzd = zzfwjVarZzc.zzd(z, zzxvVar2.zzo);
        boolean z2 = zzxvVar.zzp;
        zzfwj zzfwjVarZzd2 = zzfwjVarZzd.zzd(z2, zzxvVar2.zzp);
        if (z && z2) {
            zzfwjVarZzd2 = zzfwjVarZzd2.zzb(zzxvVar.zzq, zzxvVar2.zzq);
        }
        return zzfwjVarZzd2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    public final int zzb() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    public final /* bridge */ /* synthetic */ boolean zzc(zzxs zzxsVar) {
        zzxv zzxvVar = (zzxv) zzxsVar;
        if (!zzfs.zzF(this.zzd.zzm, zzxvVar.zzd.zzm)) {
            return false;
        }
        boolean z = this.zzf.zzK;
        return this.zzo == zzxvVar.zzo && this.zzp == zzxvVar.zzp;
    }
}
