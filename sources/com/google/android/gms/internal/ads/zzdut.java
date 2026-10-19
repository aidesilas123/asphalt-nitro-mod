package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.json.mediationsdk.utils.IronSourceConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzdut {

    @Nullable
    private Long zza;
    private final String zzb;

    @Nullable
    private String zzc;

    @Nullable
    private Integer zzd;

    @Nullable
    private String zze;

    @Nullable
    private Integer zzf;

    /* synthetic */ zzdut(String str, zzdus zzdusVar) {
        this.zzb = str;
    }

    static /* bridge */ /* synthetic */ String zza(zzdut zzdutVar) {
        String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjy);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("objectId", zzdutVar.zza);
            jSONObject.put("eventCategory", zzdutVar.zzb);
            jSONObject.putOpt(NotificationCompat.CATEGORY_EVENT, zzdutVar.zzc);
            jSONObject.putOpt(IronSourceConstants.EVENTS_ERROR_CODE, zzdutVar.zzd);
            jSONObject.putOpt("rewardType", zzdutVar.zze);
            jSONObject.putOpt(IronSourceConstants.EVENTS_REWARD_AMOUNT, zzdutVar.zzf);
        } catch (JSONException unused) {
            zzcbn.zzj("Could not convert parameters to JSON.");
        }
        return str + "(\"h5adsEvent\"," + jSONObject.toString() + ");";
    }
}
