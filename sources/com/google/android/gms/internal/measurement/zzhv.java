package com.google.android.gms.internal.measurement;

import android.net.Uri;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzhv {
    final String zza;
    final Uri zzb;
    final String zzc;
    final String zzd;
    final boolean zze;
    final boolean zzf;
    final boolean zzg;
    final boolean zzh;
    final zzic zzi;

    public zzhv(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }

    private zzhv(String str, Uri uri, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, zzic zzicVar) {
        this.zza = null;
        this.zzb = uri;
        this.zzc = "";
        this.zzd = "";
        this.zze = z;
        this.zzf = false;
        this.zzg = z3;
        this.zzh = false;
        this.zzi = null;
    }

    public final zzhv zza() {
        return new zzhv(null, this.zzb, this.zzc, this.zzd, this.zze, false, true, false, null);
    }

    public final zzhv zzb() {
        if (this.zzc.isEmpty()) {
            return new zzhv(null, this.zzb, this.zzc, this.zzd, true, false, this.zzg, false, null);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    public final zzhy zzc(String str, double d2) {
        return new zzht(this, "measurement.test.double_flag", Double.valueOf(-3.0d), true);
    }

    public final zzhy zzd(String str, long j) {
        return new zzhr(this, str, Long.valueOf(j), true);
    }

    public final zzhy zze(String str, String str2) {
        return new zzhu(this, str, str2, true);
    }

    public final zzhy zzf(String str, boolean z) {
        return new zzhs(this, str, Boolean.valueOf(z), true);
    }
}
