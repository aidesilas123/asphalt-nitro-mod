package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbnw implements zzcch {
    final /* synthetic */ zzbof zza;
    final /* synthetic */ zzfjw zzb;
    final /* synthetic */ zzbog zzc;

    zzbnw(zzbog zzbogVar, zzbof zzbofVar, zzfjw zzfjwVar) {
        this.zzc = zzbogVar;
        this.zza = zzbofVar;
        this.zzb = zzfjwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcch
    public final void zza() {
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (failure): Trying to acquire lock");
        synchronized (this.zzc.zza) {
            com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (failure): Lock acquired");
            this.zzc.zzi = 1;
            com.google.android.gms.ads.internal.util.zze.zza("Failed loading new engine. Marking new engine destroyable.");
            this.zza.zzb();
            if (((Boolean) zzbeo.zzd.zze()).booleanValue()) {
                zzbog zzbogVar = this.zzc;
                if (zzbogVar.zze != null) {
                    zzfkk zzfkkVar = zzbogVar.zze;
                    zzfjw zzfjwVar = this.zzb;
                    zzfjwVar.zzc("Failed loading new engine");
                    zzfjwVar.zzf(false);
                    zzfkkVar.zzb(zzfjwVar.zzl());
                }
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (failure): Lock released");
    }
}
