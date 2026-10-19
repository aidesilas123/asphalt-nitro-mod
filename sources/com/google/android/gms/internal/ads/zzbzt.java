package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzbzt {

    @GuardedBy("ScionComponent.class")
    @VisibleForTesting
    static zzbzt zza;

    public static synchronized zzbzt zzd(Context context) {
        zzbzt zzbztVar = zza;
        if (zzbztVar != null) {
            return zzbztVar;
        }
        Context applicationContext = context.getApplicationContext();
        zzbdc.zza(applicationContext);
        com.google.android.gms.ads.internal.util.zzg zzgVarZzi = com.google.android.gms.ads.internal.zzt.zzo().zzi();
        zzgVarZzi.zzr(applicationContext);
        zzbyx zzbyxVar = new zzbyx(null);
        zzbyxVar.zzb(applicationContext);
        zzbyxVar.zzc(com.google.android.gms.ads.internal.zzt.zzB());
        zzbyxVar.zza(zzgVarZzi);
        zzbyxVar.zzd(com.google.android.gms.ads.internal.zzt.zzn());
        zzbzt zzbztVarZze = zzbyxVar.zze();
        zza = zzbztVarZze;
        zzbztVarZze.zza().zza();
        zza.zzb().zzc();
        zzbzx zzbzxVarZzc = zza.zzc();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaq)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzp();
            Map mapZzu = com.google.android.gms.ads.internal.util.zzt.zzu((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzas));
            Iterator it = mapZzu.keySet().iterator();
            while (it.hasNext()) {
                zzbzxVarZzc.zzc((String) it.next());
            }
            zzbzxVarZzc.zzd(new zzbzv(zzbzxVarZzc, mapZzu));
        }
        return zza;
    }

    abstract zzbyq zza();

    abstract zzbyu zzb();

    abstract zzbzx zzc();
}
