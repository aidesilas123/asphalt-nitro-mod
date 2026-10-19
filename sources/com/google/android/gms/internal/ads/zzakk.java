package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzakk implements zzajy {
    private zzadk zzb;
    private boolean zzc;
    private int zze;
    private int zzf;
    private final zzfj zza = new zzfj(10);
    private long zzd = C.TIME_UNSET;

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(zzfj zzfjVar) {
        zzef.zzb(this.zzb);
        if (this.zzc) {
            int iZza = zzfjVar.zza();
            int i = this.zzf;
            if (i < 10) {
                int iMin = Math.min(iZza, 10 - i);
                System.arraycopy(zzfjVar.zzI(), zzfjVar.zzc(), this.zza.zzI(), this.zzf, iMin);
                if (this.zzf + iMin == 10) {
                    this.zza.zzG(0);
                    if (this.zza.zzl() != 73 || this.zza.zzl() != 68 || this.zza.zzl() != 51) {
                        zzez.zzf("Id3Reader", "Discarding invalid ID3 tag");
                        this.zzc = false;
                        return;
                    } else {
                        this.zza.zzH(3);
                        this.zze = this.zza.zzk() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iZza, this.zze - this.zzf);
            this.zzb.zzr(zzfjVar, iMin2);
            this.zzf += iMin2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzb(zzach zzachVar, zzalk zzalkVar) {
        zzalkVar.zzc();
        zzadk zzadkVarZzw = zzachVar.zzw(zzalkVar.zza(), 5);
        this.zzb = zzadkVarZzw;
        zzak zzakVar = new zzak();
        zzakVar.zzJ(zzalkVar.zzb());
        zzakVar.zzU(MimeTypes.APPLICATION_ID3);
        zzadkVarZzw.zzl(zzakVar.zzac());
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzc(boolean z) {
        int i;
        zzef.zzb(this.zzb);
        if (this.zzc && (i = this.zze) != 0 && this.zzf == i) {
            long j = this.zzd;
            if (j != C.TIME_UNSET) {
                this.zzb.zzt(j, 1, i, 0, null);
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
            this.zzd = j;
        }
        this.zze = 0;
        this.zzf = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zze() {
        this.zzc = false;
        this.zzd = C.TIME_UNSET;
    }
}
