package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzegg implements zzefv {
    private final zzcrd zza;
    private final Context zzb;
    private final zzdqu zzc;
    private final zzfeq zzd;
    private final Executor zze;
    private final zzcbt zzf;
    private final zzbkf zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziI)).booleanValue();
    private final zzefa zzi;

    public zzegg(zzcrd zzcrdVar, Context context, Executor executor, zzdqu zzdquVar, zzfeq zzfeqVar, zzcbt zzcbtVar, zzbkf zzbkfVar, zzefa zzefaVar) {
        this.zzb = context;
        this.zza = zzcrdVar;
        this.zze = executor;
        this.zzc = zzdquVar;
        this.zzd = zzfeqVar;
        this.zzf = zzcbtVar;
        this.zzg = zzbkfVar;
        this.zzi = zzefaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefv
    public final h0 zza(final zzfeh zzfehVar, final zzfdu zzfduVar) {
        final zzdqy zzdqyVar = new zzdqy();
        h0 h0VarZzn = zzgbb.zzn(zzgbb.zzh(null), new zzgai() { // from class: com.google.android.gms.internal.ads.zzegc
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzc(zzfduVar, zzfehVar, zzdqyVar, obj);
            }
        }, this.zze);
        h0VarZzn.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzegd
            @Override // java.lang.Runnable
            public final void run() {
                zzdqyVar.zzb();
            }
        }, this.zze);
        return h0VarZzn;
    }

    @Override // com.google.android.gms.internal.ads.zzefv
    public final boolean zzb(zzfeh zzfehVar, zzfdu zzfduVar) {
        zzfea zzfeaVar = zzfduVar.zzt;
        return (zzfeaVar == null || zzfeaVar.zza == null) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ h0 zzc(final zzfdu zzfduVar, zzfeh zzfehVar, zzdqy zzdqyVar, Object obj) throws Exception {
        final zzcgv zzcgvVarZza = this.zzc.zza(this.zzd.zze, zzfduVar, zzfehVar.zzb.zzb);
        zzcgvVarZza.zzZ(zzfduVar.zzX);
        zzdqyVar.zza(this.zzb, (View) zzcgvVarZza);
        zzccf zzccfVar = new zzccf();
        final zzcra zzcraVarZza = this.zza.zza(new zzcuh(zzfehVar, zzfduVar, null), new zzdhb(new zzegi(this.zzf, zzccfVar, zzfduVar, zzcgvVarZza, this.zzd, this.zzh, this.zzg, this.zzi), zzcgvVarZza), new zzcrb(zzfduVar.zzab));
        zzcraVarZza.zzh().zzi(zzcgvVarZza, false, this.zzh ? this.zzg : null);
        zzccfVar.zzc(zzcraVarZza);
        zzcraVarZza.zzc().zzo(new zzczb() { // from class: com.google.android.gms.internal.ads.zzege
            @Override // com.google.android.gms.internal.ads.zzczb
            public final void zzq() {
                zzcgv zzcgvVar = zzcgvVarZza;
                if (zzcgvVar.zzN() != null) {
                    zzcgvVar.zzN().zzq();
                }
            }
        }, zzcca.zzf);
        zzcraVarZza.zzh();
        zzfea zzfeaVar = zzfduVar.zzt;
        return zzgbb.zzm(zzdqt.zzj(zzcgvVarZza, zzfeaVar.zzb, zzfeaVar.zza), new zzftn() { // from class: com.google.android.gms.internal.ads.zzegf
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj2) {
                zzcgv zzcgvVar = zzcgvVarZza;
                if (zzfduVar.zzN) {
                    zzcgvVar.zzae();
                }
                zzcra zzcraVar = zzcraVarZza;
                zzcgvVar.zzY();
                zzcgvVar.onPause();
                return zzcraVar.zza();
            }
        }, this.zze);
    }
}
