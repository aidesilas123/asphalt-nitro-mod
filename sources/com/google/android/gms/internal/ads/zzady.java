package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzady implements zzadt {
    public final int zza;
    public final int zzb;
    public final int zzc;

    private zzady(int i, int i2, int i3, int i4) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
    }

    public static zzady zzb(zzfj zzfjVar) {
        int iZzh = zzfjVar.zzh();
        zzfjVar.zzH(8);
        int iZzh2 = zzfjVar.zzh();
        int iZzh3 = zzfjVar.zzh();
        zzfjVar.zzH(4);
        int iZzh4 = zzfjVar.zzh();
        zzfjVar.zzH(12);
        return new zzady(iZzh, iZzh2, iZzh3, iZzh4);
    }

    @Override // com.google.android.gms.internal.ads.zzadt
    public final int zza() {
        return 1751742049;
    }
}
