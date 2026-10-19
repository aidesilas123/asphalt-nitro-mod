package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.json.v4;
import com.mbridge.msdk.MBridgeConstans;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfjm {
    private final Context zza;
    private final String zzb;
    private final String zzc;

    public zzfjm(Context context, zzcbt zzcbtVar) {
        this.zza = context;
        this.zzb = context.getPackageName();
        this.zzc = zzcbtVar.zza;
    }

    public final void zza(Map map) {
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put(v4.x, Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        com.google.android.gms.ads.internal.zzt.zzp();
        map.put("device", com.google.android.gms.ads.internal.util.zzt.zzr());
        map.put(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        com.google.android.gms.ads.internal.zzt.zzp();
        map.put("is_lite_sdk", true != com.google.android.gms.ads.internal.util.zzt.zzD(this.zza) ? "0" : "1");
        zzbcu zzbcuVar = zzbdc.zza;
        List listZzb = com.google.android.gms.ads.internal.client.zzba.zza().zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgT)).booleanValue()) {
            listZzb.addAll(com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zzd());
        }
        map.put("e", TextUtils.join(",", listZzb));
        map.put("sdkVersion", this.zzc);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkx)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzp();
            map.put("is_bstar", true == com.google.android.gms.ads.internal.util.zzt.zzA(this.zza) ? "1" : "0");
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjj)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzca)).booleanValue()) {
                map.put(v4.B, zzfun.zzc(com.google.android.gms.ads.internal.zzt.zzo().zzn()));
            }
        }
    }
}
