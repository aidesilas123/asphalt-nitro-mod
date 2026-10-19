package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfsa extends zzfsm {
    final /* synthetic */ zzfsb zza;
    private final zzfsg zzb;

    zzfsa(zzfsb zzfsbVar, zzfsg zzfsgVar) {
        this.zza = zzfsbVar;
        this.zzb = zzfsgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final void zzb(Bundle bundle) {
        int i = bundle.getInt("statusCode", 8150);
        String string = bundle.getString("sessionToken");
        zzfse zzfseVarZzc = zzfsf.zzc();
        zzfseVarZzc.zzb(i);
        if (string != null) {
            zzfseVarZzc.zza(string);
        }
        this.zzb.zza(zzfseVarZzc.zzc());
        if (i == 8157) {
            this.zza.zzc();
        }
    }
}
