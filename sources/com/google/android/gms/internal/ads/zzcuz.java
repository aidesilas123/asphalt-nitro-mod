package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcuz {
    private final zzdyv zza;
    private final zzfeq zzb;
    private final zzfiu zzc;
    private final zzcod zzd;
    private final zzejw zze;
    private final zzddm zzf;

    @Nullable
    private zzfeh zzg;
    private final zzeaa zzh;
    private final zzcxl zzi;
    private final Executor zzj;
    private final zzdzm zzk;
    private final zzega zzl;
    private final zzeaq zzm;
    private final zzeax zzn;

    zzcuz(zzdyv zzdyvVar, zzfeq zzfeqVar, zzfiu zzfiuVar, zzcod zzcodVar, zzejw zzejwVar, zzddm zzddmVar, @Nullable zzfeh zzfehVar, zzeaa zzeaaVar, zzcxl zzcxlVar, Executor executor, zzdzm zzdzmVar, zzega zzegaVar, zzeaq zzeaqVar, zzeax zzeaxVar) {
        this.zza = zzdyvVar;
        this.zzb = zzfeqVar;
        this.zzc = zzfiuVar;
        this.zzd = zzcodVar;
        this.zze = zzejwVar;
        this.zzf = zzddmVar;
        this.zzg = zzfehVar;
        this.zzh = zzeaaVar;
        this.zzi = zzcxlVar;
        this.zzj = executor;
        this.zzk = zzdzmVar;
        this.zzl = zzegaVar;
        this.zzm = zzeaqVar;
        this.zzn = zzeaxVar;
    }

    public final com.google.android.gms.ads.internal.client.zze zza(Throwable th) {
        return zzffr.zzb(th, this.zzl);
    }

    public final zzddm zzc() {
        return this.zzf;
    }

    final /* synthetic */ zzfeh zzd(zzfeh zzfehVar) throws Exception {
        this.zzd.zza(zzfehVar);
        return zzfehVar;
    }

    public final h0 zze(final zzfgk zzfgkVar) {
        zzfhz zzfhzVarZza = this.zzc.zzb(zzfio.GET_CACHE_KEY, this.zzi.zzc()).zzf(new zzgai() { // from class: com.google.android.gms.internal.ads.zzcuv
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzf(zzfgkVar, (zzbwa) obj);
            }
        }).zza();
        zzgbb.zzr(zzfhzVarZza, new zzcux(this), this.zzj);
        return zzfhzVarZza;
    }

    final /* synthetic */ h0 zzf(zzfgk zzfgkVar, zzbwa zzbwaVar) throws Exception {
        zzbwaVar.zzi = zzfgkVar;
        return this.zzh.zza(zzbwaVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ h0 zzg(h0 h0Var, h0 h0Var2, h0 h0Var3) throws Exception {
        return this.zzn.zzc((zzbwa) h0Var.get(), (JSONObject) h0Var2.get(), (zzbwd) h0Var3.get());
    }

    public final h0 zzh(zzbwa zzbwaVar) {
        zzfhz zzfhzVarZza = this.zzc.zzb(zzfio.NOTIFY_CACHE_HIT, this.zzh.zzg(zzbwaVar)).zza();
        zzgbb.zzr(zzfhzVarZza, new zzcuy(this), this.zzj);
        return zzfhzVarZza;
    }

    public final h0 zzi(h0 h0Var) {
        zzfil zzfilVarZzf = this.zzc.zzb(zzfio.RENDERER, h0Var).zze(new zzfhx() { // from class: com.google.android.gms.internal.ads.zzcuq
            @Override // com.google.android.gms.internal.ads.zzfhx
            public final Object zza(Object obj) throws Exception {
                zzfeh zzfehVar = (zzfeh) obj;
                this.zza.zzd(zzfehVar);
                return zzfehVar;
            }
        }).zzf(this.zze);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzfu)).booleanValue()) {
            zzfilVarZzf = zzfilVarZzf.zzi(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzfw)).intValue(), TimeUnit.SECONDS);
        }
        return zzfilVarZzf.zza();
    }

    public final h0 zzj() {
        com.google.android.gms.ads.internal.client.zzl zzlVar = this.zzb.zzd;
        if (zzlVar.zzx == null && zzlVar.zzs == null) {
            return zzk(this.zzi.zzc());
        }
        zzfiu zzfiuVar = this.zzc;
        zzdyv zzdyvVar = this.zza;
        return zzfie.zzc(zzdyvVar.zza(), zzfio.PRELOADED_LOADER, zzfiuVar).zza();
    }

    public final h0 zzk(final h0 h0Var) {
        zzfeh zzfehVar = this.zzg;
        if (zzfehVar != null) {
            return zzfie.zzc(zzgbb.zzh(zzfehVar), zzfio.SERVER_TRANSACTION, this.zzc).zza();
        }
        com.google.android.gms.ads.internal.zzt.zzc().zzj();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkH)).booleanValue() || ((Boolean) zzbfb.zzc.zze()).booleanValue()) {
            zzfil zzfilVarZzb = this.zzc.zzb(zzfio.SERVER_TRANSACTION, h0Var);
            final zzdzm zzdzmVar = this.zzk;
            return zzfilVarZzb.zzf(new zzgai() { // from class: com.google.android.gms.internal.ads.zzcuw
                @Override // com.google.android.gms.internal.ads.zzgai
                public final h0 zza(Object obj) {
                    return zzdzmVar.zzb((zzbwa) obj);
                }
            }).zza();
        }
        final zzeaq zzeaqVar = this.zzm;
        final h0 h0VarZzn = zzgbb.zzn(h0Var, new zzgai() { // from class: com.google.android.gms.internal.ads.zzcur
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzeaqVar.zza((zzbwa) obj);
            }
        }, this.zzj);
        zzfil zzfilVarZzb2 = this.zzc.zzb(zzfio.BUILD_URL, h0VarZzn);
        final zzeaa zzeaaVar = this.zzh;
        final zzfhz zzfhzVarZza = zzfilVarZzb2.zzf(new zzgai() { // from class: com.google.android.gms.internal.ads.zzcus
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzeaaVar.zzb((JSONObject) obj);
            }
        }).zza();
        return this.zzc.zza(zzfio.SERVER_TRANSACTION, h0Var, h0VarZzn, zzfhzVarZza).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzcut
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzg(h0Var, h0VarZzn, zzfhzVarZza);
            }
        }).zzf(new zzgai() { // from class: com.google.android.gms.internal.ads.zzcuu
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return (h0) obj;
            }
        }).zza();
    }

    public final void zzl(zzfeh zzfehVar) {
        this.zzg = zzfehVar;
    }
}
