package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcqy {
    private final zzfje zza;
    private final zzdtp zzb;
    private final zzfeh zzc;

    public zzcqy(zzdtp zzdtpVar, zzfeh zzfehVar, zzfje zzfjeVar) {
        this.zza = zzfjeVar;
        this.zzb = zzdtpVar;
        this.zzc = zzfehVar;
    }

    private static String zzb(int i) {
        int i2 = i - 1;
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "u" : "ac" : "cb" : "cc" : "bb" : "h";
    }

    public final void zza(long j, int i) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziv)).booleanValue()) {
            zzfje zzfjeVar = this.zza;
            zzfeh zzfehVar = this.zzc;
            zzfjd zzfjdVarZzb = zzfjd.zzb("ad_closed");
            zzfjdVarZzb.zzg(zzfehVar.zzb.zzb);
            zzfjdVarZzb.zza("show_time", String.valueOf(j));
            zzfjdVarZzb.zza("ad_format", "app_open_ad");
            zzfjdVarZzb.zza("acr", zzb(i));
            zzfjeVar.zzb(zzfjdVarZzb);
            return;
        }
        zzdtp zzdtpVar = this.zzb;
        zzfeh zzfehVar2 = this.zzc;
        zzdto zzdtoVarZza = zzdtpVar.zza();
        zzdtoVarZza.zze(zzfehVar2.zzb.zzb);
        zzdtoVarZza.zzb("action", "ad_closed");
        zzdtoVarZza.zzb("show_time", String.valueOf(j));
        zzdtoVarZza.zzb("ad_format", "app_open_ad");
        zzdtoVarZza.zzb("acr", zzb(i));
        zzdtoVarZza.zzg();
    }
}
