package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
abstract class zzajh {
    private zzadk zzb;
    private zzach zzc;
    private zzajc zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private int zzh;
    private int zzi;
    private long zzk;
    private boolean zzl;
    private boolean zzm;
    private final zzaja zza = new zzaja();
    private zzaje zzj = new zzaje();

    protected abstract long zza(zzfj zzfjVar);

    protected void zzb(boolean z) {
        int i;
        if (z) {
            this.zzj = new zzaje();
            this.zzf = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.zzh = i;
        this.zze = -1L;
        this.zzg = 0L;
    }

    protected abstract boolean zzc(zzfj zzfjVar, long j, zzaje zzajeVar) throws IOException;

    final int zze(zzacf zzacfVar, zzadb zzadbVar) throws IOException {
        zzef.zzb(this.zzb);
        int i = zzfs.zza;
        int i2 = this.zzh;
        if (i2 == 0) {
            while (this.zza.zze(zzacfVar)) {
                long jZzf = zzacfVar.zzf();
                long j = this.zzf;
                this.zzk = jZzf - j;
                if (zzc(this.zza.zza(), j, this.zzj)) {
                    this.zzf = zzacfVar.zzf();
                } else {
                    zzam zzamVar = this.zzj.zza;
                    this.zzi = zzamVar.zzA;
                    if (!this.zzm) {
                        this.zzb.zzl(zzamVar);
                        this.zzm = true;
                    }
                    zzajc zzajcVar = this.zzj.zzb;
                    if (zzajcVar != null) {
                        this.zzd = zzajcVar;
                    } else if (zzacfVar.zzd() == -1) {
                        this.zzd = new zzajg(null);
                    } else {
                        zzajb zzajbVarZzb = this.zza.zzb();
                        this.zzd = new zzaiv(this, this.zzf, zzacfVar.zzd(), zzajbVarZzb.zzd + zzajbVarZzb.zze, zzajbVarZzb.zzb, (zzajbVarZzb.zza & 4) != 0);
                    }
                    this.zzh = 2;
                    this.zza.zzd();
                }
            }
            this.zzh = 3;
            return -1;
        }
        if (i2 == 1) {
            ((zzabu) zzacfVar).zzo((int) this.zzf, false);
            this.zzh = 2;
            return 0;
        }
        if (i2 != 2) {
            return -1;
        }
        long jZzd = this.zzd.zzd(zzacfVar);
        if (jZzd >= 0) {
            zzadbVar.zza = jZzd;
            return 1;
        }
        if (jZzd < -1) {
            zzi(-(jZzd + 2));
        }
        if (!this.zzl) {
            zzade zzadeVarZze = this.zzd.zze();
            zzef.zzb(zzadeVarZze);
            this.zzc.zzO(zzadeVarZze);
            this.zzl = true;
        }
        if (this.zzk <= 0 && !this.zza.zze(zzacfVar)) {
            this.zzh = 3;
            return -1;
        }
        this.zzk = 0L;
        zzfj zzfjVarZza = this.zza.zza();
        long jZza = zza(zzfjVarZza);
        if (jZza >= 0) {
            long j2 = this.zzg;
            if (j2 + jZza >= this.zze) {
                long jZzf2 = zzf(j2);
                zzadi.zzb(this.zzb, zzfjVarZza, zzfjVarZza.zzd());
                this.zzb.zzt(jZzf2, 1, zzfjVarZza.zzd(), 0, null);
                this.zze = -1L;
            }
        }
        this.zzg += jZza;
        return 0;
    }

    protected final long zzf(long j) {
        return (j * 1000000) / ((long) this.zzi);
    }

    protected final long zzg(long j) {
        return (((long) this.zzi) * j) / 1000000;
    }

    final void zzh(zzach zzachVar, zzadk zzadkVar) {
        this.zzc = zzachVar;
        this.zzb = zzadkVar;
        zzb(true);
    }

    protected void zzi(long j) {
        this.zzg = j;
    }

    final void zzj(long j, long j2) {
        this.zza.zzc();
        if (j == 0) {
            zzb(!this.zzl);
            return;
        }
        if (this.zzh != 0) {
            long jZzg = zzg(j2);
            this.zze = jZzg;
            zzajc zzajcVar = this.zzd;
            int i = zzfs.zza;
            zzajcVar.zzg(jZzg);
            this.zzh = 2;
        }
    }
}
