package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.text.TextUtils;
import com.json.mediationsdk.utils.IronSourceConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdwb implements zzcyk, zzdbc, zzczz {
    private final zzdwn zza;
    private final String zzb;
    private final String zzc;
    private zzcya zzf;
    private com.google.android.gms.ads.internal.client.zze zzg;
    private JSONObject zzk;
    private boolean zzl;
    private boolean zzm;
    private boolean zzn;
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";
    private int zzd = 0;
    private zzdwa zze = zzdwa.AD_REQUESTED;

    zzdwb(zzdwn zzdwnVar, zzfeq zzfeqVar, String str) {
        this.zza = zzdwnVar;
        this.zzc = str;
        this.zzb = zzfeqVar.zzf;
    }

    private static JSONObject zzh(com.google.android.gms.ads.internal.client.zze zzeVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorDomain", zzeVar.zzc);
        jSONObject.put(IronSourceConstants.EVENTS_ERROR_CODE, zzeVar.zza);
        jSONObject.put("errorDescription", zzeVar.zzb);
        com.google.android.gms.ads.internal.client.zze zzeVar2 = zzeVar.zzd;
        jSONObject.put("underlyingError", zzeVar2 == null ? null : zzh(zzeVar2));
        return jSONObject;
    }

    private final JSONObject zzi(zzcya zzcyaVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("winningAdapterClassName", zzcyaVar.zzg());
        jSONObject.put("responseSecsSinceEpoch", zzcyaVar.zzc());
        jSONObject.put("responseId", zzcyaVar.zzi());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzja)).booleanValue()) {
            String strZzd = zzcyaVar.zzd();
            if (!TextUtils.isEmpty(strZzd)) {
                zzcbn.zze("Bidding data: ".concat(String.valueOf(strZzd)));
                jSONObject.put("biddingData", new JSONObject(strZzd));
            }
        }
        if (!TextUtils.isEmpty(this.zzh)) {
            jSONObject.put("adRequestUrl", this.zzh);
        }
        if (!TextUtils.isEmpty(this.zzi)) {
            jSONObject.put("postBody", this.zzi);
        }
        if (!TextUtils.isEmpty(this.zzj)) {
            jSONObject.put("adResponseBody", this.zzj);
        }
        Object obj = this.zzk;
        if (obj != null) {
            jSONObject.put("adResponseHeaders", obj);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjd)).booleanValue()) {
            jSONObject.put("hasExceededMemoryLimit", this.zzn);
        }
        JSONArray jSONArray = new JSONArray();
        for (com.google.android.gms.ads.internal.client.zzu zzuVar : zzcyaVar.zzj()) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("adapterClassName", zzuVar.zza);
            jSONObject2.put("latencyMillis", zzuVar.zzb);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjb)).booleanValue()) {
                jSONObject2.put("credentials", com.google.android.gms.ads.internal.client.zzay.zzb().zzh(zzuVar.zzd));
            }
            com.google.android.gms.ads.internal.client.zze zzeVar = zzuVar.zzc;
            jSONObject2.put("error", zzeVar == null ? null : zzh(zzeVar));
            jSONArray.put(jSONObject2);
        }
        jSONObject.put("adNetworks", jSONArray);
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zza(zzctr zzctrVar) {
        if (this.zza.zzp()) {
            this.zzf = zzctrVar.zzl();
            this.zze = zzdwa.AD_LOADED;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjh)).booleanValue()) {
                this.zza.zzf(this.zzb, this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyk
    public final void zzbG(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (this.zza.zzp()) {
            this.zze = zzdwa.AD_LOAD_FAILED;
            this.zzg = zzeVar;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjh)).booleanValue()) {
                this.zza.zzf(this.zzb, this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzbs(zzbwa zzbwaVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjh)).booleanValue() || !this.zza.zzp()) {
            return;
        }
        this.zza.zzf(this.zzb, this);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzbt(zzfeh zzfehVar) {
        if (this.zza.zzp()) {
            if (!zzfehVar.zzb.zza.isEmpty()) {
                this.zzd = ((zzfdu) zzfehVar.zzb.zza.get(0)).zzb;
            }
            if (!TextUtils.isEmpty(zzfehVar.zzb.zzb.zzk)) {
                this.zzh = zzfehVar.zzb.zzb.zzk;
            }
            if (!TextUtils.isEmpty(zzfehVar.zzb.zzb.zzl)) {
                this.zzi = zzfehVar.zzb.zzb.zzl;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjd)).booleanValue()) {
                if (!this.zza.zzr()) {
                    this.zzn = true;
                    return;
                }
                if (!TextUtils.isEmpty(zzfehVar.zzb.zzb.zzm)) {
                    this.zzj = zzfehVar.zzb.zzb.zzm;
                }
                if (zzfehVar.zzb.zzb.zzn.length() > 0) {
                    this.zzk = zzfehVar.zzb.zzb.zzn;
                }
                zzdwn zzdwnVar = this.zza;
                JSONObject jSONObject = this.zzk;
                int length = jSONObject != null ? jSONObject.toString().length() : 0;
                if (!TextUtils.isEmpty(this.zzj)) {
                    length += this.zzj.length();
                }
                zzdwnVar.zzj(length);
            }
        }
    }

    public final String zzc() {
        return this.zzc;
    }

    public final JSONObject zzd() throws JSONException {
        IBinder iBinder;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("state", this.zze);
        jSONObject.put("format", zzfdu.zza(this.zzd));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjh)).booleanValue()) {
            jSONObject.put("isOutOfContext", this.zzl);
            if (this.zzl) {
                jSONObject.put("shown", this.zzm);
            }
        }
        zzcya zzcyaVar = this.zzf;
        JSONObject jSONObjectZzi = null;
        if (zzcyaVar != null) {
            jSONObjectZzi = zzi(zzcyaVar);
        } else {
            com.google.android.gms.ads.internal.client.zze zzeVar = this.zzg;
            if (zzeVar != null && (iBinder = zzeVar.zze) != null) {
                zzcya zzcyaVar2 = (zzcya) iBinder;
                jSONObjectZzi = zzi(zzcyaVar2);
                if (zzcyaVar2.zzj().isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(zzh(this.zzg));
                    jSONObjectZzi.put("errors", jSONArray);
                }
            }
        }
        jSONObject.put("responseInfo", jSONObjectZzi);
        return jSONObject;
    }

    public final void zze() {
        this.zzl = true;
    }

    public final void zzf() {
        this.zzm = true;
    }

    public final boolean zzg() {
        return this.zze != zzdwa.AD_REQUESTED;
    }
}
