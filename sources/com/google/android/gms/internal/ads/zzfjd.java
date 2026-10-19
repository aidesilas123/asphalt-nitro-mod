package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfjd {
    private final HashMap zza;
    private final zzfjj zzb;

    private zzfjd() {
        HashMap map = new HashMap();
        this.zza = map;
        this.zzb = new zzfjj(com.google.android.gms.ads.internal.zzt.zzB());
        map.put("new_csi", "1");
    }

    public static zzfjd zzb(String str) {
        zzfjd zzfjdVar = new zzfjd();
        zzfjdVar.zza.put("action", str);
        return zzfjdVar;
    }

    public static zzfjd zzc(String str) {
        zzfjd zzfjdVar = new zzfjd();
        zzfjdVar.zza.put(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, str);
        return zzfjdVar;
    }

    public final zzfjd zza(@NonNull String str, @NonNull String str2) {
        this.zza.put(str, str2);
        return this;
    }

    public final zzfjd zzd(@NonNull String str) {
        this.zzb.zzb(str);
        return this;
    }

    public final zzfjd zze(@NonNull String str, @NonNull String str2) {
        this.zzb.zzc(str, str2);
        return this;
    }

    public final zzfjd zzf(zzfdu zzfduVar) {
        this.zza.put("aai", zzfduVar.zzx);
        return this;
    }

    public final zzfjd zzg(zzfdy zzfdyVar) {
        if (!TextUtils.isEmpty(zzfdyVar.zzb)) {
            this.zza.put("gqi", zzfdyVar.zzb);
        }
        return this;
    }

    public final zzfjd zzh(zzfeh zzfehVar, @Nullable zzcba zzcbaVar) {
        zzfeg zzfegVar = zzfehVar.zzb;
        zzg(zzfegVar.zzb);
        if (!zzfegVar.zza.isEmpty()) {
            switch (((zzfdu) zzfegVar.zza.get(0)).zzb) {
                case 1:
                    this.zza.put("ad_format", "banner");
                    break;
                case 2:
                    this.zza.put("ad_format", IronSourceConstants.AD_UNIT_IS_MEDIATION_STATE);
                    break;
                case 3:
                    this.zza.put("ad_format", "native_express");
                    break;
                case 4:
                    this.zza.put("ad_format", "native_advanced");
                    break;
                case 5:
                    this.zza.put("ad_format", "rewarded");
                    break;
                case 6:
                    this.zza.put("ad_format", "app_open_ad");
                    if (zzcbaVar != null) {
                        this.zza.put("as", true != zzcbaVar.zzm() ? "0" : "1");
                    }
                    break;
                default:
                    this.zza.put("ad_format", "unknown");
                    break;
            }
        }
        return this;
    }

    public final zzfjd zzi(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.zza.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.zza.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
        return this;
    }

    public final Map zzj() {
        HashMap map = new HashMap(this.zza);
        for (zzfji zzfjiVar : this.zzb.zza()) {
            map.put(zzfjiVar.zza, zzfjiVar.zzb);
        }
        return map;
    }
}
