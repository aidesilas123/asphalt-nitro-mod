package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.json.d1;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcev implements zzbkd {
    private boolean zza;

    private static int zzb(Context context, Map map, String str, int i) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                com.google.android.gms.ads.internal.client.zzay.zzb();
                i = zzcbg.zzx(context, Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                zzcbn.zzj("Could not parse " + str + " in a video GMSG: " + str2);
            }
        }
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("Parse pixels for " + str + ", got string " + str2 + ", int " + i + ".");
        }
        return i;
    }

    private static void zzc(zzcdk zzcdkVar, Map map) {
        String str = (String) map.get("minBufferMs");
        String str2 = (String) map.get("maxBufferMs");
        String str3 = (String) map.get("bufferForPlaybackMs");
        String str4 = (String) map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = (String) map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzcdkVar.zzB(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                zzcbn.zzj(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzcdkVar.zzA(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzcdkVar.zzy(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzcdkVar.zzz(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzcdkVar.zzD(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        int iMin;
        int iMin2;
        int i;
        Integer numValueOf;
        zzcdw zzcdwVar = (zzcdw) obj;
        String str = (String) map.get("action");
        if (str == null) {
            zzcbn.zzj("Action missing from video GMSG.");
            return;
        }
        Integer numValueOf2 = map.containsKey("playerId") ? Integer.valueOf(Integer.parseInt((String) map.get("playerId"))) : null;
        Integer numZzb = zzcdwVar.zzo() != null ? zzcdwVar.zzo().zzb() : null;
        if (numValueOf2 != null && numZzb != null && !numValueOf2.equals(numZzb) && !str.equals("load")) {
            zzcbn.zzi(String.format(Locale.US, "Event intended for player %s, but sent to player %d - event ignored", numValueOf2, numZzb));
            return;
        }
        if (zzcbn.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            zzcbn.zze("Video GMSG: " + str + " " + jSONObject.toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                zzcbn.zzj("Color parameter missing from background video GMSG.");
                return;
            }
            try {
                zzcdwVar.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException unused) {
                zzcbn.zzj("Invalid color parameter in background video GMSG.");
                return;
            }
        }
        if ("playerBackground".equals(str)) {
            String str3 = (String) map.get("color");
            if (TextUtils.isEmpty(str3)) {
                zzcbn.zzj("Color parameter missing from playerBackground video GMSG.");
                return;
            }
            try {
                zzcdwVar.zzB(Color.parseColor(str3));
                return;
            } catch (IllegalArgumentException unused2) {
                zzcbn.zzj("Invalid color parameter in playerBackground video GMSG.");
                return;
            }
        }
        if ("decoderProps".equals(str)) {
            String str4 = (String) map.get("mimeTypes");
            if (str4 == null) {
                zzcbn.zzj("No MIME types specified for decoder properties inspection.");
                HashMap map2 = new HashMap();
                map2.put(NotificationCompat.CATEGORY_EVENT, "decoderProps");
                map2.put("error", "missingMimeTypes");
                zzcdwVar.zzd("onVideoEvent", map2);
                return;
            }
            HashMap map3 = new HashMap();
            for (String str5 : str4.split(",")) {
                map3.put(str5, com.google.android.gms.ads.internal.util.zzcn.zza(str5.trim()));
            }
            HashMap map4 = new HashMap();
            map4.put(NotificationCompat.CATEGORY_EVENT, "decoderProps");
            map4.put("mimeTypes", map3);
            zzcdwVar.zzd("onVideoEvent", map4);
            return;
        }
        zzcdl zzcdlVarZzo = zzcdwVar.zzo();
        if (zzcdlVarZzo == null) {
            zzcbn.zzj("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean zEquals = "new".equals(str);
        boolean zEquals2 = o2.h.L.equals(str);
        if (zEquals || zEquals2) {
            Context context = zzcdwVar.getContext();
            int iZzb = zzb(context, map, "x", 0);
            int iZzb2 = zzb(context, map, "y", 0);
            int iZzb3 = zzb(context, map, "w", -1);
            zzbcu zzbcuVar = zzbdc.zzdI;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).booleanValue()) {
                iMin = iZzb3 == -1 ? zzcdwVar.zzh() : Math.min(iZzb3, zzcdwVar.zzh());
            } else {
                if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                    com.google.android.gms.ads.internal.util.zze.zza("Calculate width with original width " + iZzb3 + ", videoHost.getVideoBoundingWidth() " + zzcdwVar.zzh() + ", x " + iZzb + ".");
                }
                iMin = Math.min(iZzb3, zzcdwVar.zzh() - iZzb);
            }
            int iZzb4 = zzb(context, map, "h", -1);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).booleanValue()) {
                iMin2 = iZzb4 == -1 ? zzcdwVar.zzg() : Math.min(iZzb4, zzcdwVar.zzg());
            } else {
                if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                    com.google.android.gms.ads.internal.util.zze.zza("Calculate height with original height " + iZzb4 + ", videoHost.getVideoBoundingHeight() " + zzcdwVar.zzg() + ", y " + iZzb2 + ".");
                }
                iMin2 = Math.min(iZzb4, zzcdwVar.zzg() - iZzb2);
            }
            try {
                i = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException unused3) {
                i = 0;
            }
            boolean z = Boolean.parseBoolean((String) map.get("spherical"));
            if (!zEquals || zzcdlVarZzo.zza() != null) {
                zzcdlVarZzo.zzc(iZzb, iZzb2, iMin, iMin2);
                return;
            }
            zzcdlVarZzo.zzd(iZzb, iZzb2, iMin, iMin2, i, z, new zzcdv((String) map.get("flags")));
            zzcdk zzcdkVarZza = zzcdlVarZzo.zza();
            if (zzcdkVarZza != null) {
                zzc(zzcdkVarZza, map);
                return;
            }
            return;
        }
        zzchr zzchrVarZzq = zzcdwVar.zzq();
        if (zzchrVarZzq != null) {
            if ("timeupdate".equals(str)) {
                String str6 = (String) map.get("currentTime");
                if (str6 == null) {
                    zzcbn.zzj("currentTime parameter missing from timeupdate video GMSG.");
                    return;
                }
                try {
                    zzchrVarZzq.zzt(Float.parseFloat(str6));
                    return;
                } catch (NumberFormatException unused4) {
                    zzcbn.zzj("Could not parse currentTime parameter from timeupdate video GMSG: ".concat(str6));
                    return;
                }
            }
            if ("skip".equals(str)) {
                zzchrVarZzq.zzu();
                return;
            }
        }
        zzcdk zzcdkVarZza2 = zzcdlVarZzo.zza();
        if (zzcdkVarZza2 == null) {
            HashMap map5 = new HashMap();
            map5.put(NotificationCompat.CATEGORY_EVENT, "no_video_view");
            zzcdwVar.zzd("onVideoEvent", map5);
            return;
        }
        if (CampaignEx.JSON_NATIVE_VIDEO_CLICK.equals(str)) {
            Context context2 = zzcdwVar.getContext();
            int iZzb5 = zzb(context2, map, "x", 0);
            float fZzb = zzb(context2, map, "y", 0);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, iZzb5, fZzb, 0);
            zzcdkVarZza2.zzx(motionEventObtain);
            motionEventObtain.recycle();
            return;
        }
        if ("currentTime".equals(str)) {
            String str7 = (String) map.get("time");
            if (str7 == null) {
                zzcbn.zzj("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                zzcdkVarZza2.zzw((int) (Float.parseFloat(str7) * 1000.0f));
                return;
            } catch (NumberFormatException unused5) {
                zzcbn.zzj("Could not parse time parameter from currentTime video GMSG: ".concat(str7));
                return;
            }
        }
        if ("hide".equals(str)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzG)).booleanValue()) {
                zzcdkVarZza2.setVisibility(8);
                return;
            } else {
                zzcdkVarZza2.setVisibility(4);
                return;
            }
        }
        if ("load".equals(str)) {
            zzcdkVarZza2.zzr(numValueOf2);
            return;
        }
        if ("loadControl".equals(str)) {
            zzc(zzcdkVarZza2, map);
            return;
        }
        if ("muted".equals(str)) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                zzcdkVarZza2.zzs();
                return;
            } else {
                zzcdkVarZza2.zzI();
                return;
            }
        }
        if (CampaignEx.JSON_NATIVE_VIDEO_PAUSE.equals(str)) {
            zzcdkVarZza2.zzu();
            return;
        }
        if ("play".equals(str)) {
            zzcdkVarZza2.zzv();
            return;
        }
        if (d1.u.equals(str)) {
            zzcdkVarZza2.setVisibility(0);
            return;
        }
        if ("src".equals(str)) {
            String str8 = (String) map.get("src");
            if (map.containsKey("periodicReportIntervalMs")) {
                try {
                    numValueOf = Integer.valueOf(Integer.parseInt((String) map.get("periodicReportIntervalMs")));
                } catch (NumberFormatException unused6) {
                    zzcbn.zzj("Video gmsg invalid numeric parameter 'periodicReportIntervalMs': ".concat(String.valueOf((String) map.get("periodicReportIntervalMs"))));
                    numValueOf = null;
                }
            } else {
                numValueOf = null;
            }
            String[] strArr = {str8};
            String str9 = (String) map.get("demuxed");
            if (str9 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str9);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        strArr2[i2] = jSONArray.getString(i2);
                    }
                    strArr = strArr2;
                } catch (JSONException unused7) {
                    zzcbn.zzj("Malformed demuxed URL list for playback: ".concat(str9));
                    strArr = new String[]{str8};
                }
            }
            if (numValueOf != null) {
                zzcdwVar.zzA(numValueOf.intValue());
            }
            zzcdkVarZza2.zzE(str8, strArr);
            return;
        }
        if ("touchMove".equals(str)) {
            Context context3 = zzcdwVar.getContext();
            zzcdkVarZza2.zzH(zzb(context3, map, "dx", 0), zzb(context3, map, "dy", 0));
            if (this.zza) {
                return;
            }
            zzcdwVar.zzu();
            this.zza = true;
            return;
        }
        if (!"volume".equals(str)) {
            if (MBridgeConstans.EXTRA_KEY_WM.equals(str)) {
                zzcdkVarZza2.zzn();
                return;
            } else {
                zzcbn.zzj("Unknown video action: ".concat(str));
                return;
            }
        }
        String str10 = (String) map.get("volume");
        if (str10 == null) {
            zzcbn.zzj("Level parameter missing from volume video GMSG.");
            return;
        }
        try {
            zzcdkVarZza2.zzG(Float.parseFloat(str10));
        } catch (NumberFormatException unused8) {
            zzcbn.zzj("Could not parse volume parameter from volume video GMSG: ".concat(str10));
        }
    }
}
