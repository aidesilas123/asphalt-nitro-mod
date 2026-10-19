package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbpf implements zzbkr {
    final /* synthetic */ zzbpg zza;
    private final zzccf zzb;

    public zzbpf(zzbpg zzbpgVar, zzccf zzccfVar) {
        this.zza = zzbpgVar;
        this.zzb = zzccfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkr
    public final void zza(@Nullable String str) {
        try {
            if (str == null) {
                this.zzb.zzd(new zzboj());
            } else {
                this.zzb.zzd(new zzboj(str));
            }
        } catch (IllegalStateException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkr
    public final void zzb(JSONObject jSONObject) {
        try {
            this.zzb.zzc(jSONObject);
        } catch (IllegalStateException unused) {
        } catch (JSONException e2) {
            this.zzb.zzd(e2);
        }
    }
}
