package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.math.RoundingMode;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaho implements zzahn {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;
    private final long zzd;

    private zzaho(long[] jArr, long[] jArr2, long j, long j2) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = j;
        this.zzd = j2;
    }

    @Nullable
    public static zzaho zzb(long j, long j2, zzacy zzacyVar, zzfj zzfjVar) {
        int iZzl;
        zzfjVar.zzH(10);
        int iZzf = zzfjVar.zzf();
        if (iZzf <= 0) {
            return null;
        }
        int i = zzacyVar.zzd;
        long jZzs = zzfs.zzs(iZzf, ((long) (i >= 32000 ? 1152 : 576)) * 1000000, i, RoundingMode.FLOOR);
        int iZzp = zzfjVar.zzp();
        int iZzp2 = zzfjVar.zzp();
        int iZzp3 = zzfjVar.zzp();
        zzfjVar.zzH(2);
        long j3 = j2 + ((long) zzacyVar.zzc);
        long[] jArr = new long[iZzp];
        long[] jArr2 = new long[iZzp];
        long j4 = j2;
        int i2 = 0;
        while (i2 < iZzp) {
            long j5 = j3;
            long j6 = jZzs;
            jArr[i2] = (((long) i2) * jZzs) / ((long) iZzp);
            jArr2[i2] = Math.max(j4, j5);
            if (iZzp3 == 1) {
                iZzl = zzfjVar.zzl();
            } else if (iZzp3 == 2) {
                iZzl = zzfjVar.zzp();
            } else if (iZzp3 == 3) {
                iZzl = zzfjVar.zzn();
            } else {
                if (iZzp3 != 4) {
                    return null;
                }
                iZzl = zzfjVar.zzo();
            }
            j4 += ((long) iZzl) * ((long) iZzp2);
            i2++;
            j3 = j5;
            iZzp = iZzp;
            jZzs = j6;
        }
        long j7 = jZzs;
        if (j != -1 && j != j4) {
            zzez.zzf("VbriSeeker", "VBRI data size mismatch: " + j + ", " + j4);
        }
        return new zzaho(jArr, jArr2, j7, j4);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final long zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final long zzd(long j) {
        return this.zza[zzfs.zzc(this.zzb, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final zzadc zzg(long j) {
        long[] jArr = this.zza;
        int iZzc = zzfs.zzc(jArr, j, true, true);
        zzadf zzadfVar = new zzadf(jArr[iZzc], this.zzb[iZzc]);
        if (zzadfVar.zzb < j) {
            long[] jArr2 = this.zza;
            if (iZzc != jArr2.length - 1) {
                int i = iZzc + 1;
                return new zzadc(zzadfVar, new zzadf(jArr2[i], this.zzb[i]));
            }
        }
        return new zzadc(zzadfVar, zzadfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final boolean zzh() {
        return true;
    }
}
