package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeir implements zzegb {
    private final Context zza;
    private final zzdiu zzb;
    private final Executor zzc;

    public zzeir(Context context, zzdiu zzdiuVar, Executor executor) {
        this.zza = context;
        this.zzb = zzdiuVar;
        this.zzc = executor;
    }

    private static final boolean zzc(zzfeh zzfehVar, int i) {
        return zzfehVar.zza.zza.zzg.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final /* bridge */ /* synthetic */ Object zza(zzfeh zzfehVar, zzfdu zzfduVar, zzefy zzefyVar) throws zzejt, zzfev {
        zzdkk zzdkkVarZzah;
        zzbqc zzbqcVarZzD = ((zzffm) zzefyVar.zzb).zzD();
        zzbqd zzbqdVarZzE = ((zzffm) zzefyVar.zzb).zzE();
        zzbqg zzbqgVarZzd = ((zzffm) zzefyVar.zzb).zzd();
        if (zzbqgVarZzd != null && zzc(zzfehVar, 6)) {
            zzdkkVarZzah = zzdkk.zzt(zzbqgVarZzd);
        } else if (zzbqcVarZzD != null && zzc(zzfehVar, 6)) {
            zzdkkVarZzah = zzdkk.zzai(zzbqcVarZzD);
        } else if (zzbqcVarZzD != null && zzc(zzfehVar, 2)) {
            zzdkkVarZzah = zzdkk.zzag(zzbqcVarZzD);
        } else if (zzbqdVarZzE != null && zzc(zzfehVar, 6)) {
            zzdkkVarZzah = zzdkk.zzaj(zzbqdVarZzE);
        } else {
            if (zzbqdVarZzE == null || !zzc(zzfehVar, 1)) {
                throw new zzejt(1, "No native ad mappers");
            }
            zzdkkVarZzah = zzdkk.zzah(zzbqdVarZzE);
        }
        zzfeq zzfeqVar = zzfehVar.zza.zza;
        if (!zzfeqVar.zzg.contains(Integer.toString(zzdkkVarZzah.zzc()))) {
            throw new zzejt(1, "No corresponding native ad listener");
        }
        zzdkm zzdkmVarZze = this.zzb.zze(new zzcuh(zzfehVar, zzfduVar, zzefyVar.zza), new zzdkw(zzdkkVarZzah), new zzdmn(zzbqdVarZzE, zzbqcVarZzD, zzbqgVarZzd));
        ((zzehr) zzefyVar.zzc).zzc(zzdkmVarZze.zzj());
        zzdkmVarZze.zzd().zzo(new zzcpf((zzffm) zzefyVar.zzb), this.zzc);
        return zzdkmVarZze.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzegb
    public final void zzb(zzfeh zzfehVar, zzfdu zzfduVar, zzefy zzefyVar) throws zzfev {
        zzffm zzffmVar = (zzffm) zzefyVar.zzb;
        zzfeq zzfeqVar = zzfehVar.zza.zza;
        String string = zzfduVar.zzw.toString();
        String strZzl = com.google.android.gms.ads.internal.util.zzbw.zzl(zzfduVar.zzt);
        zzbpx zzbpxVar = (zzbpx) zzefyVar.zzc;
        zzfeq zzfeqVar2 = zzfehVar.zza.zza;
        zzffmVar.zzp(this.zza, zzfeqVar.zzd, string, strZzl, zzbpxVar, zzfeqVar2.zzi, zzfeqVar2.zzg);
    }
}
