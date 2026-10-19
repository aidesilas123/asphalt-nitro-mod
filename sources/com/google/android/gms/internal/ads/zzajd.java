package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzajd extends zzajh {
    private static final byte[] zza = {79, 112, 117, 115, 72, 101, 97, 100};
    private static final byte[] zzb = {79, 112, 117, 115, 84, 97, 103, 115};
    private boolean zzc;

    zzajd() {
    }

    public static boolean zzd(zzfj zzfjVar) {
        return zzk(zzfjVar, zza);
    }

    private static boolean zzk(zzfj zzfjVar, byte[] bArr) {
        if (zzfjVar.zza() < 8) {
            return false;
        }
        int iZzc = zzfjVar.zzc();
        byte[] bArr2 = new byte[8];
        zzfjVar.zzC(bArr2, 0, 8);
        zzfjVar.zzG(iZzc);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzajh
    protected final long zza(zzfj zzfjVar) {
        return zzg(zzada.zzd(zzfjVar.zzI()));
    }

    @Override // com.google.android.gms.internal.ads.zzajh
    protected final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zzc = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajh
    protected final boolean zzc(zzfj zzfjVar, long j, zzaje zzajeVar) throws zzcf {
        if (zzk(zzfjVar, zza)) {
            byte[] bArrCopyOf = Arrays.copyOf(zzfjVar.zzI(), zzfjVar.zzd());
            int i = bArrCopyOf[9] & 255;
            List listZze = zzada.zze(bArrCopyOf);
            if (zzajeVar.zza == null) {
                zzak zzakVar = new zzak();
                zzakVar.zzU(MimeTypes.AUDIO_OPUS);
                zzakVar.zzy(i);
                zzakVar.zzV(48000);
                zzakVar.zzK(listZze);
                zzajeVar.zza = zzakVar.zzac();
                return true;
            }
        } else {
            if (!zzk(zzfjVar, zzb)) {
                zzef.zzb(zzajeVar.zza);
                return false;
            }
            zzef.zzb(zzajeVar.zza);
            if (!this.zzc) {
                this.zzc = true;
                zzfjVar.zzH(8);
                zzcb zzcbVarZzb = zzadq.zzb(zzfwu.zzk(zzadq.zzc(zzfjVar, false, false).zzb));
                if (zzcbVarZzb != null) {
                    zzak zzakVarZzb = zzajeVar.zza.zzb();
                    zzakVarZzb.zzO(zzcbVarZzb.zzd(zzajeVar.zza.zzk));
                    zzajeVar.zza = zzakVarZzb.zzac();
                }
            }
        }
        return true;
    }
}
