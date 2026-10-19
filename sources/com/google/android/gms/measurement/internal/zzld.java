package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzld implements zzlo {
    final /* synthetic */ zzli zza;

    zzld(zzli zzliVar) {
        this.zza = zzliVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzlo
    public final void zza(String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            this.zza.zzaA().zzp(new zzlc(this, str, "_err", bundle));
            return;
        }
        zzli zzliVar = this.zza;
        if (zzliVar.zzn != null) {
            zzliVar.zzn.zzaz().zzd().zzb("AppId not known when logging event", "_err");
        }
    }
}
