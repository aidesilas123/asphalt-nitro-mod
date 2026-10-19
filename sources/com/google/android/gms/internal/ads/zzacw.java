package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.EOFException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzacw {
    private final zzfj zza = new zzfj(10);

    @Nullable
    public final zzcb zza(zzacf zzacfVar, @Nullable zzafy zzafyVar) throws Throwable {
        zzcb zzcbVarZza = null;
        int i = 0;
        while (true) {
            try {
                ((zzabu) zzacfVar).zzm(this.zza.zzI(), 0, 10, false);
                this.zza.zzG(0);
                if (this.zza.zzn() != 4801587) {
                    break;
                }
                this.zza.zzH(3);
                int iZzk = this.zza.zzk();
                int i2 = iZzk + 10;
                if (zzcbVarZza == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.zza.zzI(), 0, bArr, 0, 10);
                    ((zzabu) zzacfVar).zzm(bArr, 10, iZzk, false);
                    zzcbVarZza = zzaga.zza(bArr, i2, zzafyVar, new zzafb());
                } else {
                    ((zzabu) zzacfVar).zzl(iZzk, false);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        zzacfVar.zzj();
        ((zzabu) zzacfVar).zzl(i, false);
        return zzcbVarZza;
    }
}
