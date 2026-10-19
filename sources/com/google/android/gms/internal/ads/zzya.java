package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzya {
    private final String[] zza;
    private final int[] zzb;
    private final zzwl[] zzc;
    private final int[] zzd;
    private final int[][][] zze;
    private final zzwl zzf;

    @VisibleForTesting
    zzya(String[] strArr, int[] iArr, zzwl[] zzwlVarArr, int[] iArr2, int[][][] iArr3, zzwl zzwlVar) {
        this.zza = strArr;
        this.zzb = iArr;
        this.zzc = zzwlVarArr;
        this.zze = iArr3;
        this.zzd = iArr2;
        this.zzf = zzwlVar;
    }

    public final int zza(int i, int i2, boolean z) {
        int i3 = this.zzc[i].zzb(i2).zzb;
        int[] iArr = new int[1];
        int i4 = 0;
        int i5 = 0;
        for (char c = 0; c <= 0; c = 1) {
            if ((this.zze[i][i2][0] & 7) == 4) {
                iArr[i5] = 0;
                i5++;
            }
        }
        int[] iArrCopyOf = Arrays.copyOf(iArr, i5);
        String str = null;
        boolean z2 = false;
        int i6 = 0;
        int iMin = 16;
        while (i4 < iArrCopyOf.length) {
            String str2 = this.zzc[i].zzb(i2).zzb(iArrCopyOf[i4]).zzm;
            int i7 = i6 + 1;
            if (i6 == 0) {
                str = str2;
            } else {
                z2 |= !zzfs.zzF(str, str2);
            }
            iMin = Math.min(iMin, this.zze[i][i2][i4] & 24);
            i4++;
            i6 = i7;
        }
        return z2 ? Math.min(iMin, this.zzd[i]) : iMin;
    }

    public final int zzb(int i, int i2, int i3) {
        return this.zze[i][i2][i3];
    }

    public final int zzc(int i) {
        return this.zzb[i];
    }

    public final zzwl zzd(int i) {
        return this.zzc[i];
    }

    public final zzwl zze() {
        return this.zzf;
    }
}
