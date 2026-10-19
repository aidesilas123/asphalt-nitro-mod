package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzalc {
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final zzfq zza = new zzfq(0);
    private long zzf = C.TIME_UNSET;
    private long zzg = C.TIME_UNSET;
    private long zzh = C.TIME_UNSET;
    private final zzfj zzb = new zzfj();

    zzalc(int i) {
    }

    private final int zze(zzacf zzacfVar) {
        byte[] bArr = zzfs.zzf;
        int length = bArr.length;
        this.zzb.zzE(bArr, 0);
        this.zzc = true;
        zzacfVar.zzj();
        return 0;
    }

    public final int zza(zzacf zzacfVar, zzadb zzadbVar, int i) throws IOException {
        if (i <= 0) {
            zze(zzacfVar);
            return 0;
        }
        boolean z = this.zze;
        long j = C.TIME_UNSET;
        if (!z) {
            long jZzd = zzacfVar.zzd();
            int iMin = (int) Math.min(112800L, jZzd);
            long j2 = jZzd - ((long) iMin);
            if (zzacfVar.zzf() == j2) {
                this.zzb.zzD(iMin);
                zzacfVar.zzj();
                ((zzabu) zzacfVar).zzm(this.zzb.zzI(), 0, iMin, false);
                zzfj zzfjVar = this.zzb;
                int iZzc = zzfjVar.zzc();
                int iZzd = zzfjVar.zzd();
                int i2 = iZzd - 188;
                while (true) {
                    if (i2 < iZzc) {
                        break;
                    }
                    byte[] bArrZzI = zzfjVar.zzI();
                    int i3 = -4;
                    int i4 = 0;
                    while (true) {
                        if (i3 > 4) {
                            break;
                        }
                        int i5 = (i3 * 188) + i2;
                        if (i5 < iZzc || i5 >= iZzd || bArrZzI[i5] != 71) {
                            i4 = 0;
                        } else {
                            i4++;
                            if (i4 == 5) {
                                long jZzb = zzalm.zzb(zzfjVar, i2, i);
                                if (jZzb != C.TIME_UNSET) {
                                    j = jZzb;
                                    break;
                                }
                            }
                        }
                        i3++;
                    }
                    i2--;
                }
                this.zzg = j;
                this.zze = true;
                return 0;
            }
            zzadbVar.zza = j2;
        } else {
            if (this.zzg == C.TIME_UNSET) {
                zze(zzacfVar);
                return 0;
            }
            if (this.zzd) {
                long j3 = this.zzf;
                if (j3 == C.TIME_UNSET) {
                    zze(zzacfVar);
                    return 0;
                }
                zzfq zzfqVar = this.zza;
                long jZzb2 = zzfqVar.zzb(this.zzg) - zzfqVar.zzb(j3);
                this.zzh = jZzb2;
                if (jZzb2 < 0) {
                    zzez.zzf("TsDurationReader", "Invalid duration: " + jZzb2 + ". Using TIME_UNSET instead.");
                    this.zzh = C.TIME_UNSET;
                }
                zze(zzacfVar);
                return 0;
            }
            int iMin2 = (int) Math.min(112800L, zzacfVar.zzd());
            if (zzacfVar.zzf() == 0) {
                this.zzb.zzD(iMin2);
                zzacfVar.zzj();
                ((zzabu) zzacfVar).zzm(this.zzb.zzI(), 0, iMin2, false);
                zzfj zzfjVar2 = this.zzb;
                int iZzc2 = zzfjVar2.zzc();
                int iZzd2 = zzfjVar2.zzd();
                while (true) {
                    if (iZzc2 >= iZzd2) {
                        break;
                    }
                    if (zzfjVar2.zzI()[iZzc2] == 71) {
                        long jZzb3 = zzalm.zzb(zzfjVar2, iZzc2, i);
                        if (jZzb3 != C.TIME_UNSET) {
                            j = jZzb3;
                            break;
                        }
                    }
                    iZzc2++;
                }
                this.zzf = j;
                this.zzd = true;
                return 0;
            }
            zzadbVar.zza = 0L;
        }
        return 1;
    }

    public final long zzb() {
        return this.zzh;
    }

    public final zzfq zzc() {
        return this.zza;
    }

    public final boolean zzd() {
        return this.zzc;
    }
}
