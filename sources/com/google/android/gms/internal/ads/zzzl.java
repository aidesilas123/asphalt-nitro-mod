package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzzl implements zzaay, zzdr {
    private final Context zza;
    private final zzaaw zzb;
    private final zzdq zzc;
    private final zzfb zzd = new zzfb(16);
    private final zzfp zze = new zzfp(10);
    private final zzfp zzf = new zzfp(10);
    private final Handler zzg;
    private final int zzh;
    private final ArrayList zzi;

    @Nullable
    private final zzae zzj;
    private zzaav zzk;
    private Executor zzl;

    @Nullable
    private zzaaa zzm;

    @Nullable
    private zzam zzn;

    @Nullable
    private Pair zzo;
    private boolean zzp;
    private final zzdu zzq;
    private zzdu zzr;
    private boolean zzs;
    private long zzt;
    private boolean zzu;
    private long zzv;
    private float zzw;
    private boolean zzx;

    public zzzl(Context context, zzcs zzcsVar, zzaaw zzaawVar, zzam zzamVar) throws zzdo {
        zzs zzsVarZzg;
        int i;
        int i2;
        this.zza = context;
        this.zzb = zzaawVar;
        this.zzh = true != zzfs.zzH(context) ? 5 : 1;
        zzdu zzduVar = zzdu.zza;
        this.zzq = zzduVar;
        this.zzr = zzduVar;
        this.zzw = 1.0f;
        zzae zzaeVarZza = null;
        final Handler handlerZzw = zzfs.zzw(null);
        this.zzg = handlerZzw;
        zzs zzsVar = zzamVar.zzy;
        if (zzsVar == null || ((i2 = zzsVar.zzf) != 7 && i2 != 6)) {
            zzsVar = zzs.zza;
        }
        if (zzsVar.zzf == 7) {
            zzr zzrVarZzc = zzsVar.zzc();
            zzrVarZzc.zzd(6);
            zzsVarZzg = zzrVarZzc.zzg();
        } else {
            zzsVarZzg = zzsVar;
        }
        zzct zzctVarZza = zzcsVar.zza(context, zzsVar, zzsVarZzg, zzv.zzb, this, new Executor() { // from class: com.google.android.gms.internal.ads.zzzi
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handlerZzw.post(runnable);
            }
        }, zzfwu.zzl(), 0L);
        zzctVarZza.zza();
        this.zzc = zzctVarZza.zzb();
        Pair pair = this.zzo;
        if (pair != null) {
            zzfk zzfkVar = (zzfk) pair.second;
            zzfkVar.zzb();
            zzfkVar.zza();
            zzctVarZza.zzc();
        }
        this.zzi = new ArrayList();
        if (zzfs.zza < 21 && (i = zzamVar.zzu) != 0) {
            zzaeVarZza = zzzk.zza(i);
        }
        this.zzj = zzaeVarZza;
    }

    private final void zzr() {
        if (this.zzn == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        zzae zzaeVar = this.zzj;
        if (zzaeVar != null) {
            arrayList.add(zzaeVar);
        }
        arrayList.addAll(this.zzi);
        zzam zzamVar = this.zzn;
        Objects.requireNonNull(zzamVar);
        zzdq zzdqVar = this.zzc;
        zzan zzanVar = new zzan(zzamVar.zzr, zzamVar.zzs);
        zzanVar.zza(zzamVar.zzv);
        zzanVar.zzb();
        zzdqVar.zzf();
    }

    private final void zzs(long j, boolean z) {
        this.zzc.zzg();
        this.zzd.zzb();
        if (j == -2) {
            ((zzzw) this.zzb).zzaP(0, 1);
            return;
        }
        this.zzb.zzaK();
        if (this.zzs) {
            return;
        }
        if (this.zzk != null) {
            Objects.requireNonNull(this.zzl);
            new zzzj(this).zza.zzf();
        }
        this.zzs = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaay
    public final long zza(long j, boolean z) {
        if (this.zzc.zza() >= this.zzh || !this.zzc.zze()) {
            return C.TIME_UNSET;
        }
        long j2 = this.zzt;
        long j3 = j + j2;
        if (this.zzu) {
            this.zze.zzd(j3, Long.valueOf(j2));
            this.zzu = false;
        }
        if (z) {
            this.zzp = true;
        }
        return j3 * 1000;
    }

    @Override // com.google.android.gms.internal.ads.zzaay
    public final Surface zzb() {
        return this.zzc.zzb();
    }

    public final void zzc() {
        this.zzc.zzh();
        this.zzo = null;
        this.zzs = false;
    }

    @Override // com.google.android.gms.internal.ads.zzaay
    public final void zzd() {
        this.zzc.zzc();
        this.zzd.zzc();
        this.zze.zze();
        this.zzg.removeCallbacksAndMessages(null);
        this.zzs = false;
        if (this.zzp) {
            this.zzp = false;
        }
    }

    final /* synthetic */ void zze(zzdu zzduVar) {
        zzaav zzaavVar = this.zzk;
        Objects.requireNonNull(zzaavVar);
        ((zzzq) zzaavVar).zza.zzaW(zzduVar);
    }

    final /* synthetic */ void zzf() {
        zzaav zzaavVar = this.zzk;
        Objects.requireNonNull(zzaavVar);
        ((zzzq) zzaavVar).zza.zzaV();
    }

    @Override // com.google.android.gms.internal.ads.zzaay
    public final void zzg(int i, zzam zzamVar) {
        this.zzn = zzamVar;
        zzr();
        if (this.zzp) {
            this.zzp = false;
        }
    }

    public final void zzh() {
        this.zzc.zzd();
        this.zzg.removeCallbacksAndMessages(null);
        this.zze.zze();
        this.zzd.zzc();
        this.zzs = false;
    }

    @Override // com.google.android.gms.internal.ads.zzaay
    public final void zzi(long j, long j2) {
        final zzdu zzduVar;
        while (true) {
            zzfb zzfbVar = this.zzd;
            if (zzfbVar.zzd()) {
                return;
            }
            long jZza = zzfbVar.zza();
            Long l = (Long) this.zze.zzc(jZza);
            if (l != null && l.longValue() != this.zzv) {
                this.zzv = l.longValue();
                this.zzs = false;
            }
            long j3 = jZza - this.zzv;
            long jZzak = this.zzb.zzak(jZza, j, j2, this.zzw);
            if (jZzak == -3) {
                return;
            }
            if (j3 == -2) {
                zzs(-2L, false);
            } else {
                this.zzb.zzaL(jZza);
                if (this.zzm != null) {
                    if (jZzak == -1) {
                        System.nanoTime();
                        jZzak = -1;
                    }
                    Objects.requireNonNull(this.zzn);
                }
                zzs(jZzak != -1 ? jZzak : -1L, false);
                if (!this.zzx && this.zzk != null && (zzduVar = (zzdu) this.zzf.zzc(jZza)) != null) {
                    if (!zzduVar.equals(zzdu.zza) && !zzduVar.equals(this.zzr)) {
                        this.zzr = zzduVar;
                        Objects.requireNonNull(this.zzl);
                        new Runnable() { // from class: com.google.android.gms.internal.ads.zzzh
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zza.zze(zzduVar);
                            }
                        }.run();
                    }
                    this.zzx = true;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaay
    public final void zzj(zzaav zzaavVar, Executor executor) {
        if (zzfs.zzF(this.zzk, zzaavVar)) {
            zzef.zzf(zzfs.zzF(this.zzl, executor));
        } else {
            this.zzk = zzaavVar;
            this.zzl = executor;
        }
    }

    public final void zzk(Surface surface, zzfk zzfkVar) {
        Pair pair = this.zzo;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((zzfk) this.zzo.second).equals(zzfkVar)) {
            return;
        }
        Pair pair2 = this.zzo;
        boolean z = true;
        if (pair2 != null && !((Surface) pair2.first).equals(surface)) {
            z = false;
        }
        this.zzs = z;
        this.zzo = Pair.create(surface, zzfkVar);
        zzdq zzdqVar = this.zzc;
        zzfkVar.zzb();
        zzfkVar.zza();
        zzdqVar.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzaay
    public final void zzl(float f2) {
        zzef.zzd(((double) f2) >= 0.0d);
        this.zzw = f2;
    }

    public final void zzm(long j) {
        this.zzu = this.zzt != j;
        this.zzt = j;
    }

    public final void zzn(List list) {
        this.zzi.clear();
        this.zzi.addAll(list);
        zzr();
    }

    public final void zzo(zzaaa zzaaaVar) {
        this.zzm = zzaaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaay
    public final boolean zzp() {
        return zzfs.zzH(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzaay
    public final boolean zzq() {
        return this.zzs;
    }
}
