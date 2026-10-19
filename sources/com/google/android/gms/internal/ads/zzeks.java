package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeks implements zzefv {
    private final Context zza;
    private final zzdqu zzb;
    private final zzdqd zzc;
    private final zzfeq zzd;
    private final Executor zze;
    private final zzcbt zzf;
    private final zzbkf zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziI)).booleanValue();
    private final zzefa zzi;

    public zzeks(Context context, zzcbt zzcbtVar, zzfeq zzfeqVar, Executor executor, zzdqd zzdqdVar, zzdqu zzdquVar, zzbkf zzbkfVar, zzefa zzefaVar) {
        this.zza = context;
        this.zzd = zzfeqVar;
        this.zzc = zzdqdVar;
        this.zze = executor;
        this.zzf = zzcbtVar;
        this.zzb = zzdquVar;
        this.zzg = zzbkfVar;
        this.zzi = zzefaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefv
    public final h0 zza(final zzfeh zzfehVar, final zzfdu zzfduVar) {
        final zzdqy zzdqyVar = new zzdqy();
        h0 h0VarZzn = zzgbb.zzn(zzgbb.zzh(null), new zzgai() { // from class: com.google.android.gms.internal.ads.zzekl
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzc(zzfduVar, zzfehVar, zzdqyVar, obj);
            }
        }, this.zze);
        h0VarZzn.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzekm
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
        final zzcgv zzcgvVarZza = this.zzb.zza(this.zzd.zze, zzfduVar, zzfehVar.zzb.zzb);
        zzcgvVarZza.zzZ(zzfduVar.zzX);
        zzdqyVar.zza(this.zza, (View) zzcgvVarZza);
        zzccf zzccfVar = new zzccf();
        final zzdpz zzdpzVarZze = this.zzc.zze(new zzcuh(zzfehVar, zzfduVar, null), new zzdqa(new zzekr(this.zza, this.zzb, this.zzd, this.zzf, zzfduVar, zzccfVar, zzcgvVarZza, this.zzg, this.zzh, this.zzi), zzcgvVarZza));
        zzccfVar.zzc(zzdpzVarZze);
        zzbku.zzb(zzcgvVarZza, zzdpzVarZze.zzg());
        zzdpzVarZze.zzc().zzo(new zzczb() { // from class: com.google.android.gms.internal.ads.zzekn
            @Override // com.google.android.gms.internal.ads.zzczb
            public final void zzq() {
                zzcgv zzcgvVar = zzcgvVarZza;
                if (zzcgvVar.zzN() != null) {
                    zzcgvVar.zzN().zzq();
                }
            }
        }, zzcca.zzf);
        zzdpzVarZze.zzl().zzi(zzcgvVarZza, true, this.zzh ? this.zzg : null);
        zzdpzVarZze.zzl();
        zzfea zzfeaVar = zzfduVar.zzt;
        return zzgbb.zzm(zzdqt.zzj(zzcgvVarZza, zzfeaVar.zzb, zzfeaVar.zza), new zzftn() { // from class: com.google.android.gms.internal.ads.zzeko
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj2) {
                zzcgv zzcgvVar = zzcgvVarZza;
                if (zzfduVar.zzN) {
                    zzcgvVar.zzae();
                }
                zzdpz zzdpzVar = zzdpzVarZze;
                zzcgvVar.zzY();
                zzcgvVar.onPause();
                return zzdpzVar.zzk();
            }
        }, this.zze);
    }
}
