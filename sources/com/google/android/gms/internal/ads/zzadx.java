package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzadx implements zzace {
    private int zzc;
    private zzady zze;
    private long zzh;

    @Nullable
    private zzaea zzi;
    private int zzm;
    private boolean zzn;
    private final zzfj zza = new zzfj(12);
    private final zzadw zzb = new zzadw(null);
    private zzach zzd = new zzacc();
    private zzaea[] zzg = new zzaea[0];
    private long zzk = -1;
    private long zzl = -1;
    private int zzj = -1;
    private long zzf = C.TIME_UNSET;

    @Nullable
    private final zzaea zzf(int i) {
        for (zzaea zzaeaVar : this.zzg) {
            if (zzaeaVar.zzg(i)) {
                return zzaeaVar;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0311  */
    @Override // com.google.android.gms.internal.ads.zzace
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zzb(com.google.android.gms.internal.ads.zzacf r29, com.google.android.gms.internal.ads.zzadb r30) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 977
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzadx.zzb(com.google.android.gms.internal.ads.zzacf, com.google.android.gms.internal.ads.zzadb):int");
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzc(zzach zzachVar) {
        this.zzc = 0;
        this.zzd = zzachVar;
        this.zzh = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzd(long j, long j2) {
        this.zzh = -1L;
        this.zzi = null;
        for (zzaea zzaeaVar : this.zzg) {
            zzaeaVar.zzf(j);
        }
        if (j == 0) {
            this.zzc = this.zzg.length != 0 ? 3 : 0;
        } else {
            this.zzc = 6;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final boolean zze(zzacf zzacfVar) throws IOException {
        ((zzabu) zzacfVar).zzm(this.zza.zzI(), 0, 12, false);
        this.zza.zzG(0);
        if (this.zza.zzh() != 1179011410) {
            return false;
        }
        this.zza.zzH(4);
        return this.zza.zzh() == 541677121;
    }
}
