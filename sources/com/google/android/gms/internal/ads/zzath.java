package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzath implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ zzatj zzb;

    zzath(zzatj zzatjVar, int i, boolean z) {
        this.zzb = zzatjVar;
        this.zza = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaqd zzaqdVarZza;
        int i = this.zza;
        zzatj zzatjVar = this.zzb;
        if (i > 0) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException unused) {
            }
        }
        try {
            PackageInfo packageInfo = zzatjVar.zza.getPackageManager().getPackageInfo(zzatjVar.zza.getPackageName(), 0);
            Context context = zzatjVar.zza;
            zzaqdVarZza = zzfob.zza(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable unused2) {
            zzaqdVarZza = null;
        }
        this.zzb.zzm = zzaqdVarZza;
        if (this.zza < 4) {
            if (zzaqdVarZza != null && zzaqdVarZza.zzaj() && !zzaqdVarZza.zzh().equals("0000000000000000000000000000000000000000000000000000000000000000") && zzaqdVarZza.zzak() && zzaqdVarZza.zzf().zze() && zzaqdVarZza.zzf().zza() != -2) {
                return;
            }
            this.zzb.zzo(this.zza + 1, true);
        }
    }
}
