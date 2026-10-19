package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public class zzabq {
    protected final zzabk zza;
    protected final zzabp zzb;

    @Nullable
    protected zzabm zzc;
    private final int zzd;

    protected zzabq(zzabn zzabnVar, zzabp zzabpVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.zzb = zzabpVar;
        this.zzd = i;
        this.zza = new zzabk(zzabnVar, j, 0L, j3, j4, j5, j6);
    }

    protected static final int zzf(zzacf zzacfVar, long j, zzadb zzadbVar) {
        if (j == zzacfVar.zzf()) {
            return 0;
        }
        zzadbVar.zza = j;
        return 1;
    }

    protected static final boolean zzg(zzacf zzacfVar, long j) throws IOException {
        long jZzf = j - zzacfVar.zzf();
        if (jZzf < 0 || jZzf > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        ((zzabu) zzacfVar).zzo((int) jZzf, false);
        return true;
    }

    public final int zza(zzacf zzacfVar, zzadb zzadbVar) throws IOException {
        while (true) {
            zzabm zzabmVar = this.zzc;
            zzef.zzb(zzabmVar);
            long j = zzabmVar.zzf;
            long j2 = zzabmVar.zzg - j;
            int i = this.zzd;
            long j3 = zzabmVar.zzh;
            if (j2 <= i) {
                zzc(false, j);
                return zzf(zzacfVar, j, zzadbVar);
            }
            if (!zzg(zzacfVar, j3)) {
                return zzf(zzacfVar, j3, zzadbVar);
            }
            zzacfVar.zzj();
            zzabo zzaboVarZza = this.zzb.zza(zzacfVar, zzabmVar.zzb);
            int i2 = zzaboVarZza.zzb;
            if (i2 == -3) {
                zzc(false, j3);
                return zzf(zzacfVar, j3, zzadbVar);
            }
            if (i2 == -2) {
                zzabm.zzh(zzabmVar, zzaboVarZza.zzc, zzaboVarZza.zzd);
            } else {
                if (i2 != -1) {
                    zzg(zzacfVar, zzaboVarZza.zzd);
                    zzc(true, zzaboVarZza.zzd);
                    return zzf(zzacfVar, zzaboVarZza.zzd, zzadbVar);
                }
                zzabm.zzg(zzabmVar, zzaboVarZza.zzc, zzaboVarZza.zzd);
            }
        }
    }

    public final zzade zzb() {
        return this.zza;
    }

    protected final void zzc(boolean z, long j) {
        this.zzc = null;
        this.zzb.zzb();
    }

    public final void zzd(long j) {
        zzabm zzabmVar = this.zzc;
        if (zzabmVar == null || zzabmVar.zza != j) {
            zzabk zzabkVar = this.zza;
            this.zzc = new zzabm(j, zzabkVar.zzf(j), 0L, zzabkVar.zzc, zzabkVar.zzd, zzabkVar.zze, zzabkVar.zzf);
        }
    }

    public final boolean zze() {
        return this.zzc != null;
    }
}
