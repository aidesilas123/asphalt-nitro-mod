package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.CollectionUtils;
import com.json.o2;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbkj implements zzbkd {
    static final Map zza = CollectionUtils.mapOfKeyValueArrays(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", MRAIDPresenter.SET_ORIENTATION_PROPERTIES, "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});
    private final com.google.android.gms.ads.internal.zzb zzb;
    private final zzbsm zzc;
    private final zzbst zzd;

    public zzbkj(com.google.android.gms.ads.internal.zzb zzbVar, zzbsm zzbsmVar, zzbst zzbstVar) {
        this.zzb = zzbVar;
        this.zzc = zzbsmVar;
        this.zzd = zzbstVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcgv zzcgvVar = (zzcgv) obj;
        int iIntValue = ((Integer) zza.get((String) map.get("a"))).intValue();
        int i = 6;
        if (iIntValue != 5) {
            if (iIntValue != 7) {
                com.google.android.gms.ads.internal.zzb zzbVar = this.zzb;
                if (!zzbVar.zzc()) {
                    zzbVar.zzb(null);
                    return;
                }
                if (iIntValue == 1) {
                    this.zzc.zzb(map);
                    return;
                }
                if (iIntValue == 3) {
                    new zzbsp(zzcgvVar, map).zzb();
                    return;
                }
                if (iIntValue == 4) {
                    new zzbsk(zzcgvVar, map).zzc();
                    return;
                } else if (iIntValue != 5) {
                    if (iIntValue == 6) {
                        this.zzc.zza(true);
                        return;
                    } else if (iIntValue != 7) {
                        zzcbn.zzi("Unknown MRAID command called.");
                        return;
                    }
                }
            }
            this.zzd.zzc();
            return;
        }
        String str = (String) map.get("forceOrientation");
        boolean z = map.containsKey("allowOrientationChange") ? Boolean.parseBoolean((String) map.get("allowOrientationChange")) : true;
        if (zzcgvVar == null) {
            zzcbn.zzj("AdWebView is null");
            return;
        }
        if (o2.h.D.equalsIgnoreCase(str)) {
            i = 7;
        } else if (!o2.h.C.equalsIgnoreCase(str)) {
            i = z ? -1 : 14;
        }
        zzcgvVar.zzaq(i);
    }
}
