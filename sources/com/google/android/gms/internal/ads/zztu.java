package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zztu implements zzwc {
    protected final zzwc[] zza;

    public zztu(zzwc[] zzwcVarArr) {
        this.zza = zzwcVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzwc
    public final long zzb() {
        long jMin = Long.MAX_VALUE;
        for (zzwc zzwcVar : this.zza) {
            long jZzb = zzwcVar.zzb();
            if (jZzb != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jZzb);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // com.google.android.gms.internal.ads.zzwc
    public final long zzc() {
        long jMin = Long.MAX_VALUE;
        for (zzwc zzwcVar : this.zza) {
            long jZzc = zzwcVar.zzc();
            if (jZzc != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jZzc);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // com.google.android.gms.internal.ads.zzwc
    public final void zzm(long j) {
        for (zzwc zzwcVar : this.zza) {
            zzwcVar.zzm(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwc
    public final boolean zzo(zzla zzlaVar) {
        boolean zZzo;
        boolean z = false;
        do {
            long jZzc = zzc();
            long j = Long.MIN_VALUE;
            if (jZzc == Long.MIN_VALUE) {
                break;
            }
            zzwc[] zzwcVarArr = this.zza;
            int length = zzwcVarArr.length;
            int i = 0;
            zZzo = false;
            while (i < length) {
                zzwc zzwcVar = zzwcVarArr[i];
                long jZzc2 = zzwcVar.zzc();
                boolean z2 = jZzc2 != j && jZzc2 <= zzlaVar.zza;
                if (jZzc2 == jZzc || z2) {
                    zZzo |= zzwcVar.zzo(zzlaVar);
                }
                i++;
                j = Long.MIN_VALUE;
            }
            z |= zZzo;
        } while (zZzo);
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzwc
    public final boolean zzp() {
        for (zzwc zzwcVar : this.zza) {
            if (zzwcVar.zzp()) {
                return true;
            }
        }
        return false;
    }
}
