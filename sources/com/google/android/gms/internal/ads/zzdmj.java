package com.google.android.gms.internal.ads;

import androidx.collection.ArrayMap;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdmj implements zzczb {
    private final zzdkk zza;
    private final zzdkp zzb;
    private final Executor zzc;
    private final Executor zzd;

    public zzdmj(zzdkk zzdkkVar, zzdkp zzdkpVar, Executor executor, Executor executor2) {
        this.zza = zzdkkVar;
        this.zzb = zzdkpVar;
        this.zzc = executor;
        this.zzd = executor2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(final zzcgv zzcgvVar) {
        this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdmh
            @Override // java.lang.Runnable
            public final void run() {
                zzcgvVar.zzd("onSdkImpression", new ArrayMap());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzczb
    public final void zzq() {
        if (this.zzb.zzd()) {
            zzdkk zzdkkVar = this.zza;
            zzflf zzflfVarZzu = zzdkkVar.zzu();
            if (zzflfVarZzu == null && zzdkkVar.zzw() != null && ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeZ)).booleanValue()) {
                zzdkk zzdkkVar2 = this.zza;
                h0 h0VarZzw = zzdkkVar2.zzw();
                zzccf zzccfVarZzp = zzdkkVar2.zzp();
                if (h0VarZzw == null || zzccfVarZzp == null) {
                    return;
                }
                zzgbb.zzr(zzgbb.zzl(h0VarZzw, zzccfVarZzp), new zzdmi(this), this.zzd);
                return;
            }
            if (zzflfVarZzu != null) {
                zzdkk zzdkkVar3 = this.zza;
                zzcgv zzcgvVarZzr = zzdkkVar3.zzr();
                zzcgv zzcgvVarZzs = zzdkkVar3.zzs();
                if (zzcgvVarZzr == null) {
                    zzcgvVarZzr = zzcgvVarZzs != null ? zzcgvVarZzs : null;
                }
                if (zzcgvVarZzr != null) {
                    zzb(zzcgvVarZzr);
                }
            }
        }
    }
}
