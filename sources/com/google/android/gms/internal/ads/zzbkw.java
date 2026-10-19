package com.google.android.gms.internal.ads;

import com.facebook.applinks.AppLinkData;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbkw implements zzbkd {
    private final zzdwn zza;

    public zzbkw(zzdwn zzdwnVar) {
        Preconditions.checkNotNull(zzdwnVar, "The Inspector Manager must not be null");
        this.zza = zzdwnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final void zza(Object obj, Map map) {
        if (map == null || !map.containsKey(AppLinkData.ARGUMENTS_EXTRAS_KEY)) {
            return;
        }
        long j = Long.MAX_VALUE;
        if (map.containsKey("expires")) {
            try {
                j = Long.parseLong((String) map.get("expires"));
            } catch (NumberFormatException unused) {
            }
        }
        this.zza.zzi((String) map.get(AppLinkData.ARGUMENTS_EXTRAS_KEY), j);
    }
}
