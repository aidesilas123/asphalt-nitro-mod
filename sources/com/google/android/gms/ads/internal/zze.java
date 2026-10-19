package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbcu;
import com.google.android.gms.internal.ads.zzbdc;
import com.google.android.gms.internal.ads.zzbok;
import com.google.android.gms.internal.ads.zzboo;
import com.google.android.gms.internal.ads.zzbor;
import com.google.android.gms.internal.ads.zzbou;
import com.google.android.gms.internal.ads.zzcaq;
import com.google.android.gms.internal.ads.zzcbn;
import com.google.android.gms.internal.ads.zzcbt;
import com.google.android.gms.internal.ads.zzcca;
import com.google.android.gms.internal.ads.zzccd;
import com.google.android.gms.internal.ads.zzfjv;
import com.google.android.gms.internal.ads.zzfjw;
import com.google.android.gms.internal.ads.zzfkk;
import com.google.android.gms.internal.ads.zzgai;
import com.google.android.gms.internal.ads.zzgbb;
import com.google.android.gms.internal.ads.zzgbl;
import com.google.common.util.concurrent.h0;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zze {
    private Context zza;
    private long zzb = 0;

    public final void zza(Context context, zzcbt zzcbtVar, String str, @Nullable Runnable runnable, zzfkk zzfkkVar) {
        zzb(context, zzcbtVar, true, null, str, null, runnable, zzfkkVar);
    }

    @VisibleForTesting
    final void zzb(Context context, zzcbt zzcbtVar, boolean z, @Nullable zzcaq zzcaqVar, String str, @Nullable String str2, @Nullable Runnable runnable, final zzfkk zzfkkVar) {
        PackageInfo packageInfo;
        if (zzt.zzB().elapsedRealtime() - this.zzb < 5000) {
            zzcbn.zzj("Not retrying to fetch app settings");
            return;
        }
        this.zzb = zzt.zzB().elapsedRealtime();
        if (zzcaqVar != null && !TextUtils.isEmpty(zzcaqVar.zzc())) {
            if (zzt.zzB().currentTimeMillis() - zzcaqVar.zza() <= ((Long) zzba.zzc().zza(zzbdc.zzdV)).longValue() && zzcaqVar.zzi()) {
                return;
            }
        }
        if (context == null) {
            zzcbn.zzj("Context not provided to fetch application settings");
            return;
        }
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            zzcbn.zzj("App settings could not be fetched. Required parameters missing");
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        this.zza = applicationContext;
        final zzfjw zzfjwVarZza = zzfjv.zza(context, 4);
        zzfjwVarZza.zzh();
        zzbou zzbouVarZza = zzt.zzf().zza(this.zza, zzcbtVar, zzfkkVar);
        zzboo zzbooVar = zzbor.zza;
        zzbok zzbokVarZza = zzbouVarZza.zza("google.afma.config.fetchAppSettings", zzbooVar, zzbooVar);
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("app_id", str);
            } else if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("ad_unit_id", str2);
            }
            jSONObject.put("is_init", z);
            jSONObject.put("pn", context.getPackageName());
            zzbcu zzbcuVar = zzbdc.zza;
            jSONObject.put("experiment_ids", TextUtils.join(",", zzba.zza().zza()));
            jSONObject.put("js", zzcbtVar.zza);
            try {
                ApplicationInfo applicationInfo = this.zza.getApplicationInfo();
                if (applicationInfo != null && (packageInfo = Wrappers.packageManager(context).getPackageInfo(applicationInfo.packageName, 0)) != null) {
                    jSONObject.put("version", packageInfo.versionCode);
                }
            } catch (PackageManager.NameNotFoundException unused) {
                com.google.android.gms.ads.internal.util.zze.zza("Error fetching PackageInfo.");
            }
            h0 h0VarZzb = zzbokVarZza.zzb(jSONObject);
            zzgai zzgaiVar = new zzgai() { // from class: com.google.android.gms.ads.internal.zzd
                @Override // com.google.android.gms.internal.ads.zzgai
                public final h0 zza(Object obj) throws JSONException {
                    JSONObject jSONObject2 = (JSONObject) obj;
                    boolean zOptBoolean = jSONObject2.optBoolean("isSuccessful", false);
                    if (zOptBoolean) {
                        zzt.zzo().zzi().zzu(jSONObject2.getString("appSettingsJson"));
                    }
                    zzfjw zzfjwVar = zzfjwVarZza;
                    zzfkk zzfkkVar2 = zzfkkVar;
                    zzfjwVar.zzf(zOptBoolean);
                    zzfkkVar2.zzb(zzfjwVar.zzl());
                    return zzgbb.zzh(null);
                }
            };
            zzgbl zzgblVar = zzcca.zzf;
            h0 h0VarZzn = zzgbb.zzn(h0VarZzb, zzgaiVar, zzgblVar);
            if (runnable != null) {
                h0VarZzb.addListener(runnable, zzgblVar);
            }
            zzccd.zza(h0VarZzn, "ConfigLoader.maybeFetchNewAppSettings");
        } catch (Exception e2) {
            zzcbn.zzh("Error requesting application settings", e2);
            zzfjwVarZza.zzg(e2);
            zzfjwVarZza.zzf(false);
            zzfkkVar.zzb(zzfjwVarZza.zzl());
        }
    }

    public final void zzc(Context context, zzcbt zzcbtVar, String str, zzcaq zzcaqVar, zzfkk zzfkkVar) {
        zzb(context, zzcbtVar, false, zzcaqVar, zzcaqVar != null ? zzcaqVar.zzb() : null, str, null, zzfkkVar);
    }
}
