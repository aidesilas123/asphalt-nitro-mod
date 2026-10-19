package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzlc {
    public final zzui zza;
    public final Object zzb;
    public final zzwa[] zzc;
    public boolean zzd;
    public boolean zze;
    public zzld zzf;
    public boolean zzg;
    private final boolean[] zzh;
    private final zzmb[] zzi;
    private final zzye zzj;
    private final zzlr zzk;

    @Nullable
    private zzlc zzl;
    private zzwl zzm;
    private zzyf zzn;
    private long zzo;

    public zzlc(zzmb[] zzmbVarArr, long j, zzye zzyeVar, zzyn zzynVar, zzlr zzlrVar, zzld zzldVar, zzyf zzyfVar) {
        this.zzi = zzmbVarArr;
        this.zzo = j;
        this.zzj = zzyeVar;
        this.zzk = zzlrVar;
        zzuk zzukVar = zzldVar.zza;
        this.zzb = zzukVar.zza;
        this.zzf = zzldVar;
        this.zzm = zzwl.zza;
        this.zzn = zzyfVar;
        this.zzc = new zzwa[2];
        this.zzh = new boolean[2];
        long j2 = zzldVar.zzb;
        long j3 = zzldVar.zzd;
        zzui zzuiVarZzp = zzlrVar.zzp(zzukVar, zzynVar, j2);
        this.zza = j3 != C.TIME_UNSET ? new zztp(zzuiVarZzp, true, 0L, j3) : zzuiVarZzp;
    }

    private final void zzs() {
        if (!zzu()) {
            return;
        }
        int i = 0;
        while (true) {
            zzyf zzyfVar = this.zzn;
            if (i >= zzyfVar.zza) {
                return;
            }
            zzyfVar.zzb(i);
            zzxy zzxyVar = this.zzn.zzc[i];
            i++;
        }
    }

    private final void zzt() {
        if (!zzu()) {
            return;
        }
        int i = 0;
        while (true) {
            zzyf zzyfVar = this.zzn;
            if (i >= zzyfVar.zza) {
                return;
            }
            zzyfVar.zzb(i);
            zzxy zzxyVar = this.zzn.zzc[i];
            i++;
        }
    }

    private final boolean zzu() {
        return this.zzl == null;
    }

    public final long zza(zzyf zzyfVar, long j, boolean z) {
        return zzb(zzyfVar, j, false, new boolean[2]);
    }

    public final long zzb(zzyf zzyfVar, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= zzyfVar.zza) {
                break;
            }
            boolean[] zArr2 = this.zzh;
            if (z || !zzyfVar.zza(this.zzn, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        int i2 = 0;
        while (true) {
            zzmb[] zzmbVarArr = this.zzi;
            if (i2 >= 2) {
                break;
            }
            zzmbVarArr[i2].zzb();
            i2++;
        }
        zzs();
        this.zzn = zzyfVar;
        zzt();
        long jZzg = this.zza.zzg(zzyfVar.zzc, this.zzh, this.zzc, zArr, j);
        int i3 = 0;
        while (true) {
            zzmb[] zzmbVarArr2 = this.zzi;
            if (i3 >= 2) {
                break;
            }
            zzmbVarArr2[i3].zzb();
            i3++;
        }
        this.zze = false;
        int i4 = 0;
        while (true) {
            zzwa[] zzwaVarArr = this.zzc;
            if (i4 >= 2) {
                return jZzg;
            }
            if (zzwaVarArr[i4] != null) {
                zzef.zzf(zzyfVar.zzb(i4));
                this.zzi[i4].zzb();
                this.zze = true;
            } else {
                zzef.zzf(zzyfVar.zzc[i4] == null);
            }
            i4++;
        }
    }

    public final long zzc() {
        if (!this.zzd) {
            return this.zzf.zzb;
        }
        long jZzb = this.zze ? this.zza.zzb() : Long.MIN_VALUE;
        return jZzb == Long.MIN_VALUE ? this.zzf.zze : jZzb;
    }

    public final long zzd() {
        if (this.zzd) {
            return this.zza.zzc();
        }
        return 0L;
    }

    public final long zze() {
        return this.zzo;
    }

    public final long zzf() {
        return this.zzf.zzb + this.zzo;
    }

    @Nullable
    public final zzlc zzg() {
        return this.zzl;
    }

    public final zzwl zzh() {
        return this.zzm;
    }

    public final zzyf zzi() {
        return this.zzn;
    }

    public final zzyf zzj(float f2, zzda zzdaVar) throws zzit {
        zzyf zzyfVarZzo = this.zzj.zzo(this.zzi, this.zzm, this.zzf.zza, zzdaVar);
        for (zzxy zzxyVar : zzyfVarZzo.zzc) {
        }
        return zzyfVarZzo;
    }

    public final void zzk(long j, float f2, long j2) {
        zzef.zzf(zzu());
        long j3 = j - this.zzo;
        zzky zzkyVar = new zzky();
        zzkyVar.zze(j3);
        zzkyVar.zzf(f2);
        zzkyVar.zzd(j2);
        this.zza.zzo(new zzla(zzkyVar, null));
    }

    public final void zzl(float f2, zzda zzdaVar) throws zzit {
        this.zzd = true;
        this.zzm = this.zza.zzi();
        zzyf zzyfVarZzj = zzj(f2, zzdaVar);
        zzld zzldVar = this.zzf;
        long jMax = zzldVar.zzb;
        long j = zzldVar.zze;
        if (j != C.TIME_UNSET && jMax >= j) {
            jMax = Math.max(0L, j - 1);
        }
        long jZza = zza(zzyfVarZzj, jMax, false);
        long j2 = this.zzo;
        zzld zzldVar2 = this.zzf;
        this.zzo = j2 + (zzldVar2.zzb - jZza);
        this.zzf = zzldVar2.zzb(jZza);
    }

    public final void zzm(long j) {
        zzef.zzf(zzu());
        if (this.zzd) {
            this.zza.zzm(j - this.zzo);
        }
    }

    public final void zzn() {
        zzs();
        zzui zzuiVar = this.zza;
        try {
            boolean z = zzuiVar instanceof zztp;
            zzlr zzlrVar = this.zzk;
            if (z) {
                zzlrVar.zzi(((zztp) zzuiVar).zza);
            } else {
                zzlrVar.zzi(zzuiVar);
            }
        } catch (RuntimeException e2) {
            zzez.zzd("MediaPeriodHolder", "Period release failed.", e2);
        }
    }

    public final void zzo(@Nullable zzlc zzlcVar) {
        if (zzlcVar == this.zzl) {
            return;
        }
        zzs();
        this.zzl = zzlcVar;
        zzt();
    }

    public final void zzp(long j) {
        this.zzo = 1000000000000L;
    }

    public final void zzq() {
        zzui zzuiVar = this.zza;
        if (zzuiVar instanceof zztp) {
            long j = this.zzf.zzd;
            if (j == C.TIME_UNSET) {
                j = Long.MIN_VALUE;
            }
            ((zztp) zzuiVar).zzn(0L, j);
        }
    }

    public final boolean zzr() {
        return this.zzd && (!this.zze || this.zza.zzb() == Long.MIN_VALUE);
    }
}
