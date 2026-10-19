package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzakv {
    private final zzajy zza;
    private final zzfq zzb;
    private final zzfi zzc = new zzfi(new byte[64], 64);
    private boolean zzd;
    private boolean zze;
    private boolean zzf;

    public zzakv(zzajy zzajyVar, zzfq zzfqVar) {
        this.zza = zzajyVar;
        this.zzb = zzfqVar;
    }

    public final void zza(zzfj zzfjVar) throws zzcf {
        long jZzb;
        long j;
        zzfjVar.zzC(this.zzc.zza, 0, 3);
        this.zzc.zzj(0);
        this.zzc.zzl(8);
        this.zzd = this.zzc.zzn();
        this.zze = this.zzc.zzn();
        this.zzc.zzl(6);
        zzfi zzfiVar = this.zzc;
        zzfjVar.zzC(zzfiVar.zza, 0, zzfiVar.zzd(8));
        this.zzc.zzj(0);
        if (this.zzd) {
            this.zzc.zzl(4);
            long jZzd = this.zzc.zzd(3);
            this.zzc.zzl(1);
            int iZzd = this.zzc.zzd(15) << 15;
            this.zzc.zzl(1);
            long jZzd2 = this.zzc.zzd(15);
            this.zzc.zzl(1);
            if (this.zzf || !this.zze) {
                j = jZzd;
            } else {
                this.zzc.zzl(4);
                long jZzd3 = ((long) this.zzc.zzd(3)) << 30;
                this.zzc.zzl(1);
                int iZzd2 = this.zzc.zzd(15) << 15;
                this.zzc.zzl(1);
                j = jZzd;
                long jZzd4 = this.zzc.zzd(15);
                this.zzc.zzl(1);
                this.zzb.zzb(((long) iZzd2) | jZzd3 | jZzd4);
                this.zzf = true;
            }
            jZzb = this.zzb.zzb((j << 30) | ((long) iZzd) | jZzd2);
        } else {
            jZzb = 0;
        }
        this.zza.zzd(jZzb, 4);
        this.zza.zza(zzfjVar);
        this.zza.zzc(false);
    }

    public final void zzb() {
        this.zzf = false;
        this.zza.zze();
    }
}
