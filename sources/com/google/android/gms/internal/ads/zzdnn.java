package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdSize;
import com.google.common.util.concurrent.h0;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdnn {
    private final Context zza;
    private final zzdmw zzb;
    private final zzasi zzc;
    private final zzcbt zzd;
    private final com.google.android.gms.ads.internal.zza zze;
    private final zzayp zzf;
    private final Executor zzg;
    private final zzbfw zzh;
    private final zzdof zzi;
    private final zzdqu zzj;
    private final ScheduledExecutorService zzk;
    private final zzdpp zzl;
    private final zzdtp zzm;
    private final zzfje zzn;
    private final zzfla zzo;
    private final zzeep zzp;
    private final zzefa zzq;

    public zzdnn(Context context, zzdmw zzdmwVar, zzasi zzasiVar, zzcbt zzcbtVar, com.google.android.gms.ads.internal.zza zzaVar, zzayp zzaypVar, Executor executor, zzfeq zzfeqVar, zzdof zzdofVar, zzdqu zzdquVar, ScheduledExecutorService scheduledExecutorService, zzdtp zzdtpVar, zzfje zzfjeVar, zzfla zzflaVar, zzeep zzeepVar, zzdpp zzdppVar, zzefa zzefaVar) {
        this.zza = context;
        this.zzb = zzdmwVar;
        this.zzc = zzasiVar;
        this.zzd = zzcbtVar;
        this.zze = zzaVar;
        this.zzf = zzaypVar;
        this.zzg = executor;
        this.zzh = zzfeqVar.zzi;
        this.zzi = zzdofVar;
        this.zzj = zzdquVar;
        this.zzk = scheduledExecutorService;
        this.zzm = zzdtpVar;
        this.zzn = zzfjeVar;
        this.zzo = zzflaVar;
        this.zzp = zzeepVar;
        this.zzl = zzdppVar;
        this.zzq = zzefaVar;
    }

    @Nullable
    public static final com.google.android.gms.ads.internal.client.zzel zzi(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(CampaignEx.JSON_NATIVE_VIDEO_MUTE);
        if (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return zzr(jSONObjectOptJSONObject);
    }

    public static final List zzj(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(CampaignEx.JSON_NATIVE_VIDEO_MUTE);
        if (jSONObjectOptJSONObject == null) {
            return zzfwu.zzl();
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("reasons");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return zzfwu.zzl();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            com.google.android.gms.ads.internal.client.zzel zzelVarZzr = zzr(jSONArrayOptJSONArray.optJSONObject(i));
            if (zzelVarZzr != null) {
                arrayList.add(zzelVarZzr);
            }
        }
        return zzfwu.zzj(arrayList);
    }

    private final com.google.android.gms.ads.internal.client.zzq zzk(int i, int i2) {
        if (i == 0) {
            if (i2 == 0) {
                return com.google.android.gms.ads.internal.client.zzq.zzc();
            }
            i = 0;
        }
        return new com.google.android.gms.ads.internal.client.zzq(this.zza, new AdSize(i, i2));
    }

    private static h0 zzl(h0 h0Var, Object obj) {
        final Object obj2 = null;
        return zzgbb.zzf(h0Var, Exception.class, new zzgai(obj2) { // from class: com.google.android.gms.internal.ads.zzdnl
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj3) {
                com.google.android.gms.ads.internal.util.zze.zzb("Error during loading assets.", (Exception) obj3);
                return zzgbb.zzh(null);
            }
        }, zzcca.zzf);
    }

    private static h0 zzm(boolean z, final h0 h0Var, Object obj) {
        return z ? zzgbb.zzn(h0Var, new zzgai() { // from class: com.google.android.gms.internal.ads.zzdnm
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj2) {
                return obj2 != null ? h0Var : zzgbb.zzg(new zzejt(1, "Retrieve required value in native ad response failed."));
            }
        }, zzcca.zzf) : zzl(h0Var, null);
    }

    private final h0 zzn(@Nullable JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return zzgbb.zzh(null);
        }
        final String strOptString = jSONObject.optString("url");
        if (TextUtils.isEmpty(strOptString)) {
            return zzgbb.zzh(null);
        }
        final double dOptDouble = jSONObject.optDouble("scale", 1.0d);
        boolean zOptBoolean = jSONObject.optBoolean("is_transparent", true);
        final int iOptInt = jSONObject.optInt("width", -1);
        final int iOptInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return zzgbb.zzh(new zzbfu(null, Uri.parse(strOptString), dOptDouble, iOptInt, iOptInt2));
        }
        return zzm(jSONObject.optBoolean("require"), zzgbb.zzm(this.zzb.zzb(strOptString, dOptDouble, zOptBoolean), new zzftn() { // from class: com.google.android.gms.internal.ads.zzdnd
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                return new zzbfu(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(strOptString), dOptDouble, iOptInt, iOptInt2);
            }
        }, this.zzg), null);
    }

    private final h0 zzo(@Nullable JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return zzgbb.zzh(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(zzn(jSONArray.optJSONObject(i), z));
        }
        return zzgbb.zzm(zzgbb.zzd(arrayList), new zzftn() { // from class: com.google.android.gms.internal.ads.zzdni
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                ArrayList arrayList2 = new ArrayList();
                for (zzbfu zzbfuVar : (List) obj) {
                    if (zzbfuVar != null) {
                        arrayList2.add(zzbfuVar);
                    }
                }
                return arrayList2;
            }
        }, this.zzg);
    }

    private final h0 zzp(JSONObject jSONObject, zzfdu zzfduVar, zzfdy zzfdyVar) {
        final h0 h0VarZzb = this.zzi.zzb(jSONObject.optString("base_url"), jSONObject.optString("html"), zzfduVar, zzfdyVar, zzk(jSONObject.optInt("width", 0), jSONObject.optInt("height", 0)));
        return zzgbb.zzn(h0VarZzb, new zzgai() { // from class: com.google.android.gms.internal.ads.zzdne
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) throws zzejt {
                zzcgv zzcgvVar = (zzcgv) obj;
                if (zzcgvVar == null || zzcgvVar.zzq() == null) {
                    throw new zzejt(1, "Retrieve video view in html5 ad response failed.");
                }
                return h0VarZzb;
            }
        }, zzcca.zzf);
    }

    @Nullable
    private static Integer zzq(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)));
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    private static final com.google.android.gms.ads.internal.client.zzel zzr(@Nullable JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("reason");
        String strOptString2 = jSONObject.optString("ping_url");
        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2)) {
            return null;
        }
        return new com.google.android.gms.ads.internal.client.zzel(strOptString, strOptString2);
    }

    final /* synthetic */ zzbfr zza(JSONObject jSONObject, List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        String strOptString = jSONObject.optString("text");
        Integer numZzq = zzq(jSONObject, "bg_color");
        Integer numZzq2 = zzq(jSONObject, "text_color");
        int iOptInt = jSONObject.optInt("text_size", -1);
        boolean zOptBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int iOptInt2 = jSONObject.optInt("animation_ms", 1000);
        return new zzbfr(strOptString, list, numZzq, numZzq2, iOptInt > 0 ? Integer.valueOf(iOptInt) : null, jSONObject.optInt("presentation_ms", 4000) + iOptInt2, this.zzh.zze, zOptBoolean);
    }

    final /* synthetic */ h0 zzb(com.google.android.gms.ads.internal.client.zzq zzqVar, zzfdu zzfduVar, zzfdy zzfdyVar, String str, String str2, Object obj) throws Exception {
        zzcgv zzcgvVarZza = this.zzj.zza(zzqVar, zzfduVar, zzfdyVar);
        final zzcce zzcceVarZza = zzcce.zza(zzcgvVarZza);
        zzdpm zzdpmVarZzb = this.zzl.zzb();
        zzcgvVarZza.zzN().zzM(zzdpmVarZzb, zzdpmVarZzb, zzdpmVarZzb, zzdpmVarZzb, zzdpmVarZzb, false, null, new com.google.android.gms.ads.internal.zzb(this.zza, null, null), null, null, this.zzp, this.zzo, this.zzm, this.zzn, null, zzdpmVarZzb, null, null, null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdD)).booleanValue()) {
            zzcgvVarZza.zzad("/getNativeAdViewSignals", zzbkc.zzs);
        }
        zzcgvVarZza.zzad("/getNativeClickMeta", zzbkc.zzt);
        zzcgvVarZza.zzN().zzA(new zzcig() { // from class: com.google.android.gms.internal.ads.zzdnh
            @Override // com.google.android.gms.internal.ads.zzcig
            public final void zza(boolean z, int i, String str3, String str4) {
                zzcce zzcceVar = zzcceVarZza;
                if (z) {
                    zzcceVar.zzb();
                    return;
                }
                zzcceVar.zzd(new zzejt(1, "Image Web View failed to load. Error code: " + i + ", Description: " + str3 + ", Failing URL: " + str4));
            }
        });
        zzcgvVarZza.zzab(str, str2, null);
        return zzcceVarZza;
    }

    final /* synthetic */ h0 zzc(String str, Object obj) throws Exception {
        com.google.android.gms.ads.internal.zzt.zzz();
        zzcgv zzcgvVarZza = zzchh.zza(this.zza, zzcik.zza(), "native-omid", false, false, this.zzc, null, this.zzd, null, null, this.zze, this.zzf, null, null, this.zzq);
        final zzcce zzcceVarZza = zzcce.zza(zzcgvVarZza);
        zzcgvVarZza.zzN().zzA(new zzcig() { // from class: com.google.android.gms.internal.ads.zzdnj
            @Override // com.google.android.gms.internal.ads.zzcig
            public final void zza(boolean z, int i, String str2, String str3) {
                zzcceVarZza.zzb();
            }
        });
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeW)).booleanValue()) {
            zzcgvVarZza.loadData(Base64.encodeToString(str.getBytes(), 1), "text/html", "base64");
        } else {
            zzcgvVarZza.loadData(str, "text/html", C.UTF8_NAME);
        }
        return zzcceVarZza;
    }

    public final h0 zzd(JSONObject jSONObject, String str) {
        final JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("attribution");
        if (jSONObjectOptJSONObject == null) {
            return zzgbb.zzh(null);
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("images");
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("image");
        if (jSONArrayOptJSONArray == null && jSONObjectOptJSONObject2 != null) {
            jSONArrayOptJSONArray = new JSONArray();
            jSONArrayOptJSONArray.put(jSONObjectOptJSONObject2);
        }
        return zzm(jSONObjectOptJSONObject.optBoolean("require"), zzgbb.zzm(zzo(jSONArrayOptJSONArray, false, true), new zzftn() { // from class: com.google.android.gms.internal.ads.zzdnk
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                return this.zza.zza(jSONObjectOptJSONObject, (List) obj);
            }
        }, this.zzg), null);
    }

    public final h0 zze(JSONObject jSONObject, String str) {
        return zzn(jSONObject.optJSONObject(str), this.zzh.zzb);
    }

    public final h0 zzf(JSONObject jSONObject, String str) {
        zzbfw zzbfwVar = this.zzh;
        return zzo(jSONObject.optJSONArray("images"), zzbfwVar.zzb, zzbfwVar.zzd);
    }

    public final h0 zzg(JSONObject jSONObject, String str, final zzfdu zzfduVar, final zzfdy zzfdyVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjA)).booleanValue()) {
            return zzgbb.zzh(null);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("images");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return zzgbb.zzh(null);
        }
        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(0);
        if (jSONObjectOptJSONObject == null) {
            return zzgbb.zzh(null);
        }
        final String strOptString = jSONObjectOptJSONObject.optString("base_url");
        final String strOptString2 = jSONObjectOptJSONObject.optString("html");
        final com.google.android.gms.ads.internal.client.zzq zzqVarZzk = zzk(jSONObjectOptJSONObject.optInt("width", 0), jSONObjectOptJSONObject.optInt("height", 0));
        if (TextUtils.isEmpty(strOptString2)) {
            return zzgbb.zzh(null);
        }
        final h0 h0VarZzn = zzgbb.zzn(zzgbb.zzh(null), new zzgai() { // from class: com.google.android.gms.internal.ads.zzdnf
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzb(zzqVarZzk, zzfduVar, zzfdyVar, strOptString, strOptString2, obj);
            }
        }, zzcca.zze);
        return zzgbb.zzn(h0VarZzn, new zzgai() { // from class: com.google.android.gms.internal.ads.zzdng
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) throws zzejt {
                if (((zzcgv) obj) != null) {
                    return h0VarZzn;
                }
                throw new zzejt(1, "Retrieve Web View from image ad response failed.");
            }
        }, zzcca.zzf);
    }

    public final h0 zzh(JSONObject jSONObject, zzfdu zzfduVar, zzfdy zzfdyVar) {
        h0 h0VarZza;
        JSONObject jSONObjectZzg = com.google.android.gms.ads.internal.util.zzbw.zzg(jSONObject, "html_containers", "instream");
        if (jSONObjectZzg != null) {
            return zzp(jSONObjectZzg, zzfduVar, zzfdyVar);
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("video");
        if (jSONObjectOptJSONObject == null) {
            return zzgbb.zzh(null);
        }
        String strOptString = jSONObjectOptJSONObject.optString("vast_xml");
        boolean z = false;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjz)).booleanValue() && jSONObjectOptJSONObject.has("html")) {
            z = true;
        }
        if (!TextUtils.isEmpty(strOptString)) {
            if (!z) {
                h0VarZza = this.zzi.zza(jSONObjectOptJSONObject);
            }
            return zzl(zzgbb.zzo(h0VarZza, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdE)).intValue(), TimeUnit.SECONDS, this.zzk), null);
        }
        if (!z) {
            zzcbn.zzj("Required field 'vast_xml' or 'html' is missing");
            return zzgbb.zzh(null);
        }
        h0VarZza = zzp(jSONObjectOptJSONObject, zzfduVar, zzfdyVar);
        return zzl(zzgbb.zzo(h0VarZza, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdE)).intValue(), TimeUnit.SECONDS, this.zzk), null);
    }
}
