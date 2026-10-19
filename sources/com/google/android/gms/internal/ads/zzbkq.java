package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbkq implements zzbkr {
    final /* synthetic */ zzccf zza;

    zzbkq(zzbks zzbksVar, zzccf zzccfVar) {
        this.zza = zzccfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkr
    public final void zza(@Nullable String str) {
        this.zza.zzd(new zzboj(str));
    }

    @Override // com.google.android.gms.internal.ads.zzbkr
    public final void zzb(JSONObject jSONObject) {
        this.zza.zzc(jSONObject);
    }
}
