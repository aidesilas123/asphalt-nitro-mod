package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzdje implements zzbkd {
    private final WeakReference zza;

    /* synthetic */ zzdje(zzdjh zzdjhVar, zzdjd zzdjdVar) {
        this.zza = new WeakReference(zzdjhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final void zza(Object obj, Map map) {
        zzdjh zzdjhVar = (zzdjh) this.zza.get();
        if (zzdjhVar == null) {
            return;
        }
        zzdjhVar.zzh.onAdClicked();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkb)).booleanValue()) {
            zzdjhVar.zzi.zzbL();
            if (TextUtils.isEmpty((CharSequence) map.get("sccg"))) {
                return;
            }
            zzdjhVar.zzi.zzs();
        }
    }
}
