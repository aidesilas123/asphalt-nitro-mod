package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.facebook.applinks.AppLinkData;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbdc;
import com.google.android.gms.internal.ads.zzbeo;
import com.google.android.gms.internal.ads.zzcab;
import com.google.android.gms.internal.ads.zzcai;
import com.google.android.gms.internal.ads.zzcbn;
import com.google.android.gms.internal.ads.zzdtk;
import com.google.android.gms.internal.ads.zzdtu;
import com.google.android.gms.internal.ads.zzfjw;
import com.google.android.gms.internal.ads.zzfkh;
import com.google.android.gms.internal.ads.zzgax;
import com.google.common.util.concurrent.h0;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzw implements zzgax {
    final /* synthetic */ h0 zza;
    final /* synthetic */ zzcai zzb;
    final /* synthetic */ zzcab zzc;
    final /* synthetic */ zzfjw zzd;
    final /* synthetic */ long zze;
    final /* synthetic */ zzaa zzf;

    zzw(zzaa zzaaVar, h0 h0Var, zzcai zzcaiVar, zzcab zzcabVar, zzfjw zzfjwVar, long j) {
        this.zzf = zzaaVar;
        this.zza = h0Var;
        this.zzb = zzcaiVar;
        this.zzc = zzcabVar;
        this.zzd = zzfjwVar;
        this.zze = j;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - this.zze;
        String message = th.getMessage();
        com.google.android.gms.ads.internal.zzt.zzo().zzw(th, "SignalGeneratorImpl.generateSignals");
        zzaa zzaaVar = this.zzf;
        zzf.zzc(zzaaVar.zzr, zzaaVar.zzj, "sgf", new Pair("sgf_reason", message), new Pair("tqgt", String.valueOf(jCurrentTimeMillis)));
        zzfkh zzfkhVarZzr = zzaa.zzr(this.zza, this.zzb);
        if (((Boolean) zzbeo.zze.zze()).booleanValue() && zzfkhVarZzr != null) {
            zzfjw zzfjwVar = this.zzd;
            zzfjwVar.zzg(th);
            zzfjwVar.zzf(false);
            zzfkhVarZzr.zza(zzfjwVar);
            zzfkhVarZzr.zzg();
        }
        try {
            if (!"Unknown format is no longer supported.".equals(message)) {
                message = "Internal error. " + message;
            }
            this.zzc.zzb(message);
        } catch (RemoteException e2) {
            zzcbn.zzh("", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* bridge */ /* synthetic */ void zzb(@Nullable Object obj) {
        zzam zzamVar = (zzam) obj;
        zzfkh zzfkhVarZzr = zzaa.zzr(this.zza, this.zzb);
        this.zzf.zzI.set(true);
        if (!((Boolean) zzba.zzc().zza(zzbdc.zzhD)).booleanValue()) {
            try {
                this.zzc.zzb("QueryInfo generation has been disabled.");
            } catch (RemoteException e2) {
                zzcbn.zzg("QueryInfo generation has been disabled.".concat(e2.toString()));
            }
            if (!((Boolean) zzbeo.zze.zze()).booleanValue() || zzfkhVarZzr == null) {
                return;
            }
            zzfjw zzfjwVar = this.zzd;
            zzfjwVar.zzc("QueryInfo generation has been disabled.");
            zzfjwVar.zzf(false);
            zzfkhVarZzr.zza(zzfjwVar);
            zzfkhVarZzr.zzg();
            return;
        }
        long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - this.zze;
        try {
            try {
                if (zzamVar == null) {
                    this.zzc.zzc(null, null, null);
                    zzaa zzaaVar = this.zzf;
                    zzf.zzc(zzaaVar.zzr, zzaaVar.zzj, "sgs", new Pair("rid", UniquePlacementId.NO_ID));
                    this.zzd.zzf(true);
                    if (!((Boolean) zzbeo.zze.zze()).booleanValue() || zzfkhVarZzr == null) {
                        return;
                    }
                    zzfkhVarZzr.zza(this.zzd);
                    zzfkhVarZzr.zzg();
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(zzamVar.zzb);
                    String strOptString = jSONObject.optString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, "");
                    if (TextUtils.isEmpty(strOptString)) {
                        zzcbn.zzj("The request ID is empty in request JSON.");
                        this.zzc.zzb("Internal error: request ID is empty in request JSON.");
                        zzaa zzaaVar2 = this.zzf;
                        zzf.zzc(zzaaVar2.zzr, zzaaVar2.zzj, "sgf", new Pair("sgf_reason", "rid_missing"));
                        zzfjw zzfjwVar2 = this.zzd;
                        zzfjwVar2.zzc("Request ID empty");
                        zzfjwVar2.zzf(false);
                        if (!((Boolean) zzbeo.zze.zze()).booleanValue() || zzfkhVarZzr == null) {
                            return;
                        }
                        zzfkhVarZzr.zza(this.zzd);
                        zzfkhVarZzr.zzg();
                        return;
                    }
                    zzaa zzaaVar3 = this.zzf;
                    zzaa.zzJ(zzaaVar3, strOptString, zzamVar.zzb, zzaaVar3.zzj);
                    Bundle bundle = zzamVar.zzc;
                    zzaa zzaaVar4 = this.zzf;
                    if (zzaaVar4.zzw && bundle != null && bundle.getInt(zzaaVar4.zzy, -1) == -1) {
                        zzaa zzaaVar5 = this.zzf;
                        bundle.putInt(zzaaVar5.zzy, zzaaVar5.zzz.get());
                    }
                    zzaa zzaaVar6 = this.zzf;
                    if (zzaaVar6.zzv && bundle != null && TextUtils.isEmpty(bundle.getString(zzaaVar6.zzx))) {
                        if (TextUtils.isEmpty(this.zzf.zzB)) {
                            zzaa zzaaVar7 = this.zzf;
                            com.google.android.gms.ads.internal.util.zzt zztVarZzp = com.google.android.gms.ads.internal.zzt.zzp();
                            zzaa zzaaVar8 = this.zzf;
                            zzaaVar7.zzB = zztVarZzp.zzc(zzaaVar8.zzg, zzaaVar8.zzA.zza);
                        }
                        zzaa zzaaVar9 = this.zzf;
                        bundle.putString(zzaaVar9.zzx, zzaaVar9.zzB);
                    }
                    this.zzc.zzc(zzamVar.zza, zzamVar.zzb, bundle);
                    zzaa zzaaVar10 = this.zzf;
                    zzdtu zzdtuVar = zzaaVar10.zzr;
                    zzdtk zzdtkVar = zzaaVar10.zzj;
                    Pair[] pairArr = new Pair[2];
                    pairArr[0] = new Pair("tqgt", String.valueOf(jCurrentTimeMillis));
                    String str = "na";
                    if (((Boolean) zzba.zzc().zza(zzbdc.zzjq)).booleanValue()) {
                        try {
                            str = jSONObject.getJSONObject(AppLinkData.ARGUMENTS_EXTRAS_KEY).getBoolean("accept_3p_cookie") ? "1" : "0";
                        } catch (JSONException e3) {
                            zzcbn.zzh("Error retrieving JSONObject from the requestJson, ", e3);
                        }
                    }
                    pairArr[1] = new Pair("tpc", str);
                    zzf.zzc(zzdtuVar, zzdtkVar, "sgs", pairArr);
                    this.zzd.zzf(true);
                    if (!((Boolean) zzbeo.zze.zze()).booleanValue() || zzfkhVarZzr == null) {
                        return;
                    }
                    zzfkhVarZzr.zza(this.zzd);
                    zzfkhVarZzr.zzg();
                } catch (JSONException e4) {
                    zzcbn.zzj("Failed to create JSON object from the request string.");
                    this.zzc.zzb("Internal error for request JSON: " + e4.toString());
                    zzaa zzaaVar11 = this.zzf;
                    zzf.zzc(zzaaVar11.zzr, zzaaVar11.zzj, "sgf", new Pair("sgf_reason", "request_invalid"));
                    zzfjw zzfjwVar3 = this.zzd;
                    zzfjwVar3.zzg(e4);
                    zzfjwVar3.zzf(false);
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e4, "SignalGeneratorImpl.generateSignals.onSuccess");
                    if (!((Boolean) zzbeo.zze.zze()).booleanValue() || zzfkhVarZzr == null) {
                        return;
                    }
                    zzfkhVarZzr.zza(this.zzd);
                    zzfkhVarZzr.zzg();
                }
            } catch (Throwable th) {
                if (((Boolean) zzbeo.zze.zze()).booleanValue() && zzfkhVarZzr != null) {
                    zzfkhVarZzr.zza(this.zzd);
                    zzfkhVarZzr.zzg();
                }
                throw th;
            }
        } catch (RemoteException e5) {
            zzfjw zzfjwVar4 = this.zzd;
            zzfjwVar4.zzg(e5);
            zzfjwVar4.zzf(false);
            zzcbn.zzh("", e5);
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e5, "SignalGeneratorImpl.generateSignals.onSuccess");
            if (!((Boolean) zzbeo.zze.zze()).booleanValue() || zzfkhVarZzr == null) {
                return;
            }
            zzfkhVarZzr.zza(this.zzd);
            zzfkhVarZzr.zzg();
        }
    }
}
