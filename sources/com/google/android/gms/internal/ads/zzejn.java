package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzejn implements zzgax {
    final /* synthetic */ long zza;
    final /* synthetic */ zzfdy zzb;
    final /* synthetic */ zzfdu zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzfkw zze;
    final /* synthetic */ zzfeh zzf;
    final /* synthetic */ zzejp zzg;

    zzejn(zzejp zzejpVar, long j, zzfdy zzfdyVar, zzfdu zzfduVar, String str, zzfkw zzfkwVar, zzfeh zzfehVar) {
        this.zzg = zzejpVar;
        this.zza = j;
        this.zzb = zzfdyVar;
        this.zzc = zzfduVar;
        this.zzd = str;
        this.zze = zzfkwVar;
        this.zzf = zzfehVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0066 A[PHI: r5
      0x0066: PHI (r5v1 int) = (r5v0 int), (r5v2 int), (r5v2 int), (r5v2 int) binds: [B:15:0x0035, B:20:0x0050, B:22:0x0054, B:24:0x005d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzgax
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(java.lang.Throwable r17) {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzejn.zza(java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zzb(Object obj) {
        long jElapsedRealtime = this.zzg.zza.elapsedRealtime() - this.zza;
        synchronized (this.zzg) {
            zzejp zzejpVar = this.zzg;
            if (zzejpVar.zze) {
                zzejpVar.zzb.zza(this.zzb, this.zzc, 0, null, jElapsedRealtime);
            }
            zzejp zzejpVar2 = this.zzg;
            if (zzejpVar2.zzg) {
                return;
            }
            if (zzejpVar2.zzq(this.zzc)) {
                ((zzejo) this.zzg.zzd.get(this.zzc)).zzd = jElapsedRealtime;
            } else {
                LinkedHashMap linkedHashMap = this.zzg.zzd;
                zzfdu zzfduVar = this.zzc;
                linkedHashMap.put(zzfduVar, new zzejo(this.zzd, zzfduVar.zzag, 0, jElapsedRealtime, null));
            }
            this.zzg.zzf.zzg(this.zzc, jElapsedRealtime, null);
        }
    }
}
