package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzabr {
    public static void zza(long j, zzfj zzfjVar, zzadk[] zzadkVarArr) {
        int iZzf;
        while (true) {
            if (zzfjVar.zza() <= 1) {
                return;
            }
            int iZzc = zzc(zzfjVar);
            int iZzc2 = zzc(zzfjVar);
            int iZzc3 = zzfjVar.zzc() + iZzc2;
            if (iZzc2 == -1 || iZzc2 > zzfjVar.zza()) {
                zzez.zzf("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                iZzc3 = zzfjVar.zzd();
            } else if (iZzc == 4 && iZzc2 >= 8) {
                int iZzl = zzfjVar.zzl();
                int iZzp = zzfjVar.zzp();
                if (iZzp == 49) {
                    iZzf = zzfjVar.zzf();
                    iZzp = 49;
                } else {
                    iZzf = 0;
                }
                int iZzl2 = zzfjVar.zzl();
                if (iZzp == 47) {
                    zzfjVar.zzH(1);
                    iZzp = 47;
                }
                boolean z = iZzl == 181 && (iZzp == 49 || iZzp == 47) && iZzl2 == 3;
                if (iZzp == 49) {
                    z &= iZzf == 1195456820;
                }
                if (z) {
                    zzb(j, zzfjVar, zzadkVarArr);
                }
            }
            zzfjVar.zzG(iZzc3);
        }
    }

    public static void zzb(long j, zzfj zzfjVar, zzadk[] zzadkVarArr) {
        int iZzl = zzfjVar.zzl();
        if ((iZzl & 64) != 0) {
            int i = iZzl & 31;
            zzfjVar.zzH(1);
            int iZzc = zzfjVar.zzc();
            for (zzadk zzadkVar : zzadkVarArr) {
                int i2 = i * 3;
                zzfjVar.zzG(iZzc);
                zzadkVar.zzr(zzfjVar, i2);
                if (j != C.TIME_UNSET) {
                    zzadkVar.zzt(j, 1, i2, 0, null);
                }
            }
        }
    }

    private static int zzc(zzfj zzfjVar) {
        int i = 0;
        while (zzfjVar.zza() != 0) {
            int iZzl = zzfjVar.zzl();
            i += iZzl;
            if (iZzl != 255) {
                return i;
            }
        }
        return -1;
    }
}
