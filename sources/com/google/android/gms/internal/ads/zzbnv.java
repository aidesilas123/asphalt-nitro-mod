package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbnv implements zzccj {
    final /* synthetic */ zzbof zza;
    final /* synthetic */ zzfjw zzb;
    final /* synthetic */ zzbog zzc;

    zzbnv(zzbog zzbogVar, zzbof zzbofVar, zzfjw zzfjwVar) {
        this.zzc = zzbogVar;
        this.zza = zzbofVar;
        this.zzb = zzfjwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzccj
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (success): Trying to acquire lock");
        synchronized (this.zzc.zza) {
            com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (success): Lock acquired");
            this.zzc.zzi = 0;
            zzbog zzbogVar = this.zzc;
            if (zzbogVar.zzh != null && this.zza != zzbogVar.zzh) {
                com.google.android.gms.ads.internal.util.zze.zza("New JS engine is loaded, marking previous one as destroyable.");
                this.zzc.zzh.zzb();
            }
            this.zzc.zzh = this.zza;
            if (((Boolean) zzbeo.zzd.zze()).booleanValue()) {
                zzbog zzbogVar2 = this.zzc;
                if (zzbogVar2.zze != null) {
                    zzfkk zzfkkVar = zzbogVar2.zze;
                    zzfjw zzfjwVar = this.zzb;
                    zzfjwVar.zzf(true);
                    zzfkkVar.zzb(zzfjwVar.zzl());
                }
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (success): Lock released");
    }
}
