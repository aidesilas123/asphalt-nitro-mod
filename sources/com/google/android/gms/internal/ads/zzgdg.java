package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgdg {
    private final Object zza;
    private final Object zzb;
    private final byte[] zzc;
    private final zzgss zzd;
    private final int zze;
    private final String zzf;
    private final zzgcp zzg;
    private final int zzh;

    zzgdg(Object obj, Object obj2, byte[] bArr, int i, zzgss zzgssVar, int i2, String str, zzgcp zzgcpVar) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = Arrays.copyOf(bArr, bArr.length);
        this.zzh = i;
        this.zzd = zzgssVar;
        this.zze = i2;
        this.zzf = str;
        this.zzg = zzgcpVar;
    }

    public final int zza() {
        return this.zze;
    }

    public final zzgcp zzb() {
        return this.zzg;
    }

    public final zzgss zzc() {
        return this.zzd;
    }

    public final Object zzd() {
        return this.zza;
    }

    public final Object zze() {
        return this.zzb;
    }

    public final String zzf() {
        return this.zzf;
    }

    public final byte[] zzg() {
        byte[] bArr = this.zzc;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    public final int zzh() {
        return this.zzh;
    }
}
