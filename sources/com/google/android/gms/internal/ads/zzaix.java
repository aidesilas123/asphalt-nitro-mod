package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaix extends zzajh {

    @Nullable
    private zzacr zza;

    @Nullable
    private zzaiw zzb;

    zzaix() {
    }

    private static boolean zzd(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // com.google.android.gms.internal.ads.zzajh
    protected final long zza(zzfj zzfjVar) {
        if (!zzd(zzfjVar.zzI())) {
            return -1L;
        }
        int i = (zzfjVar.zzI()[2] & 255) >> 4;
        if (i == 6) {
            zzfjVar.zzH(4);
            zzfjVar.zzv();
        } else if (i == 7) {
            i = 7;
            zzfjVar.zzH(4);
            zzfjVar.zzv();
        }
        int iZza = zzacn.zza(zzfjVar, i);
        zzfjVar.zzG(0);
        return iZza;
    }

    @Override // com.google.android.gms.internal.ads.zzajh
    protected final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zza = null;
            this.zzb = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajh
    protected final boolean zzc(zzfj zzfjVar, long j, zzaje zzajeVar) {
        byte[] bArrZzI = zzfjVar.zzI();
        zzacr zzacrVar = this.zza;
        if (zzacrVar == null) {
            zzacr zzacrVar2 = new zzacr(bArrZzI, 17);
            this.zza = zzacrVar2;
            zzajeVar.zza = zzacrVar2.zzc(Arrays.copyOfRange(bArrZzI, 9, zzfjVar.zzd()), null);
            return true;
        }
        if ((bArrZzI[0] & Ascii.DEL) == 3) {
            zzacq zzacqVarZzb = zzaco.zzb(zzfjVar);
            zzacr zzacrVarZzf = zzacrVar.zzf(zzacqVarZzb);
            this.zza = zzacrVarZzf;
            this.zzb = new zzaiw(zzacrVarZzf, zzacqVarZzb);
            return true;
        }
        if (!zzd(bArrZzI)) {
            return true;
        }
        zzaiw zzaiwVar = this.zzb;
        if (zzaiwVar != null) {
            zzaiwVar.zza(j);
            zzajeVar.zzb = this.zzb;
        }
        Objects.requireNonNull(zzajeVar.zza);
        return false;
    }
}
