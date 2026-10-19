package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.google.common.util.concurrent.h0;
import com.json.mediationsdk.utils.c;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdyv {
    private final zzciq zza;
    private final Context zzb;
    private final zzcbt zzc;
    private final zzfeq zzd;
    private final Executor zze;
    private final String zzf;
    private final zzfkh zzg;
    private final zzffd zzh;
    private final zzdtk zzi;

    public zzdyv(zzciq zzciqVar, Context context, zzcbt zzcbtVar, zzfeq zzfeqVar, Executor executor, String str, zzfkh zzfkhVar, zzdtk zzdtkVar) {
        this.zza = zzciqVar;
        this.zzb = context;
        this.zzc = zzcbtVar;
        this.zzd = zzfeqVar;
        this.zze = executor;
        this.zzf = str;
        this.zzg = zzfkhVar;
        this.zzh = zzciqVar.zzw();
        this.zzi = zzdtkVar;
    }

    private final h0 zzc(final String str, final String str2) {
        zzfjw zzfjwVarZza = zzfjv.zza(this.zzb, 11);
        zzfjwVarZza.zzh();
        zzbou zzbouVarZza = com.google.android.gms.ads.internal.zzt.zzf().zza(this.zzb, this.zzc, this.zza.zzz());
        zzboo zzbooVar = zzbor.zza;
        final zzbok zzbokVarZza = zzbouVarZza.zza("google.afma.response.normalize", zzbooVar, zzbooVar);
        h0 h0VarZzn = zzgbb.zzn(zzgbb.zzn(zzgbb.zzn(zzgbb.zzh(""), new zzgai() { // from class: com.google.android.gms.internal.ads.zzdys
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) throws JSONException {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                String str3 = str;
                String str4 = str2;
                try {
                    jSONObject3.put("headers", new JSONObject());
                    jSONObject3.put("body", str3);
                    jSONObject2.put("base_url", "");
                    jSONObject2.put("signals", new JSONObject(str4));
                    jSONObject.put("request", jSONObject2);
                    jSONObject.put(c.Y1, jSONObject3);
                    jSONObject.put("flags", new JSONObject());
                    return zzgbb.zzh(jSONObject);
                } catch (JSONException e2) {
                    throw new JSONException("Preloaded loader: ".concat(String.valueOf(e2.getCause())));
                }
            }
        }, this.zze), new zzgai() { // from class: com.google.android.gms.internal.ads.zzdyt
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzbokVarZza.zzb((JSONObject) obj);
            }
        }, this.zze), new zzgai() { // from class: com.google.android.gms.internal.ads.zzdyu
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzb((JSONObject) obj);
            }
        }, this.zze);
        zzfkg.zza(h0VarZzn, this.zzg, zzfjwVarZza);
        return h0VarZzn;
    }

    private final String zzd(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && "unknown".equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.zzf));
            }
            return jSONObject.toString();
        } catch (JSONException e2) {
            zzcbn.zzj("Failed to update the ad types for rendering. ".concat(e2.toString()));
            return str;
        }
    }

    private static final String zze(String str) {
        try {
            return new JSONObject(str).optString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, "");
        } catch (JSONException unused) {
            return "";
        }
    }

    public final h0 zza() {
        String strZzb = this.zzd.zzd.zzx;
        if (!TextUtils.isEmpty(strZzb)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgW)).booleanValue()) {
                String strZze = zze(strZzb);
                zzbcu zzbcuVar = zzbdc.zzhi;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).booleanValue() && strZze.isEmpty()) {
                    int iLastIndexOf = strZzb.lastIndexOf("&request_id=");
                    strZze = iLastIndexOf != -1 ? strZzb.substring(iLastIndexOf + 12) : "";
                }
                if (TextUtils.isEmpty(strZze)) {
                    return zzgbb.zzg(new zzejt(15, "Invalid ad string."));
                }
                String strZzb2 = this.zza.zzn().zzb(strZze, this.zzi);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).booleanValue()) {
                    zzdtk zzdtkVar = this.zzi;
                    if (!TextUtils.isEmpty(strZzb2)) {
                        Boolean bool = new JSONObject(strZzb2).optString("is_gbid").equals("true") ? Boolean.TRUE : Boolean.FALSE;
                        if (bool.booleanValue()) {
                            int iLastIndexOf2 = strZzb.lastIndexOf(o2.i.c);
                            String string = null;
                            String strSubstring = iLastIndexOf2 != -1 ? strZzb.substring(0, iLastIndexOf2) : null;
                            if (!TextUtils.isEmpty(strSubstring)) {
                                try {
                                    byte[] bArrDecode = Base64.decode(strSubstring, 11);
                                    byte[] bytes = strZze.getBytes(C.UTF8_NAME);
                                    try {
                                        string = new JSONObject(strZzb2).getString("arek");
                                    } catch (JSONException e2) {
                                        com.google.android.gms.ads.internal.util.zze.zza("Failed to get key from QueryJSONMap".concat(e2.toString()));
                                        com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "CryptoUtils.getKeyFromQueryJsonMap");
                                    }
                                    strZzb = zzffd.zzb(bArrDecode, bytes, string, zzdtkVar);
                                } catch (UnsupportedEncodingException e3) {
                                    com.google.android.gms.ads.internal.util.zze.zza("Failed to decode the adResponse. ".concat(e3.toString()));
                                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e3, "PreloadedLoader.decryptAdResponseIfNecessary");
                                }
                            }
                        }
                    }
                }
                if (!TextUtils.isEmpty(strZzb2)) {
                    return zzc(strZzb, zzd(strZzb2));
                }
            }
        }
        com.google.android.gms.ads.internal.client.zzc zzcVar = this.zzd.zzd.zzs;
        if (zzcVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgU)).booleanValue()) {
                String str = zzcVar.zza;
                String str2 = zzcVar.zzb;
                String strZze2 = zze(str);
                String strZze3 = zze(str2);
                if (TextUtils.isEmpty(strZze3) || !strZze2.equals(strZze3)) {
                    this.zzi.zza().put("ridmm", "true");
                } else {
                    this.zza.zzn().zzf(strZze2);
                    this.zzi.zza().put("rid", strZze2);
                }
            }
            return zzc(zzcVar.zza, zzd(zzcVar.zzb));
        }
        return zzgbb.zzg(new zzejt(14, "Mismatch request IDs."));
    }

    final /* synthetic */ h0 zzb(JSONObject jSONObject) throws Exception {
        return zzgbb.zzh(new zzfeh(new zzfee(this.zzd), zzfeg.zza(new StringReader(jSONObject.toString()))));
    }
}
