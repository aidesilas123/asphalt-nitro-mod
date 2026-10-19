package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzekc implements zzegb {
    private final Context zza;
    private final Executor zzb;
    private final zzdqd zzc;

    public zzekc(Context context, Executor executor, zzdqd zzdqdVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzdqdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final /* bridge */ /* synthetic */ Object zza(zzfeh zzfehVar, zzfdu zzfduVar, final zzefy zzefyVar) throws zzejt, zzfev {
        zzdpz zzdpzVarZze = this.zzc.zze(new zzcuh(zzfehVar, zzfduVar, zzefyVar.zza), new zzdqa(new zzdig() { // from class: com.google.android.gms.internal.ads.zzekb
            @Override // com.google.android.gms.internal.ads.zzdig
            public final void zza(boolean z, Context context, zzcyu zzcyuVar) throws zzdif {
                zzefy zzefyVar2 = zzefyVar;
                try {
                    ((zzffm) zzefyVar2.zzb).zzv(z);
                    ((zzffm) zzefyVar2.zzb).zzz(context);
                } catch (zzfev e2) {
                    throw new zzdif(e2.getCause());
                }
            }
        }));
        zzdpzVarZze.zzd().zzo(new zzcpf((zzffm) zzefyVar.zzb), this.zzb);
        ((zzehr) zzefyVar.zzc).zzc(zzdpzVarZze.zzm());
        return zzdpzVarZze.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final void zzb(zzfeh zzfehVar, zzfdu zzfduVar, zzefy zzefyVar) throws zzfev {
        try {
            zzfeq zzfeqVar = zzfehVar.zza.zza;
            if (zzfeqVar.zzo.zza == 3) {
                ((zzffm) zzefyVar.zzb).zzr(this.zza, zzfeqVar.zzd, zzfduVar.zzw.toString(), (zzbpx) zzefyVar.zzc);
            } else {
                ((zzffm) zzefyVar.zzb).zzq(this.zza, zzfeqVar.zzd, zzfduVar.zzw.toString(), (zzbpx) zzefyVar.zzc);
            }
        } catch (Exception e2) {
            zzcbn.zzk("Fail to load ad from adapter ".concat(String.valueOf(zzefyVar.zza)), e2);
        }
    }
}
