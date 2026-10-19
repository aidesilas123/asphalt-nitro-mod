package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbox implements zzbkr {
    final /* synthetic */ zzboy zza;
    private final zzboa zzb;
    private final zzccf zzc;

    public zzbox(zzboy zzboyVar, zzboa zzboaVar, zzccf zzccfVar) {
        this.zza = zzboyVar;
        this.zzb = zzboaVar;
        this.zzc = zzccfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkr
    public final void zza(@Nullable String str) {
        try {
            if (str == null) {
                this.zzc.zzd(new zzboj());
            } else {
                this.zzc.zzd(new zzboj(str));
            }
        } catch (IllegalStateException unused) {
        } catch (Throwable th) {
            this.zzb.zzb();
            throw th;
        }
        this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbkr
    public final void zzb(JSONObject jSONObject) {
        try {
            try {
                this.zzc.zzc(this.zza.zza.zza(jSONObject));
            } catch (IllegalStateException unused) {
            } catch (JSONException e2) {
                this.zzc.zzd(e2);
            }
        } finally {
            this.zzb.zzb();
        }
    }
}
