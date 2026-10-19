package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzda {
    public static final zzda zza = new zzcv();
    private static final String zzc = Integer.toString(0, 36);
    private static final String zzd = Integer.toString(1, 36);
    private static final String zze = Integer.toString(2, 36);
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzcu
    };

    protected zzda() {
    }

    public final boolean equals(@Nullable Object obj) {
        int iZzh;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzda)) {
            return false;
        }
        zzda zzdaVar = (zzda) obj;
        if (zzdaVar.zzc() == zzc() && zzdaVar.zzb() == zzb()) {
            zzcz zzczVar = new zzcz();
            zzcx zzcxVar = new zzcx();
            zzcz zzczVar2 = new zzcz();
            zzcx zzcxVar2 = new zzcx();
            for (int i = 0; i < zzc(); i++) {
                if (!zze(i, zzczVar, 0L).equals(zzdaVar.zze(i, zzczVar2, 0L))) {
                    return false;
                }
            }
            for (int i2 = 0; i2 < zzb(); i2++) {
                if (!zzd(i2, zzcxVar, true).equals(zzdaVar.zzd(i2, zzcxVar2, true))) {
                    return false;
                }
            }
            int iZzg = zzg(true);
            if (iZzg == zzdaVar.zzg(true) && (iZzh = zzh(true)) == zzdaVar.zzh(true)) {
                while (iZzg != iZzh) {
                    int iZzj = zzj(iZzg, 0, true);
                    if (iZzj != zzdaVar.zzj(iZzg, 0, true)) {
                        return false;
                    }
                    iZzg = iZzj;
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        zzcz zzczVar = new zzcz();
        zzcx zzcxVar = new zzcx();
        int iZzc = zzc() + 217;
        int i2 = 0;
        while (true) {
            i = iZzc * 31;
            if (i2 >= zzc()) {
                break;
            }
            iZzc = i + zze(i2, zzczVar, 0L).hashCode();
            i2++;
        }
        int iZzb = i + zzb();
        for (int i3 = 0; i3 < zzb(); i3++) {
            iZzb = (iZzb * 31) + zzd(i3, zzcxVar, true).hashCode();
        }
        int iZzg = zzg(true);
        while (iZzg != -1) {
            iZzb = (iZzb * 31) + iZzg;
            iZzg = zzj(iZzg, 0, true);
        }
        return iZzb;
    }

    public abstract int zza(Object obj);

    public abstract int zzb();

    public abstract int zzc();

    public abstract zzcx zzd(int i, zzcx zzcxVar, boolean z);

    public abstract zzcz zze(int i, zzcz zzczVar, long j);

    public abstract Object zzf(int i);

    public int zzg(boolean z) {
        return zzo() ? -1 : 0;
    }

    public int zzh(boolean z) {
        if (zzo()) {
            return -1;
        }
        return zzc() - 1;
    }

    public final int zzi(int i, zzcx zzcxVar, zzcz zzczVar, int i2, boolean z) {
        int i3 = zzd(i, zzcxVar, false).zzd;
        if (zze(i3, zzczVar, 0L).zzq != i) {
            return i + 1;
        }
        int iZzj = zzj(i3, i2, z);
        if (iZzj == -1) {
            return -1;
        }
        return zze(iZzj, zzczVar, 0L).zzp;
    }

    public int zzj(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == zzh(z)) {
                return -1;
            }
            return i + 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == zzh(z) ? zzg(z) : i + 1;
        }
        throw new IllegalStateException();
    }

    public int zzk(int i, int i2, boolean z) {
        if (i == zzg(false)) {
            return -1;
        }
        return i - 1;
    }

    public final Pair zzl(zzcz zzczVar, zzcx zzcxVar, int i, long j) {
        Pair pairZzm = zzm(zzczVar, zzcxVar, i, j, 0L);
        Objects.requireNonNull(pairZzm);
        return pairZzm;
    }

    @Nullable
    public final Pair zzm(zzcz zzczVar, zzcx zzcxVar, int i, long j, long j2) {
        zzef.zza(i, 0, zzc());
        zze(i, zzczVar, j2);
        if (j == C.TIME_UNSET) {
            long j3 = zzczVar.zzn;
            j = 0;
        }
        int i2 = zzczVar.zzp;
        zzd(i2, zzcxVar, false);
        while (i2 < zzczVar.zzq) {
            long j4 = zzcxVar.zzf;
            if (j == 0) {
                break;
            }
            int i3 = i2 + 1;
            long j5 = zzd(i3, zzcxVar, false).zzf;
            if (j < 0) {
                break;
            }
            i2 = i3;
        }
        zzd(i2, zzcxVar, true);
        long j6 = zzcxVar.zzf;
        long j7 = zzcxVar.zze;
        if (j7 != C.TIME_UNSET) {
            j = Math.min(j, j7 - 1);
        }
        long jMax = Math.max(0L, j);
        Object obj = zzcxVar.zzc;
        Objects.requireNonNull(obj);
        return Pair.create(obj, Long.valueOf(jMax));
    }

    public zzcx zzn(Object obj, zzcx zzcxVar) {
        return zzd(zza(obj), zzcxVar, true);
    }

    public final boolean zzo() {
        return zzc() == 0;
    }
}
