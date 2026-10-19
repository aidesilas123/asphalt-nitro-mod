package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.h0;
import com.json.o2;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdkk {
    private int zza;
    private com.google.android.gms.ads.internal.client.zzdq zzb;
    private zzbga zzc;
    private View zzd;
    private List zze;
    private com.google.android.gms.ads.internal.client.zzel zzg;
    private Bundle zzh;
    private zzcgv zzi;
    private zzcgv zzj;

    @Nullable
    private zzcgv zzk;

    @Nullable
    private zzflf zzl;

    @Nullable
    private h0 zzm;

    @Nullable
    private zzccf zzn;
    private View zzo;
    private View zzp;
    private IObjectWrapper zzq;
    private double zzr;
    private zzbgi zzs;
    private zzbgi zzt;
    private String zzu;
    private float zzx;

    @Nullable
    private String zzy;
    private final SimpleArrayMap zzv = new SimpleArrayMap();
    private final SimpleArrayMap zzw = new SimpleArrayMap();
    private List zzf = Collections.emptyList();

    @Nullable
    public static zzdkk zzag(zzbqc zzbqcVar) {
        try {
            zzdkj zzdkjVarZzak = zzak(zzbqcVar.zzg(), null);
            zzbga zzbgaVarZzh = zzbqcVar.zzh();
            View view = (View) zzam(zzbqcVar.zzj());
            String strZzo = zzbqcVar.zzo();
            List listZzr = zzbqcVar.zzr();
            String strZzm = zzbqcVar.zzm();
            Bundle bundleZzf = zzbqcVar.zzf();
            String strZzn = zzbqcVar.zzn();
            View view2 = (View) zzam(zzbqcVar.zzk());
            IObjectWrapper iObjectWrapperZzl = zzbqcVar.zzl();
            String strZzq = zzbqcVar.zzq();
            String strZzp = zzbqcVar.zzp();
            double dZze = zzbqcVar.zze();
            zzbgi zzbgiVarZzi = zzbqcVar.zzi();
            zzdkk zzdkkVar = new zzdkk();
            zzdkkVar.zza = 2;
            zzdkkVar.zzb = zzdkjVarZzak;
            zzdkkVar.zzc = zzbgaVarZzh;
            zzdkkVar.zzd = view;
            zzdkkVar.zzZ("headline", strZzo);
            zzdkkVar.zze = listZzr;
            zzdkkVar.zzZ("body", strZzm);
            zzdkkVar.zzh = bundleZzf;
            zzdkkVar.zzZ("call_to_action", strZzn);
            zzdkkVar.zzo = view2;
            zzdkkVar.zzq = iObjectWrapperZzl;
            zzdkkVar.zzZ(o2.h.U, strZzq);
            zzdkkVar.zzZ("price", strZzp);
            zzdkkVar.zzr = dZze;
            zzdkkVar.zzs = zzbgiVarZzi;
            return zzdkkVar;
        } catch (RemoteException e2) {
            zzcbn.zzk("Failed to get native ad from app install ad mapper", e2);
            return null;
        }
    }

    @Nullable
    public static zzdkk zzah(zzbqd zzbqdVar) {
        try {
            zzdkj zzdkjVarZzak = zzak(zzbqdVar.zzf(), null);
            zzbga zzbgaVarZzg = zzbqdVar.zzg();
            View view = (View) zzam(zzbqdVar.zzi());
            String strZzo = zzbqdVar.zzo();
            List listZzp = zzbqdVar.zzp();
            String strZzm = zzbqdVar.zzm();
            Bundle bundleZze = zzbqdVar.zze();
            String strZzn = zzbqdVar.zzn();
            View view2 = (View) zzam(zzbqdVar.zzj());
            IObjectWrapper iObjectWrapperZzk = zzbqdVar.zzk();
            String strZzl = zzbqdVar.zzl();
            zzbgi zzbgiVarZzh = zzbqdVar.zzh();
            zzdkk zzdkkVar = new zzdkk();
            zzdkkVar.zza = 1;
            zzdkkVar.zzb = zzdkjVarZzak;
            zzdkkVar.zzc = zzbgaVarZzg;
            zzdkkVar.zzd = view;
            zzdkkVar.zzZ("headline", strZzo);
            zzdkkVar.zze = listZzp;
            zzdkkVar.zzZ("body", strZzm);
            zzdkkVar.zzh = bundleZze;
            zzdkkVar.zzZ("call_to_action", strZzn);
            zzdkkVar.zzo = view2;
            zzdkkVar.zzq = iObjectWrapperZzk;
            zzdkkVar.zzZ(o2.h.F0, strZzl);
            zzdkkVar.zzt = zzbgiVarZzh;
            return zzdkkVar;
        } catch (RemoteException e2) {
            zzcbn.zzk("Failed to get native ad from content ad mapper", e2);
            return null;
        }
    }

    @Nullable
    public static zzdkk zzai(zzbqc zzbqcVar) {
        try {
            return zzal(zzak(zzbqcVar.zzg(), null), zzbqcVar.zzh(), (View) zzam(zzbqcVar.zzj()), zzbqcVar.zzo(), zzbqcVar.zzr(), zzbqcVar.zzm(), zzbqcVar.zzf(), zzbqcVar.zzn(), (View) zzam(zzbqcVar.zzk()), zzbqcVar.zzl(), zzbqcVar.zzq(), zzbqcVar.zzp(), zzbqcVar.zze(), zzbqcVar.zzi(), null, 0.0f);
        } catch (RemoteException e2) {
            zzcbn.zzk("Failed to get native ad assets from app install ad mapper", e2);
            return null;
        }
    }

    @Nullable
    public static zzdkk zzaj(zzbqd zzbqdVar) {
        try {
            return zzal(zzak(zzbqdVar.zzf(), null), zzbqdVar.zzg(), (View) zzam(zzbqdVar.zzi()), zzbqdVar.zzo(), zzbqdVar.zzp(), zzbqdVar.zzm(), zzbqdVar.zze(), zzbqdVar.zzn(), (View) zzam(zzbqdVar.zzj()), zzbqdVar.zzk(), null, null, -1.0d, zzbqdVar.zzh(), zzbqdVar.zzl(), 0.0f);
        } catch (RemoteException e2) {
            zzcbn.zzk("Failed to get native ad assets from content ad mapper", e2);
            return null;
        }
    }

    @Nullable
    private static zzdkj zzak(com.google.android.gms.ads.internal.client.zzdq zzdqVar, @Nullable zzbqg zzbqgVar) {
        if (zzdqVar == null) {
            return null;
        }
        return new zzdkj(zzdqVar, zzbqgVar);
    }

    private static zzdkk zzal(com.google.android.gms.ads.internal.client.zzdq zzdqVar, zzbga zzbgaVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, IObjectWrapper iObjectWrapper, String str4, String str5, double d2, zzbgi zzbgiVar, String str6, float f2) {
        zzdkk zzdkkVar = new zzdkk();
        zzdkkVar.zza = 6;
        zzdkkVar.zzb = zzdqVar;
        zzdkkVar.zzc = zzbgaVar;
        zzdkkVar.zzd = view;
        zzdkkVar.zzZ("headline", str);
        zzdkkVar.zze = list;
        zzdkkVar.zzZ("body", str2);
        zzdkkVar.zzh = bundle;
        zzdkkVar.zzZ("call_to_action", str3);
        zzdkkVar.zzo = view2;
        zzdkkVar.zzq = iObjectWrapper;
        zzdkkVar.zzZ(o2.h.U, str4);
        zzdkkVar.zzZ("price", str5);
        zzdkkVar.zzr = d2;
        zzdkkVar.zzs = zzbgiVar;
        zzdkkVar.zzZ(o2.h.F0, str6);
        zzdkkVar.zzR(f2);
        return zzdkkVar;
    }

    private static Object zzam(@Nullable IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return ObjectWrapper.unwrap(iObjectWrapper);
    }

    @Nullable
    public static zzdkk zzt(zzbqg zzbqgVar) {
        try {
            return zzal(zzak(zzbqgVar.zzj(), zzbqgVar), zzbqgVar.zzk(), (View) zzam(zzbqgVar.zzm()), zzbqgVar.zzs(), zzbqgVar.zzv(), zzbqgVar.zzq(), zzbqgVar.zzi(), zzbqgVar.zzr(), (View) zzam(zzbqgVar.zzn()), zzbqgVar.zzo(), zzbqgVar.zzu(), zzbqgVar.zzt(), zzbqgVar.zze(), zzbqgVar.zzl(), zzbqgVar.zzp(), zzbqgVar.zzf());
        } catch (RemoteException e2) {
            zzcbn.zzk("Failed to get native ad assets from unified ad mapper", e2);
            return null;
        }
    }

    public final synchronized String zzA() {
        return this.zzu;
    }

    public final synchronized String zzB() {
        return zzF("headline");
    }

    @Nullable
    public final synchronized String zzC() {
        return this.zzy;
    }

    public final synchronized String zzD() {
        return zzF("price");
    }

    public final synchronized String zzE() {
        return zzF(o2.h.U);
    }

    public final synchronized String zzF(String str) {
        return (String) this.zzw.get(str);
    }

    public final synchronized List zzG() {
        return this.zze;
    }

    public final synchronized List zzH() {
        return this.zzf;
    }

    public final synchronized void zzI() {
        zzcgv zzcgvVar = this.zzi;
        if (zzcgvVar != null) {
            zzcgvVar.destroy();
            this.zzi = null;
        }
        zzcgv zzcgvVar2 = this.zzj;
        if (zzcgvVar2 != null) {
            zzcgvVar2.destroy();
            this.zzj = null;
        }
        zzcgv zzcgvVar3 = this.zzk;
        if (zzcgvVar3 != null) {
            zzcgvVar3.destroy();
            this.zzk = null;
        }
        h0 h0Var = this.zzm;
        if (h0Var != null) {
            h0Var.cancel(false);
            this.zzm = null;
        }
        zzccf zzccfVar = this.zzn;
        if (zzccfVar != null) {
            zzccfVar.cancel(false);
            this.zzn = null;
        }
        this.zzl = null;
        this.zzv.clear();
        this.zzw.clear();
        this.zzb = null;
        this.zzc = null;
        this.zzd = null;
        this.zze = null;
        this.zzh = null;
        this.zzo = null;
        this.zzp = null;
        this.zzq = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
    }

    public final synchronized void zzJ(zzbga zzbgaVar) {
        this.zzc = zzbgaVar;
    }

    public final synchronized void zzK(String str) {
        this.zzu = str;
    }

    public final synchronized void zzL(@Nullable com.google.android.gms.ads.internal.client.zzel zzelVar) {
        this.zzg = zzelVar;
    }

    public final synchronized void zzM(zzbgi zzbgiVar) {
        this.zzs = zzbgiVar;
    }

    public final synchronized void zzN(String str, zzbfu zzbfuVar) {
        if (zzbfuVar == null) {
            this.zzv.remove(str);
        } else {
            this.zzv.put(str, zzbfuVar);
        }
    }

    public final synchronized void zzO(zzcgv zzcgvVar) {
        this.zzj = zzcgvVar;
    }

    public final synchronized void zzP(List list) {
        this.zze = list;
    }

    public final synchronized void zzQ(zzbgi zzbgiVar) {
        this.zzt = zzbgiVar;
    }

    public final synchronized void zzR(float f2) {
        this.zzx = f2;
    }

    public final synchronized void zzS(List list) {
        this.zzf = list;
    }

    public final synchronized void zzT(zzcgv zzcgvVar) {
        this.zzk = zzcgvVar;
    }

    public final synchronized void zzU(h0 h0Var) {
        this.zzm = h0Var;
    }

    public final synchronized void zzV(@Nullable String str) {
        this.zzy = str;
    }

    public final synchronized void zzW(zzflf zzflfVar) {
        this.zzl = zzflfVar;
    }

    public final synchronized void zzX(zzccf zzccfVar) {
        this.zzn = zzccfVar;
    }

    public final synchronized void zzY(double d2) {
        this.zzr = d2;
    }

    public final synchronized void zzZ(String str, String str2) {
        if (str2 == null) {
            this.zzw.remove(str);
        } else {
            this.zzw.put(str, str2);
        }
    }

    public final synchronized double zza() {
        return this.zzr;
    }

    public final synchronized void zzaa(int i) {
        this.zza = i;
    }

    public final synchronized void zzab(com.google.android.gms.ads.internal.client.zzdq zzdqVar) {
        this.zzb = zzdqVar;
    }

    public final synchronized void zzac(View view) {
        this.zzo = view;
    }

    public final synchronized void zzad(zzcgv zzcgvVar) {
        this.zzi = zzcgvVar;
    }

    public final synchronized void zzae(View view) {
        this.zzp = view;
    }

    public final synchronized boolean zzaf() {
        return this.zzj != null;
    }

    public final synchronized float zzb() {
        return this.zzx;
    }

    public final synchronized int zzc() {
        return this.zza;
    }

    public final synchronized Bundle zzd() {
        if (this.zzh == null) {
            this.zzh = new Bundle();
        }
        return this.zzh;
    }

    public final synchronized View zze() {
        return this.zzd;
    }

    public final synchronized View zzf() {
        return this.zzo;
    }

    public final synchronized View zzg() {
        return this.zzp;
    }

    public final synchronized SimpleArrayMap zzh() {
        return this.zzv;
    }

    public final synchronized SimpleArrayMap zzi() {
        return this.zzw;
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzdq zzj() {
        return this.zzb;
    }

    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzel zzk() {
        return this.zzg;
    }

    public final synchronized zzbga zzl() {
        return this.zzc;
    }

    @Nullable
    public final zzbgi zzm() {
        List list = this.zze;
        if (list == null || list.isEmpty()) {
            return null;
        }
        Object obj = this.zze.get(0);
        if (obj instanceof IBinder) {
            return zzbgh.zzg((IBinder) obj);
        }
        return null;
    }

    public final synchronized zzbgi zzn() {
        return this.zzs;
    }

    public final synchronized zzbgi zzo() {
        return this.zzt;
    }

    @Nullable
    public final synchronized zzccf zzp() {
        return this.zzn;
    }

    public final synchronized zzcgv zzq() {
        return this.zzj;
    }

    @Nullable
    public final synchronized zzcgv zzr() {
        return this.zzk;
    }

    public final synchronized zzcgv zzs() {
        return this.zzi;
    }

    @Nullable
    public final synchronized zzflf zzu() {
        return this.zzl;
    }

    public final synchronized IObjectWrapper zzv() {
        return this.zzq;
    }

    @Nullable
    public final synchronized h0 zzw() {
        return this.zzm;
    }

    public final synchronized String zzx() {
        return zzF(o2.h.F0);
    }

    public final synchronized String zzy() {
        return zzF("body");
    }

    public final synchronized String zzz() {
        return zzF("call_to_action");
    }
}
