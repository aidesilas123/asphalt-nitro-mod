package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzdyp implements zzgax {
    final /* synthetic */ zzdyq zza;

    zzdyp(zzdyq zzdyqVar) {
        this.zza = zzdyqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgi)).booleanValue()) {
            Matcher matcher = zzdyq.zza.matcher(th.getMessage());
            if (matcher.matches()) {
                this.zza.zzf.zzi(Integer.parseInt(matcher.group(1)));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfeh zzfehVar = (zzfeh) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgi)).booleanValue()) {
            this.zza.zzf.zzi(zzfehVar.zzb.zzb.zze);
            this.zza.zzf.zzj(zzfehVar.zzb.zzb.zzf);
        }
    }
}
