package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzala implements zzabp {
    private final zzfq zza;
    private final zzfj zzb = new zzfj();
    private final int zzc;

    public zzala(int i, zzfq zzfqVar, int i2) {
        this.zzc = i;
        this.zza = zzfqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzabp
    public final zzabo zza(zzacf zzacfVar, long j) throws IOException {
        int iZza;
        int iZza2;
        long jZzf = zzacfVar.zzf();
        int iMin = (int) Math.min(112800L, zzacfVar.zzd() - jZzf);
        this.zzb.zzD(iMin);
        ((zzabu) zzacfVar).zzm(this.zzb.zzI(), 0, iMin, false);
        zzfj zzfjVar = this.zzb;
        int iZzd = zzfjVar.zzd();
        long j2 = -1;
        long j3 = -9223372036854775807L;
        long j4 = -1;
        while (zzfjVar.zza() >= 188 && (iZza2 = (iZza = zzalm.zza(zzfjVar.zzI(), zzfjVar.zzc(), iZzd)) + 188) <= iZzd) {
            long jZzb = zzalm.zzb(zzfjVar, iZza, this.zzc);
            if (jZzb != C.TIME_UNSET) {
                long jZzb2 = this.zza.zzb(jZzb);
                if (jZzb2 <= j) {
                    j4 = iZza;
                    if (100000 + jZzb2 <= j) {
                        j3 = jZzb2;
                    }
                } else if (j3 == C.TIME_UNSET) {
                    return zzabo.zzd(jZzb2, jZzf);
                }
                return zzabo.zze(jZzf + j4);
            }
            zzfjVar.zzG(iZza2);
            j2 = iZza2;
        }
        return j3 != C.TIME_UNSET ? zzabo.zzf(j3, jZzf + j2) : zzabo.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzabp
    public final void zzb() {
        byte[] bArr = zzfs.zzf;
        int length = bArr.length;
        this.zzb.zzE(bArr, 0);
    }
}
