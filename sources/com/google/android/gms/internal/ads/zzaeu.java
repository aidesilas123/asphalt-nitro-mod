package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaeu implements zzace {
    private zzach zzb;
    private int zzc;
    private int zzd;
    private int zze;

    @Nullable
    private zzago zzg;
    private zzacf zzh;
    private zzaex zzi;

    @Nullable
    private zzail zzj;
    private final zzfj zza = new zzfj(6);
    private long zzf = -1;

    private final int zza(zzacf zzacfVar) throws IOException {
        this.zza.zzD(2);
        ((zzabu) zzacfVar).zzm(this.zza.zzI(), 0, 2, false);
        return this.zza.zzp();
    }

    private final void zzf() {
        zzg(new zzca[0]);
        zzach zzachVar = this.zzb;
        Objects.requireNonNull(zzachVar);
        zzachVar.zzD();
        this.zzb.zzO(new zzadd(C.TIME_UNSET, 0L));
        this.zzc = 6;
    }

    private final void zzg(zzca... zzcaVarArr) {
        zzach zzachVar = this.zzb;
        Objects.requireNonNull(zzachVar);
        zzadk zzadkVarZzw = zzachVar.zzw(1024, 4);
        zzak zzakVar = new zzak();
        zzakVar.zzB("image/jpeg");
        zzakVar.zzO(new zzcb(C.TIME_UNSET, zzcaVarArr));
        zzadkVarZzw.zzl(zzakVar.zzac());
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00e4  */
    @Override // com.google.android.gms.internal.ads.zzace
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zzb(com.google.android.gms.internal.ads.zzacf r24, com.google.android.gms.internal.ads.zzadb r25) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 459
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaeu.zzb(com.google.android.gms.internal.ads.zzacf, com.google.android.gms.internal.ads.zzadb):int");
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzc(zzach zzachVar) {
        this.zzb = zzachVar;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzd(long j, long j2) {
        if (j == 0) {
            this.zzc = 0;
            this.zzj = null;
        } else if (this.zzc == 5) {
            zzail zzailVar = this.zzj;
            Objects.requireNonNull(zzailVar);
            zzailVar.zzd(j, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final boolean zze(zzacf zzacfVar) throws IOException {
        if (zza(zzacfVar) != 65496) {
            return false;
        }
        int iZza = zza(zzacfVar);
        this.zzd = iZza;
        if (iZza == 65504) {
            this.zza.zzD(2);
            zzabu zzabuVar = (zzabu) zzacfVar;
            zzabuVar.zzm(this.zza.zzI(), 0, 2, false);
            zzabuVar.zzl(this.zza.zzp() - 2, false);
            iZza = zza(zzacfVar);
            this.zzd = iZza;
        }
        if (iZza == 65505) {
            zzabu zzabuVar2 = (zzabu) zzacfVar;
            zzabuVar2.zzl(2, false);
            this.zza.zzD(6);
            zzabuVar2.zzm(this.zza.zzI(), 0, 6, false);
            if (this.zza.zzt() == 1165519206 && this.zza.zzp() == 0) {
                return true;
            }
        }
        return false;
    }
}
