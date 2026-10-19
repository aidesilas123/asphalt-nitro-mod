package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.json.o2;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzdjc implements zzbkd {
    private final WeakReference zza;

    /* synthetic */ zzdjc(zzdjh zzdjhVar, zzdjb zzdjbVar) {
        this.zza = new WeakReference(zzdjhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final void zza(Object obj, Map map) {
        zzdjh zzdjhVar = (zzdjh) this.zza.get();
        if (zzdjhVar != null && "_ac".equals((String) map.get(o2.h.k0))) {
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
}
