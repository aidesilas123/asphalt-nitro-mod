package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeic implements zzegb {
    private final Context zza;
    private final zzdhy zzb;
    private final zzcbt zzc;
    private final Executor zzd;

    public zzeic(Context context, zzcbt zzcbtVar, zzdhy zzdhyVar, Executor executor) {
        this.zza = context;
        this.zzc = zzcbtVar;
        this.zzb = zzdhyVar;
        this.zzd = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final /* bridge */ /* synthetic */ Object zza(zzfeh zzfehVar, zzfdu zzfduVar, final zzefy zzefyVar) throws zzejt, zzfev {
        zzdgy zzdgyVarZze = this.zzb.zze(new zzcuh(zzfehVar, zzfduVar, zzefyVar.zza), new zzdhb(new zzdig() { // from class: com.google.android.gms.internal.ads.zzeib
            @Override // com.google.android.gms.internal.ads.zzdig
            public final void zza(boolean z, Context context, zzcyu zzcyuVar) throws zzdif {
                this.zza.zzc(zzefyVar, z, context, zzcyuVar);
            }
        }, null));
        zzdgyVarZze.zzd().zzo(new zzcpf((zzffm) zzefyVar.zzb), this.zzd);
        ((zzehr) zzefyVar.zzc).zzc(zzdgyVarZze.zzj());
        return zzdgyVarZze.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final void zzb(zzfeh zzfehVar, zzfdu zzfduVar, zzefy zzefyVar) throws zzfev {
        zzffm zzffmVar = (zzffm) zzefyVar.zzb;
        zzfeq zzfeqVar = zzfehVar.zza.zza;
        zzffmVar.zzo(this.zza, zzfeqVar.zzd, zzfduVar.zzw.toString(), com.google.android.gms.ads.internal.util.zzbw.zzl(zzfduVar.zzt), (zzbpx) zzefyVar.zzc);
    }

    final /* synthetic */ void zzc(zzefy zzefyVar, boolean z, Context context, zzcyu zzcyuVar) throws zzdif {
        try {
            ((zzffm) zzefyVar.zzb).zzv(z);
            if (this.zzc.zzc < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaG)).intValue()) {
                ((zzffm) zzefyVar.zzb).zzx();
            } else {
                ((zzffm) zzefyVar.zzb).zzy(context);
            }
        } catch (zzfev e2) {
            zzcbn.zzi("Cannot show interstitial.");
            throw new zzdif(e2.getCause());
        }
    }
}
