package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.common.util.concurrent.h0;
import com.json.o2;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdna {
    private final zzgbl zza;
    private final zzdnn zzb;
    private final zzdns zzc;

    public zzdna(zzgbl zzgblVar, zzdnn zzdnnVar, zzdns zzdnsVar) {
        this.zza = zzgblVar;
        this.zzb = zzdnnVar;
        this.zzc = zzdnsVar;
    }

    public final h0 zza(final zzfeh zzfehVar, final zzfdu zzfduVar, final JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        h0 h0VarZzn;
        final h0 h0VarZzb = this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdmy
            @Override // java.util.concurrent.Callable
            public final Object call() throws zzejt {
                zzdkk zzdkkVar = new zzdkk();
                JSONObject jSONObject2 = jSONObject;
                zzdkkVar.zzaa(jSONObject2.optInt("template_id", -1));
                zzdkkVar.zzK(jSONObject2.optString("custom_template_id"));
                JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("omid_settings");
                String strOptString = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("omid_partner_name") : null;
                zzfeh zzfehVar2 = zzfehVar;
                zzdkkVar.zzV(strOptString);
                zzfeq zzfeqVar = zzfehVar2.zza.zza;
                if (!zzfeqVar.zzg.contains(Integer.toString(zzdkkVar.zzc()))) {
                    throw new zzejt(1, "Invalid template ID: " + zzdkkVar.zzc());
                }
                if (zzdkkVar.zzc() == 3) {
                    if (zzdkkVar.zzA() == null) {
                        throw new zzejt(1, "No custom template id for custom template ad response.");
                    }
                    if (!zzfeqVar.zzh.contains(zzdkkVar.zzA())) {
                        throw new zzejt(1, "Unexpected custom template id in the response.");
                    }
                }
                zzfdu zzfduVar2 = zzfduVar;
                zzdkkVar.zzY(jSONObject2.optDouble(CampaignEx.JSON_KEY_STAR, -1.0d));
                String strOptString2 = jSONObject2.optString("headline", null);
                if (zzfduVar2.zzN) {
                    com.google.android.gms.ads.internal.zzt.zzp();
                    strOptString2 = com.google.android.gms.ads.internal.util.zzt.zzx() + " : " + strOptString2;
                }
                zzdkkVar.zzZ("headline", strOptString2);
                zzdkkVar.zzZ("body", jSONObject2.optString("body", null));
                zzdkkVar.zzZ("call_to_action", jSONObject2.optString("call_to_action", null));
                zzdkkVar.zzZ(o2.h.U, jSONObject2.optString(o2.h.U, null));
                zzdkkVar.zzZ("price", jSONObject2.optString("price", null));
                zzdkkVar.zzZ(o2.h.F0, jSONObject2.optString(o2.h.F0, null));
                return zzdkkVar;
            }
        });
        final h0 h0VarZzf = this.zzb.zzf(jSONObject, "images");
        zzfdy zzfdyVar = zzfehVar.zzb.zzb;
        zzdnn zzdnnVar = this.zzb;
        final h0 h0VarZzg = zzdnnVar.zzg(jSONObject, "images", zzfduVar, zzfdyVar);
        final h0 h0VarZze = zzdnnVar.zze(jSONObject, "secondary_image");
        final h0 h0VarZze2 = zzdnnVar.zze(jSONObject, "app_icon");
        final h0 h0VarZzd = zzdnnVar.zzd(jSONObject, "attribution");
        final h0 h0VarZzh = this.zzb.zzh(jSONObject, zzfduVar, zzfehVar.zzb.zzb);
        final h0 h0VarZza = this.zzc.zza(jSONObject, "custom_assets");
        if (jSONObject.optBoolean("enable_omid") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("omid_settings")) != null) {
            final String strOptString = jSONObjectOptJSONObject.optString("omid_html");
            if (TextUtils.isEmpty(strOptString)) {
                h0VarZzn = zzgbb.zzh(null);
            } else {
                final zzdnn zzdnnVar2 = this.zzb;
                h0VarZzn = zzgbb.zzn(zzgbb.zzh(null), new zzgai() { // from class: com.google.android.gms.internal.ads.zzdnc
                    @Override // com.google.android.gms.internal.ads.zzgai
                    public final h0 zza(Object obj) {
                        return zzdnnVar2.zzc(strOptString, obj);
                    }
                }, zzcca.zze);
            }
        } else {
            h0VarZzn = zzgbb.zzh(null);
        }
        final h0 h0Var = h0VarZzn;
        ArrayList arrayList = new ArrayList();
        arrayList.add(h0VarZzb);
        arrayList.add(h0VarZzf);
        arrayList.add(h0VarZzg);
        arrayList.add(h0VarZze);
        arrayList.add(h0VarZze2);
        arrayList.add(h0VarZzd);
        arrayList.add(h0VarZzh);
        arrayList.add(h0VarZza);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeZ)).booleanValue()) {
            arrayList.add(h0Var);
        }
        return zzgbb.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdmz
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdkk zzdkkVar = (zzdkk) h0VarZzb.get();
                zzdkkVar.zzP((List) h0VarZzf.get());
                zzdkkVar.zzM((zzbgi) h0VarZze2.get());
                zzdkkVar.zzQ((zzbgi) h0VarZze.get());
                zzdkkVar.zzJ((zzbga) h0VarZzd.get());
                JSONObject jSONObject2 = jSONObject;
                zzdkkVar.zzS(zzdnn.zzj(jSONObject2));
                zzdkkVar.zzL(zzdnn.zzi(jSONObject2));
                zzcgv zzcgvVar = (zzcgv) h0VarZzh.get();
                if (zzcgvVar != null) {
                    zzdkkVar.zzad(zzcgvVar);
                    zzdkkVar.zzac(zzcgvVar.zzF());
                    zzdkkVar.zzab(zzcgvVar.zzq());
                }
                zzcgv zzcgvVar2 = (zzcgv) h0VarZzg.get();
                if (zzcgvVar2 != null) {
                    zzdkkVar.zzO(zzcgvVar2);
                    zzdkkVar.zzae(zzcgvVar2.zzF());
                }
                h0 h0Var2 = h0Var;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeZ)).booleanValue()) {
                    zzdkkVar.zzU(h0Var2);
                    zzdkkVar.zzX(new zzccf());
                } else {
                    zzcgv zzcgvVar3 = (zzcgv) h0Var2.get();
                    if (zzcgvVar3 != null) {
                        zzdkkVar.zzT(zzcgvVar3);
                    }
                }
                for (zzdnr zzdnrVar : (List) h0VarZza.get()) {
                    if (zzdnrVar.zza != 1) {
                        zzdkkVar.zzN(zzdnrVar.zzb, zzdnrVar.zzd);
                    } else {
                        zzdkkVar.zzZ(zzdnrVar.zzb, zzdnrVar.zzc);
                    }
                }
                return zzdkkVar;
            }
        }, this.zza);
    }
}
