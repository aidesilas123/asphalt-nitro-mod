package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzib implements zzlo {
    final /* synthetic */ zzin zza;

    zzib(zzin zzinVar) {
        this.zza = zzinVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzlo
    public final void zza(String str, String str2, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.zza.zzE("auto", "_err", bundle);
        } else {
            this.zza.zzG("auto", "_err", bundle, str);
        }
    }
}
