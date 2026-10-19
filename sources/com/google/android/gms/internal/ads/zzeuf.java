package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeuf implements zzeuy {
    private final String zza;
    private final zzgbl zzb;
    private final ScheduledExecutorService zzc;
    private final Context zzd;
    private final zzfeq zze;
    private final zzciq zzf;

    zzeuf(zzgbl zzgblVar, ScheduledExecutorService scheduledExecutorService, String str, Context context, zzfeq zzfeqVar, zzciq zzciqVar) {
        this.zzb = zzgblVar;
        this.zzc = scheduledExecutorService;
        this.zza = str;
        this.zzd = context;
        this.zze = zzfeqVar;
        this.zzf = zzciqVar;
    }

    public static /* synthetic */ h0 zzc(zzeuf zzeufVar) {
        String strName = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhf)).booleanValue() ? AdFormat.UNKNOWN.name() : zzeufVar.zza;
        com.google.android.gms.ads.nonagon.signalgeneration.zzg zzgVarZzo = zzeufVar.zzf.zzo();
        zzcxp zzcxpVar = new zzcxp();
        zzcxpVar.zze(zzeufVar.zzd);
        zzfeo zzfeoVar = new zzfeo();
        zzfeoVar.zzs("adUnitId");
        zzfeoVar.zzE(zzeufVar.zze.zzd);
        zzfeoVar.zzr(new com.google.android.gms.ads.internal.client.zzq());
        zzfeoVar.zzx(true);
        zzcxpVar.zzi(zzfeoVar.zzG());
        zzgVarZzo.zza(zzcxpVar.zzj());
        com.google.android.gms.ads.nonagon.signalgeneration.zzac zzacVar = new com.google.android.gms.ads.nonagon.signalgeneration.zzac();
        zzacVar.zza(strName);
        zzgVarZzo.zzb(zzacVar.zzb());
        new zzddw();
        return zzgbb.zze(zzgbb.zzm((zzgas) zzgbb.zzo(zzgas.zzu(zzgVarZzo.zzc().zzc()), ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhg)).longValue(), TimeUnit.MILLISECONDS, zzeufVar.zzc), new zzftn() { // from class: com.google.android.gms.internal.ads.zzeuc
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                com.google.android.gms.ads.nonagon.signalgeneration.zzam zzamVar = (com.google.android.gms.ads.nonagon.signalgeneration.zzam) obj;
                return zzamVar != null ? new zzeug(zzamVar.zza) : new zzeug(null);
            }
        }, zzeufVar.zzb), Exception.class, new zzftn() { // from class: com.google.android.gms.internal.ads.zzeud
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                zzcbn.zzh("", (Exception) obj);
                return new zzeug(null);
            }
        }, zzeufVar.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 33;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        return (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhe)).booleanValue() || this.zze.zzq) ? zzgbb.zzh(new zzeug(null)) : zzgbb.zzk(new zzgah() { // from class: com.google.android.gms.internal.ads.zzeue
            @Override // com.google.android.gms.internal.ads.zzgah
            public final h0 zza() {
                return zzeuf.zzc(this.zza);
            }
        }, this.zzb);
    }
}
