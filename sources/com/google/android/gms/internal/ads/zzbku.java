package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbku implements zzbkd {
    private final zzbkt zza;

    public zzbku(zzbkt zzbktVar) {
        this.zza = zzbktVar;
    }

    public static void zzb(zzcgv zzcgvVar, zzbkt zzbktVar) {
        zzcgvVar.zzad("/reward", new zzbku(zzbktVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final void zza(Object obj, Map map) {
        String str = (String) map.get("action");
        if (!"grant".equals(str)) {
            if ("video_start".equals(str)) {
                this.zza.zzc();
                return;
            } else {
                if ("video_complete".equals(str)) {
                    this.zza.zzb();
                    return;
                }
                return;
            }
        }
        zzbxc zzbxcVar = null;
        try {
            int i = Integer.parseInt((String) map.get("amount"));
            String str2 = (String) map.get("type");
            if (!TextUtils.isEmpty(str2)) {
                zzbxcVar = new zzbxc(str2, i);
            }
        } catch (NumberFormatException e2) {
            zzcbn.zzk("Unable to parse reward amount.", e2);
        }
        this.zza.zza(zzbxcVar);
    }
}
