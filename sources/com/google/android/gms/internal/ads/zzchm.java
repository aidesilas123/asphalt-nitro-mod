package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzchm implements zzbkd {
    final /* synthetic */ zzcho zza;

    zzchm(zzcho zzchoVar) {
        this.zza = zzchoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        if (map != null) {
            String str = (String) map.get("height");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int i = Integer.parseInt(str);
                synchronized (this.zza) {
                    zzcho zzchoVar = this.zza;
                    if (zzchoVar.zzG != i) {
                        zzchoVar.zzG = i;
                        this.zza.requestLayout();
                    }
                }
            } catch (Exception e2) {
                zzcbn.zzk("Exception occurred while getting webview content height", e2);
            }
        }
    }
}
