package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzakz {
    private final List zza;
    private final zzadk[] zzb;

    public zzakz(List list) {
        this.zza = list;
        this.zzb = new zzadk[list.size()];
    }

    public final void zza(long j, zzfj zzfjVar) {
        zzabr.zza(j, zzfjVar, this.zzb);
    }

    public final void zzb(zzach zzachVar, zzalk zzalkVar) {
        for (int i = 0; i < this.zzb.length; i++) {
            zzalkVar.zzc();
            zzadk zzadkVarZzw = zzachVar.zzw(zzalkVar.zza(), 3);
            zzam zzamVar = (zzam) this.zza.get(i);
            String str = zzamVar.zzm;
            boolean z = true;
            if (!MimeTypes.APPLICATION_CEA608.equals(str) && !MimeTypes.APPLICATION_CEA708.equals(str)) {
                z = false;
            }
            zzef.zze(z, "Invalid closed caption MIME type provided: ".concat(String.valueOf(str)));
            String strZzb = zzamVar.zzb;
            if (strZzb == null) {
                strZzb = zzalkVar.zzb();
            }
            zzak zzakVar = new zzak();
            zzakVar.zzJ(strZzb);
            zzakVar.zzU(str);
            zzakVar.zzW(zzamVar.zze);
            zzakVar.zzM(zzamVar.zzd);
            zzakVar.zzw(zzamVar.zzE);
            zzakVar.zzK(zzamVar.zzo);
            zzadkVarZzw.zzl(zzakVar.zzac());
            this.zzb[i] = zzadkVarZzw;
        }
    }
}
