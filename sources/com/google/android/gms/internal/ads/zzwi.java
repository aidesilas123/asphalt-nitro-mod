package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzwi implements zzui, zzuh {
    private final zzui zza;
    private final long zzb;
    private zzuh zzc;

    public zzwi(zzui zzuiVar, long j) {
        this.zza = zzuiVar;
        this.zzb = j;
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final long zza(long j, zzmd zzmdVar) {
        long j2 = this.zzb;
        return this.zza.zza(j - j2, zzmdVar) + j2;
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final long zzb() {
        long jZzb = this.zza.zzb();
        if (jZzb == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return jZzb + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final long zzc() {
        long jZzc = this.zza.zzc();
        if (jZzc == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return jZzc + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final long zzd() {
        long jZzd = this.zza.zzd();
        return jZzd == C.TIME_UNSET ? C.TIME_UNSET : jZzd + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final long zze(long j) {
        long j2 = this.zzb;
        return this.zza.zze(j - j2) + j2;
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final /* bridge */ /* synthetic */ void zzf(zzwc zzwcVar) {
        zzuh zzuhVar = this.zzc;
        Objects.requireNonNull(zzuhVar);
        zzuhVar.zzf(this);
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final long zzg(zzxy[] zzxyVarArr, boolean[] zArr, zzwa[] zzwaVarArr, boolean[] zArr2, long j) {
        zzwa[] zzwaVarArr2 = new zzwa[zzwaVarArr.length];
        int i = 0;
        while (true) {
            zzwa zzwaVarZzc = null;
            if (i >= zzwaVarArr.length) {
                break;
            }
            zzwh zzwhVar = (zzwh) zzwaVarArr[i];
            if (zzwhVar != null) {
                zzwaVarZzc = zzwhVar.zzc();
            }
            zzwaVarArr2[i] = zzwaVarZzc;
            i++;
        }
        long jZzg = this.zza.zzg(zzxyVarArr, zArr, zzwaVarArr2, zArr2, j - this.zzb);
        for (int i2 = 0; i2 < zzwaVarArr.length; i2++) {
            zzwa zzwaVar = zzwaVarArr2[i2];
            if (zzwaVar == null) {
                zzwaVarArr[i2] = null;
            } else {
                zzwa zzwaVar2 = zzwaVarArr[i2];
                if (zzwaVar2 == null || ((zzwh) zzwaVar2).zzc() != zzwaVar) {
                    zzwaVarArr[i2] = new zzwh(zzwaVar, this.zzb);
                }
            }
        }
        return jZzg + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzuh
    public final void zzh(zzui zzuiVar) {
        zzuh zzuhVar = this.zzc;
        Objects.requireNonNull(zzuhVar);
        zzuhVar.zzh(this);
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final zzwl zzi() {
        return this.zza.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final void zzj(long j, boolean z) {
        this.zza.zzj(j - this.zzb, false);
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final void zzk() throws IOException {
        this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final void zzl(zzuh zzuhVar, long j) {
        this.zzc = zzuhVar;
        this.zza.zzl(this, j - this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final void zzm(long j) {
        this.zza.zzm(j - this.zzb);
    }

    public final zzui zzn() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final boolean zzo(zzla zzlaVar) {
        long j = zzlaVar.zza;
        long j2 = this.zzb;
        zzky zzkyVarZza = zzlaVar.zza();
        zzkyVarZza.zze(j - j2);
        return this.zza.zzo(zzkyVarZza.zzg());
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final boolean zzp() {
        return this.zza.zzp();
    }
}
