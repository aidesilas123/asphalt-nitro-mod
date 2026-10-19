package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzacn {
    public static int zza(zzfj zzfjVar, int i) {
        switch (i) {
            case 1:
                return PsExtractor.AUDIO_STREAM;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return zzfjVar.zzl() + 1;
            case 7:
                return zzfjVar.zzp() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    public static long zzb(zzacf zzacfVar, zzacr zzacrVar) throws IOException {
        zzacfVar.zzj();
        zzabu zzabuVar = (zzabu) zzacfVar;
        zzabuVar.zzl(1, false);
        byte[] bArr = new byte[1];
        zzabuVar.zzm(bArr, 0, 1, false);
        int i = bArr[0] & 1;
        boolean z = 1 == i;
        zzabuVar.zzl(2, false);
        int i2 = 1 != i ? 6 : 7;
        zzfj zzfjVar = new zzfj(i2);
        zzfjVar.zzF(zzaci.zza(zzacfVar, zzfjVar.zzI(), 0, i2));
        zzacfVar.zzj();
        zzacm zzacmVar = new zzacm();
        if (zzd(zzfjVar, zzacrVar, z, zzacmVar)) {
            return zzacmVar.zza;
        }
        throw zzcf.zza(null, null);
    }

    public static boolean zzc(zzfj zzfjVar, zzacr zzacrVar, int i, zzacm zzacmVar) {
        int iZza;
        int iZzc = zzfjVar.zzc();
        long jZzt = zzfjVar.zzt();
        long j = jZzt >>> 16;
        if (j != i) {
            return false;
        }
        boolean z = (j & 1) == 1;
        long j2 = jZzt >> 12;
        long j3 = jZzt >> 8;
        long j4 = jZzt >> 4;
        long j5 = jZzt >> 1;
        long j6 = jZzt & 1;
        int i2 = (int) (j4 & 15);
        if (i2 <= 7) {
            if (i2 != zzacrVar.zzg - 1) {
                return false;
            }
        } else if (i2 > 10 || zzacrVar.zzg != 2) {
            return false;
        }
        int i3 = (int) (j5 & 7);
        if (!(i3 == 0 || i3 == zzacrVar.zzi) || j6 == 1 || !zzd(zzfjVar, zzacrVar, z, zzacmVar) || (iZza = zza(zzfjVar, (int) (j2 & 15))) == -1 || iZza > zzacrVar.zzb) {
            return false;
        }
        int i4 = zzacrVar.zze;
        int i5 = (int) (j3 & 15);
        if (i5 != 0) {
            if (i5 <= 11) {
                if (i5 != zzacrVar.zzf) {
                    return false;
                }
            } else if (i5 == 12) {
                if (zzfjVar.zzl() * 1000 != i4) {
                    return false;
                }
            } else {
                if (i5 > 14) {
                    return false;
                }
                int iZzp = zzfjVar.zzp();
                if (i5 == 14) {
                    iZzp *= 10;
                }
                if (iZzp != i4) {
                    return false;
                }
            }
        }
        return zzfjVar.zzl() == zzfs.zze(zzfjVar.zzI(), iZzc, zzfjVar.zzc() + (-1), 0);
    }

    private static boolean zzd(zzfj zzfjVar, zzacr zzacrVar, boolean z, zzacm zzacmVar) {
        try {
            long jZzv = zzfjVar.zzv();
            if (!z) {
                jZzv *= (long) zzacrVar.zzb;
            }
            zzacmVar.zza = jZzv;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
