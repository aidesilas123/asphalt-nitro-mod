package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioFormat;
import androidx.annotation.Nullable;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzqd {
    private Boolean zza;

    public zzqd() {
    }

    public zzqd(@Nullable Context context) {
    }

    public final zzpa zza(zzam zzamVar, zzk zzkVar) {
        Objects.requireNonNull(zzamVar);
        Objects.requireNonNull(zzkVar);
        int i = zzfs.zza;
        if (i < 29 || zzamVar.zzA == -1) {
            return zzpa.zza;
        }
        Boolean bool = this.zza;
        if (bool != null) {
            bool.booleanValue();
        } else {
            Boolean bool2 = Boolean.FALSE;
            this.zza = bool2;
            bool2.booleanValue();
        }
        String str = zzamVar.zzm;
        Objects.requireNonNull(str);
        int iZza = zzce.zza(str, zzamVar.zzj);
        if (iZza == 0 || i < zzfs.zzf(iZza)) {
            return zzpa.zza;
        }
        int iZzg = zzfs.zzg(zzamVar.zzz);
        if (iZzg == 0) {
            return zzpa.zza;
        }
        try {
            AudioFormat audioFormatZzv = zzfs.zzv(zzamVar.zzA, iZzg, iZza);
            return i >= 31 ? zzqc.zza(audioFormatZzv, zzkVar.zza().zza, false) : zzqb.zza(audioFormatZzv, zzkVar.zza().zza, false);
        } catch (IllegalArgumentException unused) {
            return zzpa.zza;
        }
    }
}
