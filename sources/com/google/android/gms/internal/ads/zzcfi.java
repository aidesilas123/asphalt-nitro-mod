package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcfi implements zzbkd {
    @Nullable
    private static final Integer zzb(Map map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt((String) map.get(str)));
        } catch (NumberFormatException unused) {
            zzcbn.zzj("Precache invalid numeric parameter '" + str + "': " + ((String) map.get(str)));
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcfh zzcfkVar;
        zzcez zzcezVarZza;
        zzcdw zzcdwVar = (zzcdw) obj;
        if (zzcbn.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            zzcbn.zze("Precache GMSG: ".concat(jSONObject.toString()));
        }
        zzcfa zzcfaVarZzy = com.google.android.gms.ads.internal.zzt.zzy();
        if (map.containsKey("abort")) {
            if (zzcfaVarZzy.zzd(zzcdwVar)) {
                return;
            }
            zzcbn.zzj("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        Integer numZzb = zzb(map, "periodicReportIntervalMs");
        Integer numZzb2 = zzb(map, "exoPlayerRenderingIntervalMs");
        Integer numZzb3 = zzb(map, "exoPlayerIdleIntervalMs");
        zzcdv zzcdvVar = new zzcdv((String) map.get("flags"));
        boolean z = zzcdvVar.zzl;
        if (str != null) {
            String[] strArr = {str};
            String str2 = (String) map.get("demuxed");
            if (str2 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str2);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i = 0; i < jSONArray.length(); i++) {
                        strArr2[i] = jSONArray.getString(i);
                    }
                    strArr = strArr2;
                } catch (JSONException unused) {
                    zzcbn.zzj("Malformed demuxed URL list for precache: ".concat(str2));
                    strArr = null;
                }
            }
            if (strArr == null) {
                strArr = new String[]{str};
            }
            if (z) {
                Iterator it = zzcfaVarZzy.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        zzcezVarZza = null;
                        break;
                    }
                    zzcez zzcezVar = (zzcez) it.next();
                    if (zzcezVar.zza == zzcdwVar && str.equals(zzcezVar.zze())) {
                        zzcezVarZza = zzcezVar;
                        break;
                    }
                }
            } else {
                zzcezVarZza = zzcfaVarZzy.zza(zzcdwVar);
            }
            if (zzcezVarZza != null) {
                zzcbn.zzj("Precache task is already running.");
                return;
            }
            if (zzcdwVar.zzj() == null) {
                zzcbn.zzj("Precache requires a dependency provider.");
                return;
            }
            Integer numZzb4 = zzb(map, "player");
            if (numZzb4 == null) {
                numZzb4 = 0;
            }
            if (numZzb != null) {
                zzcdwVar.zzA(numZzb.intValue());
            }
            if (numZzb2 != null) {
                zzcdwVar.zzy(numZzb2.intValue());
            }
            if (numZzb3 != null) {
                zzcdwVar.zzx(numZzb3.intValue());
            }
            int iIntValue = numZzb4.intValue();
            zzcet zzcetVar = zzcdwVar.zzj().zzb;
            if (iIntValue > 0) {
                int i2 = zzcdvVar.zzh;
                int iZzu = zzcdn.zzu();
                zzcfkVar = iZzu < i2 ? new zzcfq(zzcdwVar, zzcdvVar) : iZzu < zzcdvVar.zzb ? new zzcfn(zzcdwVar, zzcdvVar) : new zzcfl(zzcdwVar);
            } else {
                zzcfkVar = new zzcfk(zzcdwVar);
            }
            new zzcez(zzcdwVar, zzcfkVar, str, strArr).zzb();
        } else {
            zzcez zzcezVarZza2 = zzcfaVarZzy.zza(zzcdwVar);
            if (zzcezVarZza2 == null) {
                zzcbn.zzj("Precache must specify a source.");
                return;
            }
            zzcfkVar = zzcezVarZza2.zzb;
        }
        Integer numZzb5 = zzb(map, "minBufferMs");
        if (numZzb5 != null) {
            zzcfkVar.zzs(numZzb5.intValue());
        }
        Integer numZzb6 = zzb(map, "maxBufferMs");
        if (numZzb6 != null) {
            zzcfkVar.zzr(numZzb6.intValue());
        }
        Integer numZzb7 = zzb(map, "bufferForPlaybackMs");
        if (numZzb7 != null) {
            zzcfkVar.zzp(numZzb7.intValue());
        }
        Integer numZzb8 = zzb(map, "bufferForPlaybackAfterRebufferMs");
        if (numZzb8 != null) {
            zzcfkVar.zzq(numZzb8.intValue());
        }
    }
}
