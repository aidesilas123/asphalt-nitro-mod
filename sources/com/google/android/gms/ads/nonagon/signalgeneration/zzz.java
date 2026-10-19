package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbdc;
import com.google.android.gms.internal.ads.zzcbn;
import com.google.android.gms.internal.ads.zzgax;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzz implements zzgax {
    final /* synthetic */ zzaa zza;

    zzz(zzaa zzaaVar) {
        this.zza = zzaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        com.google.android.gms.ads.internal.zzt.zzo().zzw(th, "SignalGeneratorImpl.initializeWebViewForSignalCollection");
        zzaa zzaaVar = this.zza;
        zzf.zzc(zzaaVar.zzr, zzaaVar.zzj, "sgf", new Pair("sgf_reason", th.getMessage()), new Pair("sgi_rn", Integer.toString(this.zza.zzJ.get())));
        zzcbn.zzh("Failed to initialize webview for loading SDKCore. ", th);
        if (!((Boolean) zzba.zzc().zza(zzbdc.zzjs)).booleanValue() || this.zza.zzI.get() || this.zza.zzJ.getAndIncrement() >= ((Integer) zzba.zzc().zza(zzbdc.zzjt)).intValue()) {
            return;
        }
        this.zza.zzV();
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* bridge */ /* synthetic */ void zzb(@Nullable Object obj) {
        zzcbn.zze("Initialized webview successfully for SDKCore.");
        if (((Boolean) zzba.zzc().zza(zzbdc.zzjs)).booleanValue()) {
            zzaa zzaaVar = this.zza;
            zzf.zzc(zzaaVar.zzr, zzaaVar.zzj, "sgs", new Pair("sgi_rn", Integer.toString(zzaaVar.zzJ.get())));
            this.zza.zzI.set(true);
        }
    }
}
