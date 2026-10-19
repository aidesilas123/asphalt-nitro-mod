package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcx {

    @Nullable
    public Object zzb;

    @Nullable
    public Object zzc;
    public int zzd;
    public long zze;
    public long zzf;
    public boolean zzg;
    private zzd zzm = zzd.zza;
    private static final String zzh = Integer.toString(0, 36);
    private static final String zzi = Integer.toString(1, 36);
    private static final String zzj = Integer.toString(2, 36);
    private static final String zzk = Integer.toString(3, 36);
    private static final String zzl = Integer.toString(4, 36);
    public static final zzn zza = new zzn() { // from class: com.google.android.gms.internal.ads.zzcw
    };

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzcx.class.equals(obj.getClass())) {
            zzcx zzcxVar = (zzcx) obj;
            if (zzfs.zzF(this.zzb, zzcxVar.zzb) && zzfs.zzF(this.zzc, zzcxVar.zzc) && this.zzd == zzcxVar.zzd && this.zze == zzcxVar.zze && this.zzg == zzcxVar.zzg && zzfs.zzF(this.zzm, zzcxVar.zzm)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.zzb;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.zzc;
        int iHashCode2 = ((((iHashCode + 217) * 31) + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.zzd;
        long j = this.zze;
        return (((((iHashCode2 * 31) + ((int) (j ^ (j >>> 32)))) * 961) + (this.zzg ? 1 : 0)) * 31) + this.zzm.hashCode();
    }

    public final int zza(int i) {
        return this.zzm.zza(i).zzc;
    }

    public final int zzb() {
        int i = this.zzm.zzc;
        return 0;
    }

    public final int zzc(long j) {
        long j2 = this.zze;
        if (j == Long.MIN_VALUE || j2 == C.TIME_UNSET) {
            return -1;
        }
        int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
        return -1;
    }

    public final int zzd(long j) {
        this.zzm.zzb(-1);
        return -1;
    }

    public final int zze(int i) {
        return this.zzm.zza(i).zza(-1);
    }

    public final int zzf(int i, int i2) {
        return this.zzm.zza(i).zza(i2);
    }

    public final int zzg() {
        int i = this.zzm.zze;
        return 0;
    }

    public final long zzh(int i, int i2) {
        zzc zzcVarZza = this.zzm.zza(i);
        return zzcVarZza.zzc != -1 ? zzcVarZza.zzf[i2] : C.TIME_UNSET;
    }

    public final long zzi(int i) {
        long j = this.zzm.zza(i).zzb;
        return 0L;
    }

    public final long zzj() {
        long j = this.zzm.zzd;
        return 0L;
    }

    public final long zzk(int i) {
        long j = this.zzm.zza(i).zzg;
        return 0L;
    }

    public final zzcx zzl(@Nullable Object obj, @Nullable Object obj2, int i, long j, long j2, zzd zzdVar, boolean z) {
        this.zzb = obj;
        this.zzc = obj2;
        this.zzd = i;
        this.zze = j;
        this.zzf = 0L;
        this.zzm = zzdVar;
        this.zzg = z;
        return this;
    }

    public final boolean zzm(int i) {
        zzb();
        if (i != -1) {
            return false;
        }
        this.zzm.zzb(-1);
        return false;
    }

    public final boolean zzn(int i) {
        boolean z = this.zzm.zza(i).zzh;
        return false;
    }
}
