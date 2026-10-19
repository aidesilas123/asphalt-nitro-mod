package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeha implements zzegb {
    private final Context zza;
    private final zzcsm zzb;
    private final Executor zzc;

    public zzeha(Context context, zzcsm zzcsmVar, Executor executor) {
        this.zza = context;
        this.zzb = zzcsmVar;
        this.zzc = executor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzegb
    public final /* bridge */ /* synthetic */ Object zza(zzfeh zzfehVar, final zzfdu zzfduVar, zzefy zzefyVar) throws zzejt, zzfev {
        final View viewZza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhH)).booleanValue() && zzfduVar.zzah) {
            zzbqa zzbqaVarZzc = ((zzffm) zzefyVar.zzb).zzc();
            if (zzbqaVarZzc == null) {
                zzcbn.zzg("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
                throw new zzfev(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
            }
            try {
                viewZza = (View) ObjectWrapper.unwrap(zzbqaVarZzc.zze());
                boolean zZzf = zzbqaVarZzc.zzf();
                if (viewZza == null) {
                    throw new zzfev(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                }
                if (zZzf) {
                    try {
                        viewZza = (View) zzgbb.zzn(zzgbb.zzh(null), new zzgai() { // from class: com.google.android.gms.internal.ads.zzegy
                            @Override // com.google.android.gms.internal.ads.zzgai
                            public final h0 zza(Object obj) {
                                return this.zza.zzc(viewZza, zzfduVar, obj);
                            }
                        }, zzcca.zze).get();
                    } catch (InterruptedException | ExecutionException e2) {
                        throw new zzfev(e2);
                    }
                }
            } catch (RemoteException e3) {
                throw new zzfev(e3);
            }
        } else {
            viewZza = ((zzffm) zzefyVar.zzb).zza();
        }
        zzcsm zzcsmVar = this.zzb;
        zzcuh zzcuhVar = new zzcuh(zzfehVar, zzfduVar, zzefyVar.zza);
        final zzffm zzffmVar = (zzffm) zzefyVar.zzb;
        zzcrq zzcrqVarZza = zzcsmVar.zza(zzcuhVar, new zzcrw(viewZza, null, new zzctp() { // from class: com.google.android.gms.internal.ads.zzegz
            @Override // com.google.android.gms.internal.ads.zzctp
            public final com.google.android.gms.ads.internal.client.zzdq zza() {
                return zzffmVar.zzb();
            }
        }, (zzfdv) zzfduVar.zzv.get(0)));
        zzcrqVarZza.zzg().zza(viewZza);
        zzcrqVarZza.zzd().zzo(new zzcpf((zzffm) zzefyVar.zzb), this.zzc);
        ((zzehr) zzefyVar.zzc).zzc(zzcrqVarZza.zzj());
        return zzcrqVarZza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final void zzb(zzfeh zzfehVar, zzfdu zzfduVar, zzefy zzefyVar) throws zzfev {
        com.google.android.gms.ads.internal.client.zzq zzqVar;
        com.google.android.gms.ads.internal.client.zzq zzqVar2 = zzfehVar.zza.zza.zze;
        if (zzqVar2.zzn) {
            zzqVar = new com.google.android.gms.ads.internal.client.zzq(this.zza, com.google.android.gms.ads.zzb.zzd(zzqVar2.zze, zzqVar2.zzb));
        } else {
            zzqVar = (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhH)).booleanValue() && zzfduVar.zzah) ? new com.google.android.gms.ads.internal.client.zzq(this.zza, com.google.android.gms.ads.zzb.zze(zzqVar2.zze, zzqVar2.zzb)) : zzfeu.zza(this.zza, zzfduVar.zzv);
        }
        com.google.android.gms.ads.internal.client.zzq zzqVar3 = zzqVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhH)).booleanValue() && zzfduVar.zzah) {
            Object obj = zzefyVar.zzb;
            ((zzffm) obj).zzn(this.zza, zzqVar3, zzfehVar.zza.zza.zzd, zzfduVar.zzw.toString(), com.google.android.gms.ads.internal.util.zzbw.zzl(zzfduVar.zzt), (zzbpx) zzefyVar.zzc);
            return;
        }
        Object obj2 = zzefyVar.zzb;
        ((zzffm) obj2).zzm(this.zza, zzqVar3, zzfehVar.zza.zza.zzd, zzfduVar.zzw.toString(), com.google.android.gms.ads.internal.util.zzbw.zzl(zzfduVar.zzt), (zzbpx) zzefyVar.zzc);
    }

    final /* synthetic */ h0 zzc(View view, zzfdu zzfduVar, Object obj) throws Exception {
        return zzgbb.zzh(zzctd.zza(this.zza, view, zzfduVar));
    }
}
