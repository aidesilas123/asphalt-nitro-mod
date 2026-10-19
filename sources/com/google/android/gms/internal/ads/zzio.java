package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzio {
    private final long zza;
    private final long zzb;
    private long zzc = C.TIME_UNSET;
    private long zzd = C.TIME_UNSET;
    private long zzf = C.TIME_UNSET;
    private long zzg = C.TIME_UNSET;
    private float zzj = 0.97f;
    private float zzi = 1.03f;
    private float zzk = 1.0f;
    private long zzl = C.TIME_UNSET;
    private long zze = C.TIME_UNSET;
    private long zzh = C.TIME_UNSET;
    private long zzm = C.TIME_UNSET;
    private long zzn = C.TIME_UNSET;

    /* synthetic */ zzio(float f2, float f3, long j, float f4, long j2, long j3, float f5, zzin zzinVar) {
        this.zza = j2;
        this.zzb = j3;
    }

    private static long zzf(long j, long j2, float f2) {
        return (long) ((j * 0.999f) + (j2 * 9.999871E-4f));
    }

    private final void zzg() {
        long j = this.zzc;
        if (j != C.TIME_UNSET) {
            long j2 = this.zzd;
            if (j2 != C.TIME_UNSET) {
                j = j2;
            }
            long j3 = this.zzf;
            if (j3 != C.TIME_UNSET && j < j3) {
                j = j3;
            }
            long j4 = this.zzg;
            if (j4 != C.TIME_UNSET && j > j4) {
                j = j4;
            }
        } else {
            j = -9223372036854775807L;
        }
        if (this.zze == j) {
            return;
        }
        this.zze = j;
        this.zzh = j;
        this.zzm = C.TIME_UNSET;
        this.zzn = C.TIME_UNSET;
        this.zzl = C.TIME_UNSET;
    }

    public final float zza(long j, long j2) {
        long jMax;
        if (this.zzc == C.TIME_UNSET) {
            return 1.0f;
        }
        long j3 = j - j2;
        long j4 = this.zzm;
        if (j4 == C.TIME_UNSET) {
            this.zzm = j3;
            this.zzn = 0L;
        } else {
            long jMax2 = Math.max(j3, zzf(j4, j3, 0.999f));
            this.zzm = jMax2;
            this.zzn = zzf(this.zzn, Math.abs(j3 - jMax2), 0.999f);
        }
        if (this.zzl != C.TIME_UNSET && SystemClock.elapsedRealtime() - this.zzl < 1000) {
            return this.zzk;
        }
        this.zzl = SystemClock.elapsedRealtime();
        long j5 = this.zzm + (this.zzn * 3);
        if (this.zzh > j5) {
            float fZzq = zzfs.zzq(1000L);
            long[] jArr = {j5, this.zze, this.zzh - (((long) ((this.zzk - 1.0f) * fZzq)) + ((long) ((this.zzi - 1.0f) * fZzq)))};
            jMax = jArr[0];
            for (int i = 1; i < 3; i++) {
                long j6 = jArr[i];
                if (j6 > jMax) {
                    jMax = j6;
                }
            }
            this.zzh = jMax;
        } else {
            jMax = Math.max(this.zzh, Math.min(j - ((long) (Math.max(0.0f, this.zzk - 1.0f) / 1.0E-7f)), j5));
            this.zzh = jMax;
            long j7 = this.zzg;
            if (j7 != C.TIME_UNSET && jMax > j7) {
                this.zzh = j7;
                jMax = j7;
            }
        }
        long j8 = j - jMax;
        if (Math.abs(j8) < this.zza) {
            this.zzk = 1.0f;
            return 1.0f;
        }
        float fMax = Math.max(this.zzj, Math.min((j8 * 1.0E-7f) + 1.0f, this.zzi));
        this.zzk = fMax;
        return fMax;
    }

    public final long zzb() {
        return this.zzh;
    }

    public final void zzc() {
        long j = this.zzh;
        if (j == C.TIME_UNSET) {
            return;
        }
        long j2 = j + this.zzb;
        this.zzh = j2;
        long j3 = this.zzg;
        if (j3 != C.TIME_UNSET && j2 > j3) {
            this.zzh = j3;
        }
        this.zzl = C.TIME_UNSET;
    }

    public final void zzd(zzbi zzbiVar) {
        long j = zzbiVar.zzc;
        this.zzc = zzfs.zzq(C.TIME_UNSET);
        this.zzf = zzfs.zzq(C.TIME_UNSET);
        this.zzg = zzfs.zzq(C.TIME_UNSET);
        this.zzj = 0.97f;
        this.zzi = 1.03f;
        zzg();
    }

    public final void zze(long j) {
        this.zzd = j;
        zzg();
    }
}
