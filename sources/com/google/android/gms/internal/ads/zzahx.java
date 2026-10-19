package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzahx implements zzahv {
    private final int zza;
    private final int zzb;
    private final zzfj zzc;

    public zzahx(zzahr zzahrVar, zzam zzamVar) {
        zzfj zzfjVar = zzahrVar.zza;
        this.zzc = zzfjVar;
        zzfjVar.zzG(12);
        int iZzo = zzfjVar.zzo();
        if (MimeTypes.AUDIO_RAW.equals(zzamVar.zzm)) {
            int iZzl = zzfs.zzl(zzamVar.zzB, zzamVar.zzz);
            if (iZzo == 0 || iZzo % iZzl != 0) {
                zzez.zzf("AtomParsers", "Audio sample size mismatch. stsd sample size: " + iZzl + ", stsz sample size: " + iZzo);
                iZzo = iZzl;
            }
        }
        this.zza = iZzo == 0 ? -1 : iZzo;
        this.zzb = zzfjVar.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzahv
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzahv
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzahv
    public final int zzc() {
        int i = this.zza;
        return i == -1 ? this.zzc.zzo() : i;
    }
}
