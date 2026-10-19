package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzegk implements zzegb {
    private final Context zza;
    private final zzcrd zzb;
    private final Executor zzc;

    zzegk(Context context, zzcrd zzcrdVar, Executor executor) {
        this.zza = context;
        this.zzb = zzcrdVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final /* bridge */ /* synthetic */ Object zza(zzfeh zzfehVar, zzfdu zzfduVar, final zzefy zzefyVar) throws zzejt, zzfev {
        zzcra zzcraVarZza = this.zzb.zza(new zzcuh(zzfehVar, zzfduVar, zzefyVar.zza), new zzdhb(new zzdig() { // from class: com.google.android.gms.internal.ads.zzegj
            @Override // com.google.android.gms.internal.ads.zzdig
            public final void zza(boolean z, Context context, zzcyu zzcyuVar) throws zzdif {
                zzefy zzefyVar2 = zzefyVar;
                try {
                    ((zzffm) zzefyVar2.zzb).zzv(z);
                    ((zzffm) zzefyVar2.zzb).zzw(context);
                } catch (zzfev e2) {
                    throw new zzdif(e2.getCause());
                }
            }
        }, null), new zzcrb(zzfduVar.zzab));
        zzcraVarZza.zzd().zzo(new zzcpf((zzffm) zzefyVar.zzb), this.zzc);
        ((zzehr) zzefyVar.zzc).zzc(zzcraVarZza.zzj());
        return zzcraVarZza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final void zzb(zzfeh zzfehVar, zzfdu zzfduVar, zzefy zzefyVar) throws zzfev {
        zzffm zzffmVar = (zzffm) zzefyVar.zzb;
        zzfeq zzfeqVar = zzfehVar.zza.zza;
        zzffmVar.zzl(this.zza, zzfeqVar.zzd, zzfduVar.zzw.toString(), (zzbpx) zzefyVar.zzc);
    }
}
