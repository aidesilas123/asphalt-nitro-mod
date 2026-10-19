package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzalv {
    public static Pair zza(zzacf zzacfVar) throws IOException {
        zzacfVar.zzj();
        zzalu zzaluVarZzd = zzd(1684108385, zzacfVar, new zzfj(8));
        ((zzabu) zzacfVar).zzo(8, false);
        return Pair.create(Long.valueOf(zzacfVar.zzf()), Long.valueOf(zzaluVarZzd.zzb));
    }

    public static zzalt zzb(zzacf zzacfVar) throws IOException {
        byte[] bArr;
        zzfj zzfjVar = new zzfj(16);
        zzalu zzaluVarZzd = zzd(1718449184, zzacfVar, zzfjVar);
        zzef.zzf(zzaluVarZzd.zzb >= 16);
        zzabu zzabuVar = (zzabu) zzacfVar;
        zzabuVar.zzm(zzfjVar.zzI(), 0, 16, false);
        zzfjVar.zzG(0);
        int iZzj = zzfjVar.zzj();
        int iZzj2 = zzfjVar.zzj();
        int iZzi = zzfjVar.zzi();
        int iZzi2 = zzfjVar.zzi();
        int iZzj3 = zzfjVar.zzj();
        int iZzj4 = zzfjVar.zzj();
        int i = ((int) zzaluVarZzd.zzb) - 16;
        if (i > 0) {
            bArr = new byte[i];
            zzabuVar.zzm(bArr, 0, i, false);
        } else {
            bArr = zzfs.zzf;
        }
        byte[] bArr2 = bArr;
        ((zzabu) zzacfVar).zzo((int) (zzacfVar.zze() - zzacfVar.zzf()), false);
        return new zzalt(iZzj, iZzj2, iZzi, iZzi2, iZzj3, iZzj4, bArr2);
    }

    public static boolean zzc(zzacf zzacfVar) throws IOException {
        zzfj zzfjVar = new zzfj(8);
        int i = zzalu.zza(zzacfVar, zzfjVar).zza;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        ((zzabu) zzacfVar).zzm(zzfjVar.zzI(), 0, 4, false);
        zzfjVar.zzG(0);
        int iZzf = zzfjVar.zzf();
        if (iZzf == 1463899717) {
            return true;
        }
        zzez.zzc("WavHeaderReader", "Unsupported form type: " + iZzf);
        return false;
    }

    private static zzalu zzd(int i, zzacf zzacfVar, zzfj zzfjVar) throws IOException {
        zzalu zzaluVarZza = zzalu.zza(zzacfVar, zzfjVar);
        while (true) {
            int i2 = zzaluVarZza.zza;
            if (i2 == i) {
                return zzaluVarZza;
            }
            zzez.zzf("WavHeaderReader", "Ignoring unknown WAV chunk: " + i2);
            long j = zzaluVarZza.zzb + 8;
            if (j > 2147483647L) {
                throw zzcf.zzc("Chunk is too large (~2GB+) to skip; id: " + zzaluVarZza.zza);
            }
            ((zzabu) zzacfVar).zzo((int) j, false);
            zzaluVarZza = zzalu.zza(zzacfVar, zzfjVar);
        }
    }
}
