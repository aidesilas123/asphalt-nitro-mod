package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeaf {
    private final zzgbl zza;
    private final zzgbl zzb;
    private final zzeba zzc;
    private final zzhdj zzd;

    zzeaf(zzgbl zzgblVar, zzgbl zzgblVar2, zzeba zzebaVar, zzhdj zzhdjVar) {
        this.zza = zzgblVar;
        this.zzb = zzgblVar2;
        this.zzc = zzebaVar;
        this.zzd = zzhdjVar;
    }

    final /* synthetic */ h0 zza(zzbvi zzbviVar) throws Exception {
        return this.zzc.zza(zzbviVar, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkJ)).longValue());
    }

    final /* synthetic */ h0 zzb(zzbvi zzbviVar, int i, zzdzp zzdzpVar) throws Exception {
        return ((zzecg) this.zzd.zzb()).zzb(zzbviVar, i);
    }

    public final h0 zzc(final zzbvi zzbviVar) {
        h0 h0VarZzf;
        String str = zzbviVar.zzf;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzt.zzB(str)) {
            h0VarZzf = zzgbb.zzg(new zzdzp(1, "Ads service proxy force local"));
        } else {
            h0VarZzf = zzgbb.zzf(zzgbb.zzk(new zzgah() { // from class: com.google.android.gms.internal.ads.zzeac
                @Override // com.google.android.gms.internal.ads.zzgah
                public final h0 zza() {
                    return this.zza.zza(zzbviVar);
                }
            }, this.zza), ExecutionException.class, new zzgai() { // from class: com.google.android.gms.internal.ads.zzead
                @Override // com.google.android.gms.internal.ads.zzgai
                public final h0 zza(Object obj) {
                    ExecutionException executionException = (ExecutionException) obj;
                    Throwable cause = executionException.getCause();
                    ExecutionException cause2 = executionException;
                    if (cause != null) {
                        cause2 = executionException.getCause();
                    }
                    return zzgbb.zzg(cause2);
                }
            }, this.zzb);
        }
        final int callingUid = Binder.getCallingUid();
        return zzgbb.zzf(h0VarZzf, zzdzp.class, new zzgai() { // from class: com.google.android.gms.internal.ads.zzeae
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzb(zzbviVar, callingUid, (zzdzp) obj);
            }
        }, this.zzb);
    }
}
