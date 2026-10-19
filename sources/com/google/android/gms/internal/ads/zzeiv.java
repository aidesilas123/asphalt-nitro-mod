package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeiv implements zzegb {
    private final Context zza;
    private final zzdiu zzb;
    private zzbqg zzc;
    private final zzcbt zzd;

    public zzeiv(Context context, zzdiu zzdiuVar, zzcbt zzcbtVar) {
        this.zza = context;
        this.zzb = zzdiuVar;
        this.zzd = zzcbtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final /* bridge */ /* synthetic */ Object zza(zzfeh zzfehVar, zzfdu zzfduVar, zzefy zzefyVar) throws zzejt, zzfev {
        if (!zzfehVar.zza.zza.zzg.contains(Integer.toString(6))) {
            throw new zzejt(2, "Unified must be used for RTB.");
        }
        zzdkk zzdkkVarZzt = zzdkk.zzt(this.zzc);
        zzfeq zzfeqVar = zzfehVar.zza.zza;
        if (!zzfeqVar.zzg.contains(Integer.toString(zzdkkVarZzt.zzc()))) {
            throw new zzejt(1, "No corresponding native ad listener");
        }
        zzdkm zzdkmVarZze = this.zzb.zze(new zzcuh(zzfehVar, zzfduVar, zzefyVar.zza), new zzdkw(zzdkkVarZzt), new zzdmn(null, null, this.zzc));
        ((zzehr) zzefyVar.zzc).zzc(zzdkmVarZze.zzi());
        return zzdkmVarZze.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final void zzb(zzfeh zzfehVar, zzfdu zzfduVar, zzefy zzefyVar) throws zzfev {
        try {
            ((zzbrp) zzefyVar.zzb).zzq(zzfduVar.zzaa);
            zzeit zzeitVar = null;
            if (this.zzd.zzc < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbF)).intValue()) {
                ((zzbrp) zzefyVar.zzb).zzm(zzfduVar.zzV, zzfduVar.zzw.toString(), zzfehVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzeiu(this, zzefyVar, zzeitVar), (zzbpx) zzefyVar.zzc);
            } else {
                ((zzbrp) zzefyVar.zzb).zzn(zzfduVar.zzV, zzfduVar.zzw.toString(), zzfehVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzeiu(this, zzefyVar, zzeitVar), (zzbpx) zzefyVar.zzc, zzfehVar.zza.zza.zzi);
            }
        } catch (RemoteException e2) {
            throw new zzfev(e2);
        }
    }
}
