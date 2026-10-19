package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.h0;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdpj {
    private final com.google.android.gms.ads.internal.zza zzb;
    private final zzchh zzc;
    private final Context zzd;
    private final zzdtp zze;
    private final zzfje zzf;
    private final Executor zzg;
    private final zzasi zzh;
    private final zzcbt zzi;
    private final zzeep zzk;
    private final zzfla zzl;
    private final zzefa zzm;
    private h0 zzn;
    private final zzdow zza = new zzdow();
    private final zzbks zzj = new zzbks();

    zzdpj(zzdpg zzdpgVar) {
        this.zzd = zzdpgVar.zzc;
        this.zzg = zzdpgVar.zzg;
        this.zzh = zzdpgVar.zzh;
        this.zzi = zzdpgVar.zzi;
        this.zzb = zzdpgVar.zza;
        this.zzc = zzdpgVar.zzb;
        this.zzk = zzdpgVar.zzf;
        this.zzl = zzdpgVar.zzj;
        this.zze = zzdpgVar.zzd;
        this.zzf = zzdpgVar.zze;
        this.zzm = zzdpgVar.zzk;
    }

    final /* synthetic */ zzcgv zza(zzcgv zzcgvVar) {
        zzcgvVar.zzad("/result", this.zzj);
        zzcii zzciiVarZzN = zzcgvVar.zzN();
        com.google.android.gms.ads.internal.zzb zzbVar = new com.google.android.gms.ads.internal.zzb(this.zzd, null, null);
        zzeep zzeepVar = this.zzk;
        zzfla zzflaVar = this.zzl;
        zzdtp zzdtpVar = this.zze;
        zzfje zzfjeVar = this.zzf;
        zzdow zzdowVar = this.zza;
        zzciiVarZzN.zzM(null, zzdowVar, zzdowVar, zzdowVar, zzdowVar, false, null, zzbVar, null, null, zzeepVar, zzflaVar, zzdtpVar, zzfjeVar, null, null, null, null, null);
        return zzcgvVar;
    }

    final /* synthetic */ h0 zzc(String str, JSONObject jSONObject, zzcgv zzcgvVar) throws Exception {
        return this.zzj.zzb(zzcgvVar, str, jSONObject);
    }

    public final synchronized h0 zzd(final String str, final JSONObject jSONObject) {
        h0 h0Var = this.zzn;
        if (h0Var == null) {
            return zzgbb.zzh(null);
        }
        return zzgbb.zzn(h0Var, new zzgai() { // from class: com.google.android.gms.internal.ads.zzdox
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzc(str, jSONObject, (zzcgv) obj);
            }
        }, this.zzg);
    }

    public final synchronized void zze(zzfdu zzfduVar, zzfdy zzfdyVar) {
        h0 h0Var = this.zzn;
        if (h0Var == null) {
            return;
        }
        zzgbb.zzr(h0Var, new zzdpd(this, zzfduVar, zzfdyVar), this.zzg);
    }

    public final synchronized void zzf() {
        h0 h0Var = this.zzn;
        if (h0Var == null) {
            return;
        }
        zzgbb.zzr(h0Var, new zzdoz(this), this.zzg);
        this.zzn = null;
    }

    public final synchronized void zzg(String str, Map map) {
        h0 h0Var = this.zzn;
        if (h0Var == null) {
            return;
        }
        zzgbb.zzr(h0Var, new zzdpc(this, "sendMessageToNativeJs", map), this.zzg);
    }

    public final synchronized void zzh() {
        final String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdB);
        final Context context = this.zzd;
        final zzasi zzasiVar = this.zzh;
        final zzcbt zzcbtVar = this.zzi;
        final com.google.android.gms.ads.internal.zza zzaVar = this.zzb;
        final zzefa zzefaVar = this.zzm;
        h0 h0VarZzm = zzgbb.zzm(zzgbb.zzk(new zzgah() { // from class: com.google.android.gms.internal.ads.zzchf
            @Override // com.google.android.gms.internal.ads.zzgah
            public final h0 zza() throws zzchg {
                com.google.android.gms.ads.internal.zzt.zzz();
                Context context2 = context;
                zzcik zzcikVarZza = zzcik.zza();
                zzasi zzasiVar2 = zzasiVar;
                com.google.android.gms.ads.internal.zza zzaVar2 = zzaVar;
                zzcgv zzcgvVarZza = zzchh.zza(context2, zzcikVarZza, "", false, false, zzasiVar2, null, zzcbtVar, null, null, zzaVar2, zzayp.zza(), null, null, zzefaVar);
                final zzcce zzcceVarZza = zzcce.zza(zzcgvVarZza);
                zzcgvVarZza.zzN().zzA(new zzcig() { // from class: com.google.android.gms.internal.ads.zzchd
                    @Override // com.google.android.gms.internal.ads.zzcig
                    public final void zza(boolean z, int i, String str2, String str3) {
                        zzcceVarZza.zzb();
                    }
                });
                zzcgvVarZza.loadUrl(str);
                return zzcceVarZza;
            }
        }, zzcca.zze), new zzftn() { // from class: com.google.android.gms.internal.ads.zzdoy
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                zzcgv zzcgvVar = (zzcgv) obj;
                this.zza.zza(zzcgvVar);
                return zzcgvVar;
            }
        }, this.zzg);
        this.zzn = h0VarZzm;
        zzccd.zza(h0VarZzm, "NativeJavascriptExecutor.initializeEngine");
    }

    public final synchronized void zzi(String str, zzbkd zzbkdVar) {
        h0 h0Var = this.zzn;
        if (h0Var == null) {
            return;
        }
        zzgbb.zzr(h0Var, new zzdpa(this, str, zzbkdVar), this.zzg);
    }

    public final void zzj(WeakReference weakReference, String str, zzbkd zzbkdVar) {
        zzi(str, new zzdpi(this, weakReference, str, zzbkdVar, null));
    }

    public final synchronized void zzk(String str, zzbkd zzbkdVar) {
        h0 h0Var = this.zzn;
        if (h0Var == null) {
            return;
        }
        zzgbb.zzr(h0Var, new zzdpb(this, str, zzbkdVar), this.zzg);
    }
}
