package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaik {
    public final zzaip zza;
    public final zzais zzb;
    public final zzadk zzc;

    @Nullable
    public final zzadl zzd;
    public int zze;

    public zzaik(zzaip zzaipVar, zzais zzaisVar, zzadk zzadkVar) {
        this.zza = zzaipVar;
        this.zzb = zzaisVar;
        this.zzc = zzadkVar;
        this.zzd = MimeTypes.AUDIO_TRUEHD.equals(zzaipVar.zzf.zzm) ? new zzadl() : null;
    }
}
