package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzakt {
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final zzfq zza = new zzfq(0);
    private long zzf = C.TIME_UNSET;
    private long zzg = C.TIME_UNSET;
    private long zzh = C.TIME_UNSET;
    private final zzfj zzb = new zzfj();

    zzakt() {
    }

    public static long zzc(zzfj zzfjVar) {
        int iZzc = zzfjVar.zzc();
        if (zzfjVar.zza() < 9) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        zzfjVar.zzC(bArr, 0, 9);
        zzfjVar.zzG(iZzc);
        byte b = bArr[0];
        if ((b & 196) != 68) {
            return C.TIME_UNSET;
        }
        byte b2 = bArr[2];
        if ((b2 & 4) != 4) {
            return C.TIME_UNSET;
        }
        byte b3 = bArr[4];
        if ((b3 & 4) != 4 || (bArr[5] & 1) != 1 || (bArr[8] & 3) != 3) {
            return C.TIME_UNSET;
        }
        long j = b;
        long j2 = b2;
        long j3 = (248 & j2) >> 3;
        long j4 = (j2 & 3) << 13;
        return j4 | ((bArr[1] & 255) << 20) | ((j & 3) << 28) | (((j & 56) >> 3) << 30) | (j3 << 15) | ((((long) bArr[3]) & 255) << 5) | ((((long) b3) & 248) >> 3);
    }

    private final int zzf(zzacf zzacfVar) {
        byte[] bArr = zzfs.zzf;
        int length = bArr.length;
        this.zzb.zzE(bArr, 0);
        this.zzc = true;
        zzacfVar.zzj();
        return 0;
    }

    private static final int zzg(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public final int zza(zzacf zzacfVar, zzadb zzadbVar) throws IOException {
        boolean z = this.zze;
        long j = C.TIME_UNSET;
        if (!z) {
            long jZzd = zzacfVar.zzd();
            int iMin = (int) Math.min(20000L, jZzd);
            long j2 = jZzd - ((long) iMin);
            if (zzacfVar.zzf() != j2) {
                zzadbVar.zza = j2;
                return 1;
            }
            this.zzb.zzD(iMin);
            zzacfVar.zzj();
            ((zzabu) zzacfVar).zzm(this.zzb.zzI(), 0, iMin, false);
            zzfj zzfjVar = this.zzb;
            int iZzc = zzfjVar.zzc();
            int iZzd = zzfjVar.zzd() - 4;
            while (true) {
                if (iZzd < iZzc) {
                    break;
                }
                if (zzg(zzfjVar.zzI(), iZzd) == 442) {
                    zzfjVar.zzG(iZzd + 4);
                    long jZzc = zzc(zzfjVar);
                    if (jZzc != C.TIME_UNSET) {
                        j = jZzc;
                        break;
                    }
                }
                iZzd--;
            }
            this.zzg = j;
            this.zze = true;
        } else {
            if (this.zzg == C.TIME_UNSET) {
                zzf(zzacfVar);
                return 0;
            }
            if (this.zzd) {
                long j3 = this.zzf;
                if (j3 == C.TIME_UNSET) {
                    zzf(zzacfVar);
                    return 0;
                }
                zzfq zzfqVar = this.zza;
                long jZzb = zzfqVar.zzb(this.zzg) - zzfqVar.zzb(j3);
                this.zzh = jZzb;
                if (jZzb < 0) {
                    zzez.zzf("PsDurationReader", "Invalid duration: " + jZzb + ". Using TIME_UNSET instead.");
                    this.zzh = C.TIME_UNSET;
                }
                zzf(zzacfVar);
                return 0;
            }
            int iMin2 = (int) Math.min(20000L, zzacfVar.zzd());
            if (zzacfVar.zzf() != 0) {
                zzadbVar.zza = 0L;
                return 1;
            }
            this.zzb.zzD(iMin2);
            zzacfVar.zzj();
            ((zzabu) zzacfVar).zzm(this.zzb.zzI(), 0, iMin2, false);
            zzfj zzfjVar2 = this.zzb;
            int iZzc2 = zzfjVar2.zzc();
            int iZzd2 = zzfjVar2.zzd();
            while (true) {
                if (iZzc2 >= iZzd2 - 3) {
                    break;
                }
                if (zzg(zzfjVar2.zzI(), iZzc2) == 442) {
                    zzfjVar2.zzG(iZzc2 + 4);
                    long jZzc2 = zzc(zzfjVar2);
                    if (jZzc2 != C.TIME_UNSET) {
                        j = jZzc2;
                        break;
                    }
                }
                iZzc2++;
            }
            this.zzf = j;
            this.zzd = true;
        }
        return 0;
    }

    public final long zzb() {
        return this.zzh;
    }

    public final zzfq zzd() {
        return this.zza;
    }

    public final boolean zze() {
        return this.zzc;
    }
}
