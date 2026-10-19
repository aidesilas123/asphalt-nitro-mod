package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzego implements zzegb {
    private final Context zza;
    private final zzcrd zzb;

    zzego(Context context, zzcrd zzcrdVar) {
        this.zza = context;
        this.zzb = zzcrdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final /* bridge */ /* synthetic */ Object zza(zzfeh zzfehVar, zzfdu zzfduVar, zzefy zzefyVar) throws zzejt, zzfev {
        zzeia zzeiaVar = new zzeia(zzfduVar, (zzbrp) zzefyVar.zzb, AdFormat.APP_OPEN_AD);
        zzcra zzcraVarZza = this.zzb.zza(new zzcuh(zzfehVar, zzfduVar, zzefyVar.zza), new zzdhb(zzeiaVar, null), new zzcrb(zzfduVar.zzab));
        zzeiaVar.zzb(zzcraVarZza.zzc());
        ((zzehr) zzefyVar.zzc).zzc(zzcraVarZza.zzi());
        return zzcraVarZza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final void zzb(zzfeh zzfehVar, zzfdu zzfduVar, zzefy zzefyVar) throws zzfev {
        try {
            ((zzbrp) zzefyVar.zzb).zzq(zzfduVar.zzaa);
            ((zzbrp) zzefyVar.zzb).zzi(zzfduVar.zzV, zzfduVar.zzw.toString(), zzfehVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzegn(zzefyVar, null), (zzbpx) zzefyVar.zzc);
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzb("Remote exception loading an app open RTB ad", e2);
            throw new zzfev(e2);
        }
    }
}
