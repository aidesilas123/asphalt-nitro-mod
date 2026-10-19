package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzebw extends zzbvl {
    private final Context zza;
    private final zzgbl zzb;
    private final zzeco zzc;
    private final zzcoc zzd;
    private final ArrayDeque zze;
    private final zzfkk zzf;
    private final zzbwm zzg;
    private final zzecl zzh;

    public zzebw(Context context, zzgbl zzgblVar, zzbwm zzbwmVar, zzcoc zzcocVar, zzeco zzecoVar, ArrayDeque arrayDeque, zzecl zzeclVar, zzfkk zzfkkVar) {
        zzbdc.zza(context);
        this.zza = context;
        this.zzb = zzgblVar;
        this.zzg = zzbwmVar;
        this.zzc = zzecoVar;
        this.zzd = zzcocVar;
        this.zze = arrayDeque;
        this.zzh = zzeclVar;
        this.zzf = zzfkkVar;
    }

    @Nullable
    private final synchronized zzebt zzk(String str) {
        Iterator it = this.zze.iterator();
        while (it.hasNext()) {
            zzebt zzebtVar = (zzebt) it.next();
            if (zzebtVar.zzc.equals(str)) {
                it.remove();
                return zzebtVar;
            }
        }
        return null;
    }

    private static h0 zzl(h0 h0Var, zzfiu zzfiuVar, zzbou zzbouVar, zzfkh zzfkhVar, zzfjw zzfjwVar) {
        zzbok zzbokVarZza = zzbouVar.zza("AFMA_getAdDictionary", zzbor.zza, new zzbom() { // from class: com.google.android.gms.internal.ads.zzebp
            @Override // com.google.android.gms.internal.ads.zzbom
            public final Object zza(JSONObject jSONObject) {
                return new zzbwd(jSONObject);
            }
        });
        zzfkg.zzd(h0Var, zzfjwVar);
        zzfhz zzfhzVarZza = zzfiuVar.zzb(zzfio.BUILD_URL, h0Var).zzf(zzbokVarZza).zza();
        zzfkg.zzc(zzfhzVarZza, zzfkhVar, zzfjwVar);
        return zzfhzVarZza;
    }

    private static h0 zzm(zzbwa zzbwaVar, zzfiu zzfiuVar, final zzevw zzevwVar) {
        zzgai zzgaiVar = new zzgai() { // from class: com.google.android.gms.internal.ads.zzebj
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzevwVar.zzb().zza(com.google.android.gms.ads.internal.client.zzay.zzb().zzh((Bundle) obj));
            }
        };
        return zzfiuVar.zzb(zzfio.GMS_SIGNALS, zzgbb.zzh(zzbwaVar.zza)).zzf(zzgaiVar).zze(new zzfhx() { // from class: com.google.android.gms.internal.ads.zzebk
            @Override // com.google.android.gms.internal.ads.zzfhx
            public final Object zza(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                com.google.android.gms.ads.internal.util.zze.zza("Ad request signals:");
                com.google.android.gms.ads.internal.util.zze.zza(jSONObject.toString(2));
                return jSONObject;
            }
        }).zza();
    }

    private final synchronized void zzn(zzebt zzebtVar) {
        zzo();
        this.zze.addLast(zzebtVar);
    }

    private final synchronized void zzo() {
        int iIntValue = ((Long) zzbfc.zzc.zze()).intValue();
        while (this.zze.size() >= iIntValue) {
            this.zze.removeFirst();
        }
    }

    private final void zzp(h0 h0Var, zzbvw zzbvwVar) {
        zzgbb.zzr(zzgbb.zzn(h0Var, new zzgai() { // from class: com.google.android.gms.internal.ads.zzebh
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzgbb.zzh(zzffq.zza((InputStream) obj));
            }
        }, zzcca.zza), new zzebs(this, zzbvwVar), zzcca.zzf);
    }

    public final h0 zzb(final zzbwa zzbwaVar, int i) {
        if (!((Boolean) zzbfc.zza.zze()).booleanValue()) {
            return zzgbb.zzg(new Exception("Split request is disabled."));
        }
        zzfgk zzfgkVar = zzbwaVar.zzi;
        if (zzfgkVar == null) {
            return zzgbb.zzg(new Exception("Pool configuration missing from request."));
        }
        if (zzfgkVar.zzc == 0 || zzfgkVar.zzd == 0) {
            return zzgbb.zzg(new Exception("Caching is disabled."));
        }
        zzbou zzbouVarZzb = com.google.android.gms.ads.internal.zzt.zzf().zzb(this.zza, zzcbt.zza(), this.zzf);
        zzevw zzevwVarZzq = this.zzd.zzq(zzbwaVar, i);
        zzfiu zzfiuVarZzc = zzevwVarZzq.zzc();
        final h0 h0VarZzm = zzm(zzbwaVar, zzfiuVarZzc, zzevwVarZzq);
        zzfkh zzfkhVarZzd = zzevwVarZzq.zzd();
        final zzfjw zzfjwVarZza = zzfjv.zza(this.zza, 9);
        final h0 h0VarZzl = zzl(h0VarZzm, zzfiuVarZzc, zzbouVarZzb, zzfkhVarZzd, zzfjwVarZza);
        return zzfiuVarZzc.zza(zzfio.GET_URL_AND_CACHE_KEY, h0VarZzm, h0VarZzl).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzebn
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzj(h0VarZzl, h0VarZzm, zzbwaVar, zzfjwVarZza);
            }
        }).zza();
    }

    public final h0 zzc(zzbwa zzbwaVar, int i) {
        zzfhz zzfhzVarZza;
        zzbou zzbouVarZzb = com.google.android.gms.ads.internal.zzt.zzf().zzb(this.zza, zzcbt.zza(), this.zzf);
        zzevw zzevwVarZzq = this.zzd.zzq(zzbwaVar, i);
        zzbok zzbokVarZza = zzbouVarZzb.zza("google.afma.response.normalize", zzebv.zza, zzbor.zzb);
        zzebt zzebtVarZzk = null;
        if (((Boolean) zzbfc.zza.zze()).booleanValue()) {
            zzebtVarZzk = zzk(zzbwaVar.zzh);
            if (zzebtVarZzk == null) {
                com.google.android.gms.ads.internal.util.zze.zza("Request contained a PoolKey but no matching parameters were found.");
            }
        } else {
            String str = zzbwaVar.zzj;
            if (str != null && !str.isEmpty()) {
                com.google.android.gms.ads.internal.util.zze.zza("Request contained a PoolKey but split request is disabled.");
            }
        }
        zzfjw zzfjwVarZza = zzebtVarZzk == null ? zzfjv.zza(this.zza, 9) : zzebtVarZzk.zze;
        zzfkh zzfkhVarZzd = zzevwVarZzq.zzd();
        zzfkhVarZzd.zzd(zzbwaVar.zza.getStringArrayList("ad_types"));
        zzecn zzecnVar = new zzecn(zzbwaVar.zzg, zzfkhVarZzd, zzfjwVarZza);
        zzeck zzeckVar = new zzeck(this.zza, zzbwaVar.zzb.zza, this.zzg, i);
        zzfiu zzfiuVarZzc = zzevwVarZzq.zzc();
        zzfjw zzfjwVarZza2 = zzfjv.zza(this.zza, 11);
        if (zzebtVarZzk == null) {
            final h0 h0VarZzm = zzm(zzbwaVar, zzfiuVarZzc, zzevwVarZzq);
            final h0 h0VarZzl = zzl(h0VarZzm, zzfiuVarZzc, zzbouVarZzb, zzfkhVarZzd, zzfjwVarZza);
            zzfjw zzfjwVarZza3 = zzfjv.zza(this.zza, 10);
            final zzfhz zzfhzVarZza2 = zzfiuVarZzc.zza(zzfio.HTTP, h0VarZzl, h0VarZzm).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzebl
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzecm((JSONObject) h0VarZzm.get(), (zzbwd) h0VarZzl.get());
                }
            }).zze(zzecnVar).zze(new zzfkc(zzfjwVarZza3)).zze(zzeckVar).zza();
            zzfkg.zza(zzfhzVarZza2, zzfkhVarZzd, zzfjwVarZza3);
            zzfkg.zzd(zzfhzVarZza2, zzfjwVarZza2);
            zzfhzVarZza = zzfiuVarZzc.zza(zzfio.PRE_PROCESS, h0VarZzm, h0VarZzl, zzfhzVarZza2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzebm
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzebv((zzecj) zzfhzVarZza2.get(), (JSONObject) h0VarZzm.get(), (zzbwd) h0VarZzl.get());
                }
            }).zzf(zzbokVarZza).zza();
        } else {
            zzecm zzecmVar = new zzecm(zzebtVarZzk.zzb, zzebtVarZzk.zza);
            zzfjw zzfjwVarZza4 = zzfjv.zza(this.zza, 10);
            final zzfhz zzfhzVarZza3 = zzfiuVarZzc.zzb(zzfio.HTTP, zzgbb.zzh(zzecmVar)).zze(zzecnVar).zze(new zzfkc(zzfjwVarZza4)).zze(zzeckVar).zza();
            zzfkg.zza(zzfhzVarZza3, zzfkhVarZzd, zzfjwVarZza4);
            final h0 h0VarZzh = zzgbb.zzh(zzebtVarZzk);
            zzfkg.zzd(zzfhzVarZza3, zzfjwVarZza2);
            zzfhzVarZza = zzfiuVarZzc.zza(zzfio.PRE_PROCESS, zzfhzVarZza3, h0VarZzh).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzebi
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzecj zzecjVar = (zzecj) zzfhzVarZza3.get();
                    h0 h0Var = h0VarZzh;
                    return new zzebv(zzecjVar, ((zzebt) h0Var.get()).zzb, ((zzebt) h0Var.get()).zza);
                }
            }).zzf(zzbokVarZza).zza();
        }
        zzfkg.zza(zzfhzVarZza, zzfkhVarZzd, zzfjwVarZza2);
        return zzfhzVarZza;
    }

    public final h0 zzd(zzbwa zzbwaVar, int i) {
        zzbou zzbouVarZzb = com.google.android.gms.ads.internal.zzt.zzf().zzb(this.zza, zzcbt.zza(), this.zzf);
        if (!((Boolean) zzbfh.zza.zze()).booleanValue()) {
            return zzgbb.zzg(new Exception("Signal collection disabled."));
        }
        zzevw zzevwVarZzq = this.zzd.zzq(zzbwaVar, i);
        final zzevb zzevbVarZza = zzevwVarZzq.zza();
        zzbok zzbokVarZza = zzbouVarZzb.zza("google.afma.request.getSignals", zzbor.zza, zzbor.zzb);
        zzfjw zzfjwVarZza = zzfjv.zza(this.zza, 22);
        zzfhz zzfhzVarZza = zzevwVarZzq.zzc().zzb(zzfio.GET_SIGNALS, zzgbb.zzh(zzbwaVar.zza)).zze(new zzfkc(zzfjwVarZza)).zzf(new zzgai() { // from class: com.google.android.gms.internal.ads.zzebq
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) throws JSONException {
                return zzevbVarZza.zza(com.google.android.gms.ads.internal.client.zzay.zzb().zzh((Bundle) obj));
            }
        }).zzb(zzfio.JS_SIGNALS).zzf(zzbokVarZza).zza();
        zzfkh zzfkhVarZzd = zzevwVarZzq.zzd();
        zzfkhVarZzd.zzd(zzbwaVar.zza.getStringArrayList("ad_types"));
        zzfkg.zzb(zzfhzVarZza, zzfkhVarZzd, zzfjwVarZza);
        if (((Boolean) zzbev.zze.zze()).booleanValue()) {
            zzeco zzecoVar = this.zzc;
            zzecoVar.getClass();
            zzfhzVarZza.addListener(new zzebo(zzecoVar), this.zzb);
        }
        return zzfhzVarZza;
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zze(zzbwa zzbwaVar, zzbvw zzbvwVar) {
        zzp(zzb(zzbwaVar, Binder.getCallingUid()), zzbvwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzf(zzbwa zzbwaVar, zzbvw zzbvwVar) {
        zzp(zzd(zzbwaVar, Binder.getCallingUid()), zzbvwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzg(zzbwa zzbwaVar, zzbvw zzbvwVar) {
        h0 h0VarZzc = zzc(zzbwaVar, Binder.getCallingUid());
        zzp(h0VarZzc, zzbvwVar);
        if (((Boolean) zzbev.zzc.zze()).booleanValue()) {
            zzeco zzecoVar = this.zzc;
            zzecoVar.getClass();
            h0VarZzc.addListener(new zzebo(zzecoVar), this.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzh(String str, zzbvw zzbvwVar) {
        zzp(zzi(str), zzbvwVar);
    }

    public final h0 zzi(String str) {
        if (((Boolean) zzbfc.zza.zze()).booleanValue()) {
            return zzk(str) == null ? zzgbb.zzg(new Exception("URL to be removed not found for cache key: ".concat(String.valueOf(str)))) : zzgbb.zzh(new zzebr(this));
        }
        return zzgbb.zzg(new Exception("Split request is disabled."));
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ InputStream zzj(h0 h0Var, h0 h0Var2, zzbwa zzbwaVar, zzfjw zzfjwVar) throws Exception {
        String strZzc = ((zzbwd) h0Var.get()).zzc();
        zzn(new zzebt((zzbwd) h0Var.get(), (JSONObject) h0Var2.get(), zzbwaVar.zzh, strZzc, zzfjwVar));
        return new ByteArrayInputStream(strZzc.getBytes(zzftl.zzc));
    }
}
