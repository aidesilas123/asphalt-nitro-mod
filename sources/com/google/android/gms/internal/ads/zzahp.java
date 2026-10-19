package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.math.RoundingMode;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzahp implements zzahn {
    private final long zza;
    private final int zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;

    @Nullable
    private final long[] zzf;

    private zzahp(long j, int i, long j2, long j3, @Nullable long[] jArr) {
        this.zza = j;
        this.zzb = i;
        this.zzc = j2;
        this.zzf = jArr;
        this.zzd = j3;
        this.zze = j3 != -1 ? j + j3 : -1L;
    }

    @Nullable
    public static zzahp zzb(long j, long j2, zzacy zzacyVar, zzfj zzfjVar) {
        int iZzo;
        int i = zzacyVar.zzg;
        int i2 = zzacyVar.zzd;
        int iZzf = zzfjVar.zzf();
        if ((iZzf & 1) != 1 || (iZzo = zzfjVar.zzo()) == 0) {
            return null;
        }
        int i3 = iZzf & 6;
        long jZzs = zzfs.zzs(iZzo, ((long) i) * 1000000, i2, RoundingMode.FLOOR);
        if (i3 != 6) {
            return new zzahp(j2, zzacyVar.zzc, jZzs, -1L, null);
        }
        long jZzt = zzfjVar.zzt();
        long[] jArr = new long[100];
        for (int i4 = 0; i4 < 100; i4++) {
            jArr[i4] = zzfjVar.zzl();
        }
        if (j != -1) {
            long j3 = j2 + jZzt;
            if (j != j3) {
                zzez.zzf("XingSeeker", "XING data size mismatch: " + j + ", " + j3);
            }
        }
        return new zzahp(j2, zzacyVar.zzc, jZzs, jZzt, jArr);
    }

    private final long zze(int i) {
        return (this.zzc * ((long) i)) / 100;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final long zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final long zzd(long j) {
        if (!zzh()) {
            return 0L;
        }
        long j2 = j - this.zza;
        if (j2 <= this.zzb) {
            return 0L;
        }
        long[] jArr = this.zzf;
        zzef.zzb(jArr);
        double d2 = (j2 * 256.0d) / this.zzd;
        int iZzc = zzfs.zzc(jArr, (long) d2, true, true);
        long jZze = zze(iZzc);
        long j3 = jArr[iZzc];
        int i = iZzc + 1;
        long jZze2 = zze(i);
        return jZze + Math.round((j3 == (iZzc == 99 ? 256L : jArr[i]) ? 0.0d : (d2 - j3) / (r0 - j3)) * (jZze2 - jZze));
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final zzadc zzg(long j) {
        if (!zzh()) {
            zzadf zzadfVar = new zzadf(0L, this.zza + ((long) this.zzb));
            return new zzadc(zzadfVar, zzadfVar);
        }
        long jMax = Math.max(0L, Math.min(j, this.zzc));
        double d2 = (jMax * 100.0d) / this.zzc;
        double d3 = 0.0d;
        if (d2 > 0.0d) {
            if (d2 >= 100.0d) {
                d3 = 256.0d;
            } else {
                int i = (int) d2;
                long[] jArr = this.zzf;
                zzef.zzb(jArr);
                double d4 = jArr[i];
                d3 = d4 + ((d2 - ((double) i)) * ((i == 99 ? 256.0d : jArr[i + 1]) - d4));
            }
        }
        long j2 = this.zzd;
        zzadf zzadfVar2 = new zzadf(jMax, this.zza + Math.max(this.zzb, Math.min(Math.round((d3 / 256.0d) * j2), j2 - 1)));
        return new zzadc(zzadfVar2, zzadfVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final boolean zzh() {
        return this.zzf != null;
    }
}
