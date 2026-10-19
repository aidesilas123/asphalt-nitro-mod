package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzadz implements zzadt {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;

    private zzadz(int i, int i2, int i3, int i4, int i5, int i6) {
        this.zza = i;
        this.zzb = i3;
        this.zzc = i4;
        this.zzd = i5;
        this.zze = i6;
    }

    public static zzadz zzb(zzfj zzfjVar) {
        int iZzh = zzfjVar.zzh();
        zzfjVar.zzH(12);
        int iZzh2 = zzfjVar.zzh();
        int iZzh3 = zzfjVar.zzh();
        int iZzh4 = zzfjVar.zzh();
        zzfjVar.zzH(4);
        int iZzh5 = zzfjVar.zzh();
        int iZzh6 = zzfjVar.zzh();
        zzfjVar.zzH(8);
        return new zzadz(iZzh, iZzh2, iZzh3, iZzh4, iZzh5, iZzh6);
    }

    @Override // com.google.android.gms.internal.ads.zzadt
    public final int zza() {
        return 1752331379;
    }
}
