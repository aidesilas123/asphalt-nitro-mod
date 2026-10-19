package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public class zzsl extends zzhz {

    @Nullable
    public final zzsn zza;

    @Nullable
    public final String zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzsl(Throwable th, @Nullable zzsn zzsnVar) {
        super("Decoder failed: ".concat(String.valueOf(zzsnVar == null ? null : zzsnVar.zza)), th);
        String diagnosticInfo = null;
        this.zza = zzsnVar;
        if (zzfs.zza >= 21 && (th instanceof MediaCodec.CodecException)) {
            diagnosticInfo = ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        this.zzb = diagnosticInfo;
    }
}
