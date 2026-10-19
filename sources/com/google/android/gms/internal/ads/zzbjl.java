package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbjl implements zzbkd {
    zzbjl() {
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcgv zzcgvVar = (zzcgv) obj;
        if (TextUtils.isEmpty((CharSequence) map.get("appId"))) {
            com.google.android.gms.ads.internal.util.zze.zza("Missing App Id, cannot show LMD Overlay without it");
            return;
        }
        zzfsc zzfscVarZzl = zzfsd.zzl();
        zzfscVarZzl.zzb((String) map.get("appId"));
        zzfscVarZzl.zzh(zzcgvVar.getWidth());
        zzfscVarZzl.zzg(zzcgvVar.zzF().getWindowToken());
        if (map.containsKey("gravityX") && map.containsKey("gravityY")) {
            zzfscVarZzl.zzd(Integer.parseInt((String) map.get("gravityX")) | Integer.parseInt((String) map.get("gravityY")));
        } else {
            zzfscVarZzl.zzd(81);
        }
        if (map.containsKey("verticalMargin")) {
            zzfscVarZzl.zze(Float.parseFloat((String) map.get("verticalMargin")));
        } else {
            zzfscVarZzl.zze(0.02f);
        }
        if (map.containsKey("enifd")) {
            zzfscVarZzl.zza((String) map.get("enifd"));
        }
        try {
            com.google.android.gms.ads.internal.zzt.zzj().zzj(zzcgvVar, zzfscVarZzl.zzi());
        } catch (NullPointerException e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "DefaultGmsgHandlers.ShowLMDOverlay");
            com.google.android.gms.ads.internal.util.zze.zza("Missing parameters for LMD Overlay show request");
        }
    }
}
