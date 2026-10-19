package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcxl {
    private final zzfiu zza;
    private final zzcbt zzb;
    private final ApplicationInfo zzc;
    private final String zzd;
    private final List zze;
    private final PackageInfo zzf;
    private final zzhdj zzg;
    private final String zzh;
    private final zzevb zzi;
    private final com.google.android.gms.ads.internal.util.zzg zzj;
    private final zzfeq zzk;
    private final zzddq zzl;

    public zzcxl(zzfiu zzfiuVar, zzcbt zzcbtVar, ApplicationInfo applicationInfo, String str, List list, @Nullable PackageInfo packageInfo, zzhdj zzhdjVar, com.google.android.gms.ads.internal.util.zzg zzgVar, String str2, zzevb zzevbVar, zzfeq zzfeqVar, zzddq zzddqVar) {
        this.zza = zzfiuVar;
        this.zzb = zzcbtVar;
        this.zzc = applicationInfo;
        this.zzd = str;
        this.zze = list;
        this.zzf = packageInfo;
        this.zzg = zzhdjVar;
        this.zzh = str2;
        this.zzi = zzevbVar;
        this.zzj = zzgVar;
        this.zzk = zzfeqVar;
        this.zzl = zzddqVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzbwa zza(h0 h0Var) throws Exception {
        Bundle bundle = (Bundle) h0Var.get();
        String str = (String) ((h0) this.zzg.zzb()).get();
        boolean z = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhh)).booleanValue() && this.zzj.zzQ();
        String str2 = this.zzh;
        PackageInfo packageInfo = this.zzf;
        List list = this.zze;
        return new zzbwa(bundle, this.zzb, this.zzc, this.zzd, list, packageInfo, str, str2, null, null, z, this.zzk.zzb());
    }

    public final h0 zzb() {
        this.zzl.zza();
        return zzfie.zzc(this.zzi.zza(new Bundle()), zzfio.SIGNALS, this.zza).zza();
    }

    public final h0 zzc() {
        final h0 h0VarZzb = zzb();
        return this.zza.zza(zzfio.REQUEST_PARCEL, h0VarZzb, (h0) this.zzg.zzb()).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzcxk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zza(h0VarZzb);
            }
        }).zza();
    }
}
