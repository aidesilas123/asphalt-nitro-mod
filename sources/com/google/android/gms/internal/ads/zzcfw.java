package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcfw implements zzgq {
    private final zzgq zza;
    private final long zzb;
    private final zzgq zzc;
    private long zzd;
    private Uri zze;

    zzcfw(zzgq zzgqVar, int i, zzgq zzgqVar2) {
        this.zza = zzgqVar;
        this.zzb = i;
        this.zzc = zzgqVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzt
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        long j = this.zzd;
        long j2 = this.zzb;
        if (j < j2) {
            int iZza = this.zza.zza(bArr, i, (int) Math.min(i2, j2 - j));
            long j3 = this.zzd + ((long) iZza);
            this.zzd = j3;
            i3 = iZza;
            j = j3;
        } else {
            i3 = 0;
        }
        if (j < this.zzb) {
            return i3;
        }
        int iZza2 = this.zzc.zza(bArr, i + i3, i2 - i3);
        int i4 = i3 + iZza2;
        this.zzd += (long) iZza2;
        return i4;
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    public final long zzb(zzgv zzgvVar) throws IOException {
        zzgv zzgvVar2;
        this.zze = zzgvVar.zza;
        long j = this.zzb;
        long j2 = zzgvVar.zzf;
        zzgv zzgvVar3 = null;
        if (j2 >= j) {
            zzgvVar2 = null;
        } else {
            long j3 = zzgvVar.zzg;
            long jMin = j - j2;
            if (j3 != -1) {
                jMin = Math.min(j3, jMin);
            }
            zzgvVar2 = new zzgv(zzgvVar.zza, null, j2, j2, jMin, null, 0);
        }
        long j4 = zzgvVar.zzg;
        if (j4 == -1 || zzgvVar.zzf + j4 > this.zzb) {
            long jMax = Math.max(this.zzb, zzgvVar.zzf);
            long j5 = zzgvVar.zzg;
            zzgvVar3 = new zzgv(zzgvVar.zza, null, jMax, jMax, j5 != -1 ? Math.min(j5, (zzgvVar.zzf + j5) - this.zzb) : -1L, null, 0);
        }
        long jZzb = zzgvVar2 != null ? this.zza.zzb(zzgvVar2) : 0L;
        long jZzb2 = zzgvVar3 != null ? this.zzc.zzb(zzgvVar3) : 0L;
        this.zzd = zzgvVar.zzf;
        if (jZzb == -1 || jZzb2 == -1) {
            return -1L;
        }
        return jZzb + jZzb2;
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    public final Uri zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    public final void zzd() throws IOException {
        this.zza.zzd();
        this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    public final Map zze() {
        return zzfwx.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    public final void zzf(zzhs zzhsVar) {
    }
}
