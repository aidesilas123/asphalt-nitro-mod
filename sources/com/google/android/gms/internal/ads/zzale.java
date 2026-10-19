package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzale implements zzakx {
    final /* synthetic */ zzalg zza;
    private final zzfi zzb = new zzfi(new byte[4], 4);

    public zzale(zzalg zzalgVar) {
        this.zza = zzalgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzakx
    public final void zza(zzfj zzfjVar) {
        if (zzfjVar.zzl() == 0 && (zzfjVar.zzl() & 128) != 0) {
            zzfjVar.zzH(6);
            int iZza = zzfjVar.zza() / 4;
            for (int i = 0; i < iZza; i++) {
                zzfjVar.zzB(this.zzb, 4);
                zzfi zzfiVar = this.zzb;
                int iZzd = zzfiVar.zzd(16);
                zzfiVar.zzl(3);
                if (iZzd == 0) {
                    this.zzb.zzl(13);
                } else {
                    int iZzd2 = this.zzb.zzd(13);
                    if (this.zza.zzf.get(iZzd2) == null) {
                        zzalg zzalgVar = this.zza;
                        zzalgVar.zzf.put(iZzd2, new zzaky(new zzalf(zzalgVar, iZzd2)));
                        this.zza.zzl++;
                    }
                }
            }
            this.zza.zzf.remove(0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakx
    public final void zzb(zzfq zzfqVar, zzach zzachVar, zzalk zzalkVar) {
    }
}
