package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.common.util.concurrent.h0;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfkg {
    public static void zza(h0 h0Var, zzfkh zzfkhVar, zzfjw zzfjwVar) {
        zzg(h0Var, zzfkhVar, zzfjwVar, false);
    }

    public static void zzb(h0 h0Var, zzfkh zzfkhVar, zzfjw zzfjwVar) {
        zzg(h0Var, zzfkhVar, zzfjwVar, true);
    }

    public static void zzc(h0 h0Var, zzfkh zzfkhVar, zzfjw zzfjwVar) {
        if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            zzgbb.zzr(zzgas.zzu(h0Var), new zzfkf(zzfkhVar, zzfjwVar), zzcca.zzf);
        }
    }

    public static void zzd(h0 h0Var, zzfjw zzfjwVar) {
        if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            zzgbb.zzr(zzgas.zzu(h0Var), new zzfkd(zzfjwVar), zzcca.zzf);
        }
    }

    public static boolean zze(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.matches((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziD), str);
    }

    public static int zzf(zzfeq zzfeqVar) {
        int iZze = com.google.android.gms.ads.nonagon.signalgeneration.zzf.zze(zzfeqVar) - 1;
        return (iZze == 0 || iZze == 1) ? 7 : 23;
    }

    private static void zzg(h0 h0Var, zzfkh zzfkhVar, zzfjw zzfjwVar, boolean z) {
        if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            zzgbb.zzr(zzgas.zzu(h0Var), new zzfke(zzfkhVar, zzfjwVar, z), zzcca.zzf);
        }
    }
}
