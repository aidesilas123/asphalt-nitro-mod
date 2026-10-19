package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaco {
    @Nullable
    public static zzcb zza(zzacf zzacfVar, boolean z) throws Throwable {
        zzcb zzcbVarZza = new zzacw().zza(zzacfVar, z ? null : zzaga.zza);
        if (zzcbVarZza == null || zzcbVarZza.zza() == 0) {
            return null;
        }
        return zzcbVarZza;
    }

    public static zzacq zzb(zzfj zzfjVar) {
        zzfjVar.zzH(1);
        int iZzn = zzfjVar.zzn();
        long jZzc = zzfjVar.zzc();
        long j = iZzn;
        int i = iZzn / 18;
        long[] jArrCopyOf = new long[i];
        long[] jArrCopyOf2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long jZzs = zzfjVar.zzs();
            if (jZzs == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i2);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i2);
                break;
            }
            jArrCopyOf[i2] = jZzs;
            jArrCopyOf2[i2] = zzfjVar.zzs();
            zzfjVar.zzH(2);
            i2++;
        }
        zzfjVar.zzH((int) ((jZzc + j) - ((long) zzfjVar.zzc())));
        return new zzacq(jArrCopyOf, jArrCopyOf2);
    }
}
