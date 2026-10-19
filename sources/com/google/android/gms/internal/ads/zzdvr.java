package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzdvr extends zzbmd {
    final /* synthetic */ Object zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzfjw zzd;
    final /* synthetic */ zzccf zze;
    final /* synthetic */ zzdvs zzf;

    zzdvr(zzdvs zzdvsVar, Object obj, String str, long j, zzfjw zzfjwVar, zzccf zzccfVar) {
        this.zzf = zzdvsVar;
        this.zza = obj;
        this.zzb = str;
        this.zzc = j;
        this.zzd = zzfjwVar;
        this.zze = zzccfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final void zze(String str) {
        synchronized (this.zza) {
            this.zzf.zzv(this.zzb, false, str, (int) (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zzc));
            this.zzf.zzl.zzb(this.zzb, "error");
            this.zzf.zzo.zzb(this.zzb, "error");
            zzfkk zzfkkVar = this.zzf.zzp;
            zzfjw zzfjwVar = this.zzd;
            zzfjwVar.zzc(str);
            zzfjwVar.zzf(false);
            zzfkkVar.zzb(zzfjwVar.zzl());
            this.zze.zzc(Boolean.FALSE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final void zzf() {
        synchronized (this.zza) {
            this.zzf.zzv(this.zzb, true, "", (int) (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zzc));
            this.zzf.zzl.zzd(this.zzb);
            this.zzf.zzo.zzd(this.zzb);
            zzfkk zzfkkVar = this.zzf.zzp;
            zzfjw zzfjwVar = this.zzd;
            zzfjwVar.zzf(true);
            zzfkkVar.zzb(zzfjwVar.zzl());
            this.zze.zzc(Boolean.TRUE);
        }
    }
}
