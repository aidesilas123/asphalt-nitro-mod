package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.PlatformVersion;
import com.google.common.util.concurrent.h0;
import com.json.mediationsdk.utils.c;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeip implements zzeij {
    private final zzdiu zza;
    private final zzgbl zzb;
    private final zzdna zzc;
    private final zzffn zzd;
    private final zzdpp zze;

    public zzeip(zzdiu zzdiuVar, zzgbl zzgblVar, zzdna zzdnaVar, zzffn zzffnVar, zzdpp zzdppVar) {
        this.zza = zzdiuVar;
        this.zzb = zzgblVar;
        this.zzc = zzdnaVar;
        this.zzd = zzffnVar;
        this.zze = zzdppVar;
    }

    private final h0 zzg(final zzfeh zzfehVar, final zzfdu zzfduVar, final JSONObject jSONObject) {
        zzdna zzdnaVar = this.zzc;
        final h0 h0VarZza = this.zzd.zza();
        final h0 h0VarZza2 = zzdnaVar.zza(zzfehVar, zzfduVar, jSONObject);
        return zzgbb.zzc(h0VarZza, h0VarZza2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeik
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc(h0VarZza2, h0VarZza, zzfehVar, zzfduVar, jSONObject);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzefv
    public final h0 zza(final zzfeh zzfehVar, final zzfdu zzfduVar) {
        return zzgbb.zzn(zzgbb.zzn(this.zzd.zza(), new zzgai() { // from class: com.google.android.gms.internal.ads.zzeim
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zze(zzfduVar, (zzdpj) obj);
            }
        }, this.zzb), new zzgai() { // from class: com.google.android.gms.internal.ads.zzein
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzf(zzfehVar, zzfduVar, (JSONArray) obj);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzefv
    public final boolean zzb(zzfeh zzfehVar, zzfdu zzfduVar) {
        zzfea zzfeaVar = zzfduVar.zzt;
        return (zzfeaVar == null || zzfeaVar.zzc == null) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzdkf zzc(h0 h0Var, h0 h0Var2, zzfeh zzfehVar, zzfdu zzfduVar, JSONObject jSONObject) throws Exception {
        zzdkk zzdkkVar = (zzdkk) h0Var.get();
        zzdpj zzdpjVar = (zzdpj) h0Var2.get();
        zzdkl zzdklVarZzd = this.zza.zzd(new zzcuh(zzfehVar, zzfduVar, null), new zzdkw(zzdkkVar), new zzdjj(jSONObject, zzdpjVar));
        zzdklVarZzd.zzh().zzb();
        zzdklVarZzd.zzk().zza(zzdpjVar);
        zzdklVarZzd.zzg().zza(zzdkkVar.zzs());
        zzdklVarZzd.zzl().zza(this.zze);
        return zzdklVarZzd.zza();
    }

    final /* synthetic */ h0 zzd(zzdpj zzdpjVar, JSONObject jSONObject) throws Exception {
        this.zzd.zzb(zzgbb.zzh(zzdpjVar));
        if (jSONObject.optBoolean("success")) {
            return zzgbb.zzh(jSONObject.getJSONObject("json").getJSONArray(CampaignUnit.JSON_KEY_ADS));
        }
        throw new zzboj("process json failed");
    }

    final /* synthetic */ h0 zze(zzfdu zzfduVar, final zzdpj zzdpjVar) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isNonagon", true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzis)).booleanValue() && PlatformVersion.isAtLeastR()) {
            jSONObject.put("skipDeepLinkValidation", true);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(c.Y1, zzfduVar.zzt.zzc);
        jSONObject2.put("sdk_params", jSONObject);
        return zzgbb.zzn(zzdpjVar.zzd("google.afma.nativeAds.preProcessJson", jSONObject2), new zzgai() { // from class: com.google.android.gms.internal.ads.zzeil
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzd(zzdpjVar, (JSONObject) obj);
            }
        }, this.zzb);
    }

    final /* synthetic */ h0 zzf(zzfeh zzfehVar, zzfdu zzfduVar, JSONArray jSONArray) throws Exception {
        if (jSONArray.length() == 0) {
            return zzgbb.zzg(new zzdxn(3));
        }
        if (zzfehVar.zza.zza.zzk <= 1) {
            return zzgbb.zzm(zzg(zzfehVar, zzfduVar, jSONArray.getJSONObject(0)), new zzftn() { // from class: com.google.android.gms.internal.ads.zzeio
                @Override // com.google.android.gms.internal.ads.zzftn
                public final Object apply(Object obj) {
                    return Collections.singletonList(zzgbb.zzh((zzdkf) obj));
                }
            }, this.zzb);
        }
        int length = jSONArray.length();
        this.zzd.zzc(Math.min(length, zzfehVar.zza.zza.zzk));
        ArrayList arrayList = new ArrayList(zzfehVar.zza.zza.zzk);
        for (int i = 0; i < zzfehVar.zza.zza.zzk; i++) {
            if (i < length) {
                arrayList.add(zzg(zzfehVar, zzfduVar, jSONArray.getJSONObject(i)));
            } else {
                arrayList.add(zzgbb.zzg(new zzdxn(3)));
            }
        }
        return zzgbb.zzh(arrayList);
    }
}
