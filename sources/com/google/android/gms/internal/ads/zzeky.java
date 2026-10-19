package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeky implements zzegb {
    private final Context zza;
    private final Executor zzb;
    private final zzdqd zzc;

    public zzeky(Context context, Executor executor, zzdqd zzdqdVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzdqdVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void zze(zzfeh zzfehVar, zzfdu zzfduVar, zzefy zzefyVar) {
        try {
            ((zzffm) zzefyVar.zzb).zzk(zzfehVar.zza.zza.zzd, zzfduVar.zzw.toString());
        } catch (Exception e2) {
            zzcbn.zzk("Fail to load ad from adapter ".concat(String.valueOf(zzefyVar.zza)), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final /* bridge */ /* synthetic */ Object zza(zzfeh zzfehVar, zzfdu zzfduVar, final zzefy zzefyVar) throws zzejt, zzfev {
        zzdpz zzdpzVarZze = this.zzc.zze(new zzcuh(zzfehVar, zzfduVar, zzefyVar.zza), new zzdqa(new zzdig() { // from class: com.google.android.gms.internal.ads.zzeku
            @Override // com.google.android.gms.internal.ads.zzdig
            public final void zza(boolean z, Context context, zzcyu zzcyuVar) throws zzdif {
                zzefy zzefyVar2 = zzefyVar;
                try {
                    ((zzffm) zzefyVar2.zzb).zzv(z);
                    ((zzffm) zzefyVar2.zzb).zzA();
                } catch (zzfev e2) {
                    zzcbn.zzk("Cannot show rewarded video.", e2);
                    throw new zzdif(e2.getCause());
                }
            }
        }));
        zzdpzVarZze.zzd().zzo(new zzcpf((zzffm) zzefyVar.zzb), this.zzb);
        zzczo zzczoVarZze = zzdpzVarZze.zze();
        zzcyf zzcyfVarZzb = zzdpzVarZze.zzb();
        ((zzehs) zzefyVar.zzc).zzc(new zzekx(this, zzdpzVarZze.zza(), zzcyfVarZzb, zzczoVarZze, zzdpzVarZze.zzg()));
        return zzdpzVarZze.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final void zzb(zzfeh zzfehVar, zzfdu zzfduVar, zzefy zzefyVar) throws zzfev {
        if (((zzffm) zzefyVar.zzb).zzC()) {
            zze(zzfehVar, zzfduVar, zzefyVar);
            return;
        }
        ((zzehs) zzefyVar.zzc).zzd(new zzekw(this, zzfehVar, zzfduVar, zzefyVar));
        Object obj = zzefyVar.zzb;
        Context context = this.zza;
        zzfeq zzfeqVar = zzfehVar.zza.zza;
        ((zzffm) obj).zzh(context, zzfeqVar.zzd, null, (zzbxb) zzefyVar.zzc, zzfduVar.zzw.toString());
    }
}
