package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzajx implements zzajy {
    private final List zza;
    private final zzadk[] zzb;
    private boolean zzc;
    private int zzd;
    private int zze;
    private long zzf = C.TIME_UNSET;

    public zzajx(List list) {
        this.zza = list;
        this.zzb = new zzadk[list.size()];
    }

    private final boolean zzf(zzfj zzfjVar, int i) {
        if (zzfjVar.zza() == 0) {
            return false;
        }
        if (zzfjVar.zzl() != i) {
            this.zzc = false;
        }
        this.zzd--;
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(zzfj zzfjVar) {
        if (this.zzc) {
            if (this.zzd != 2 || zzf(zzfjVar, 32)) {
                if (this.zzd != 1 || zzf(zzfjVar, 0)) {
                    int iZzc = zzfjVar.zzc();
                    int iZza = zzfjVar.zza();
                    for (zzadk zzadkVar : this.zzb) {
                        zzfjVar.zzG(iZzc);
                        zzadkVar.zzr(zzfjVar, iZza);
                    }
                    this.zze += iZza;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzb(zzach zzachVar, zzalk zzalkVar) {
        for (int i = 0; i < this.zzb.length; i++) {
            zzalh zzalhVar = (zzalh) this.zza.get(i);
            zzalkVar.zzc();
            zzadk zzadkVarZzw = zzachVar.zzw(zzalkVar.zza(), 3);
            zzak zzakVar = new zzak();
            zzakVar.zzJ(zzalkVar.zzb());
            zzakVar.zzU(MimeTypes.APPLICATION_DVBSUBS);
            zzakVar.zzK(Collections.singletonList(zzalhVar.zzb));
            zzakVar.zzM(zzalhVar.zza);
            zzadkVarZzw.zzl(zzakVar.zzac());
            this.zzb[i] = zzadkVarZzw;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzc(boolean z) {
        if (this.zzc) {
            if (this.zzf != C.TIME_UNSET) {
                for (zzadk zzadkVar : this.zzb) {
                    zzadkVar.zzt(this.zzf, 1, this.zze, 0, null);
                }
            }
            this.zzc = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzd(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.zzc = true;
        if (j != C.TIME_UNSET) {
            this.zzf = j;
        }
        this.zze = 0;
        this.zzd = 2;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zze() {
        this.zzc = false;
        this.zzf = C.TIME_UNSET;
    }
}
