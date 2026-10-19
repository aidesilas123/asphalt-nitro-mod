package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzael extends zzaeq {
    private static final int[] zzb = {5512, 11025, 22050, 44100};
    private boolean zzc;
    private boolean zzd;
    private int zze;

    public zzael(zzadk zzadkVar) {
        super(zzadkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaeq
    protected final boolean zza(zzfj zzfjVar) throws zzaep {
        if (this.zzc) {
            zzfjVar.zzH(1);
        } else {
            int iZzl = zzfjVar.zzl();
            int i = iZzl >> 4;
            this.zze = i;
            if (i == 2) {
                int i2 = zzb[(iZzl >> 2) & 3];
                zzak zzakVar = new zzak();
                zzakVar.zzU(MimeTypes.AUDIO_MPEG);
                zzakVar.zzy(1);
                zzakVar.zzV(i2);
                this.zza.zzl(zzakVar.zzac());
                this.zzd = true;
            } else if (i == 7 || i == 8) {
                zzak zzakVar2 = new zzak();
                zzakVar2.zzU(i == 7 ? MimeTypes.AUDIO_ALAW : MimeTypes.AUDIO_MLAW);
                zzakVar2.zzy(1);
                zzakVar2.zzV(8000);
                this.zza.zzl(zzakVar2.zzac());
                this.zzd = true;
            } else if (i != 10) {
                throw new zzaep("Audio format not supported: " + i);
            }
            this.zzc = true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaeq
    protected final boolean zzb(zzfj zzfjVar, long j) throws zzcf {
        if (this.zze == 2) {
            int iZza = zzfjVar.zza();
            this.zza.zzr(zzfjVar, iZza);
            this.zza.zzt(j, 1, iZza, 0, null);
            return true;
        }
        int iZzl = zzfjVar.zzl();
        if (iZzl != 0 || this.zzd) {
            if (this.zze == 10 && iZzl != 1) {
                return false;
            }
            int iZza2 = zzfjVar.zza();
            this.zza.zzr(zzfjVar, iZza2);
            this.zza.zzt(j, 1, iZza2, 0, null);
            return true;
        }
        int iZza3 = zzfjVar.zza();
        byte[] bArr = new byte[iZza3];
        zzfjVar.zzC(bArr, 0, iZza3);
        zzabb zzabbVarZza = zzabc.zza(bArr);
        zzak zzakVar = new zzak();
        zzakVar.zzU(MimeTypes.AUDIO_AAC);
        zzakVar.zzz(zzabbVarZza.zzc);
        zzakVar.zzy(zzabbVarZza.zzb);
        zzakVar.zzV(zzabbVarZza.zza);
        zzakVar.zzK(Collections.singletonList(bArr));
        this.zza.zzl(zzakVar.zzac());
        this.zzd = true;
        return false;
    }
}
