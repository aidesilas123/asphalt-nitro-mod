package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzpm;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgz implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzha zze;

    zzgz(zzha zzhaVar, String str, String str2, String str3, long j) {
        this.zze = zzhaVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpm.zzc();
        if (this.zze.zza.zzg().zzs(null, zzel.zzat)) {
            String str = this.zza;
            if (str == null) {
                this.zze.zza.zzQ(this.zzb, null);
                return;
            } else {
                this.zze.zza.zzQ(this.zzb, new zziu(this.zzc, str, this.zzd));
                return;
            }
        }
        String str2 = this.zza;
        if (str2 == null) {
            this.zze.zza.zzq().zzs().zzy(this.zzb, null);
        } else {
            this.zze.zza.zzq().zzs().zzy(this.zzb, new zziu(this.zzc, str2, this.zzd));
        }
    }
}
