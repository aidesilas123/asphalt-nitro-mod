package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.h0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdkf extends zzctr {
    public static final zzfwu zzc = zzfwu.zzq("3010", "3008", "1005", "1009", "2011", "2007");
    private final zzavs zzA;
    private final Executor zzd;
    private final zzdkk zze;
    private final zzdks zzf;
    private final zzdlk zzg;
    private final zzdkp zzh;
    private final zzdkv zzi;
    private final zzhdj zzj;
    private final zzhdj zzk;
    private final zzhdj zzl;
    private final zzhdj zzm;
    private final zzhdj zzn;
    private zzdmg zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private final zzbza zzs;
    private final zzasi zzt;
    private final zzcbt zzu;
    private final Context zzv;
    private final zzdkh zzw;
    private final zzenp zzx;
    private final Map zzy;
    private final List zzz;

    public zzdkf(zzctq zzctqVar, Executor executor, zzdkk zzdkkVar, zzdks zzdksVar, zzdlk zzdlkVar, zzdkp zzdkpVar, zzdkv zzdkvVar, zzhdj zzhdjVar, zzhdj zzhdjVar2, zzhdj zzhdjVar3, zzhdj zzhdjVar4, zzhdj zzhdjVar5, zzbza zzbzaVar, zzasi zzasiVar, zzcbt zzcbtVar, Context context, zzdkh zzdkhVar, zzenp zzenpVar, zzavs zzavsVar) {
        super(zzctqVar);
        this.zzd = executor;
        this.zze = zzdkkVar;
        this.zzf = zzdksVar;
        this.zzg = zzdlkVar;
        this.zzh = zzdkpVar;
        this.zzi = zzdkvVar;
        this.zzj = zzhdjVar;
        this.zzk = zzhdjVar2;
        this.zzl = zzhdjVar3;
        this.zzm = zzhdjVar4;
        this.zzn = zzhdjVar5;
        this.zzs = zzbzaVar;
        this.zzt = zzasiVar;
        this.zzu = zzcbtVar;
        this.zzv = context;
        this.zzw = zzdkhVar;
        this.zzx = zzenpVar;
        this.zzy = new HashMap();
        this.zzz = new ArrayList();
        this.zzA = zzavsVar;
    }

    public static boolean zzW(View view) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjT)).booleanValue()) {
            return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        long jZzv = com.google.android.gms.ads.internal.util.zzt.zzv(view);
        if (view.isShown() && view.getGlobalVisibleRect(new Rect(), null)) {
            if (jZzv >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjU)).intValue()) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    private final synchronized View zzY(Map map) {
        if (map != null) {
            zzfwu zzfwuVar = zzc;
            int size = zzfwuVar.size();
            int i = 0;
            while (i < size) {
                WeakReference weakReference = (WeakReference) map.get((String) zzfwuVar.get(i));
                i++;
                if (weakReference != null) {
                    return (View) weakReference.get();
                }
            }
        }
        return null;
    }

    @Nullable
    private final synchronized ImageView.ScaleType zzZ() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhP)).booleanValue()) {
            return null;
        }
        zzdmg zzdmgVar = this.zzo;
        if (zzdmgVar == null) {
            zzcbn.zze("Ad should be associated with an ad view before calling getMediaviewScaleType()");
            return null;
        }
        IObjectWrapper iObjectWrapperZzj = zzdmgVar.zzj();
        if (iObjectWrapperZzj != null) {
            return (ImageView.ScaleType) ObjectWrapper.unwrap(iObjectWrapperZzj);
        }
        return zzdlk.zza;
    }

    private final void zzaa(String str, boolean z) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeZ)).booleanValue()) {
            zzf("Google", true);
            return;
        }
        h0 h0VarZzw = this.zze.zzw();
        if (h0VarZzw == null) {
            return;
        }
        zzgbb.zzr(h0VarZzw, new zzdkd(this, "Google", true), this.zzd);
    }

    private final synchronized void zzab(View view, Map map, Map map2) {
        this.zzg.zzd(this.zzo);
        this.zzf.zzq(view, map, map2, zzZ());
        this.zzq = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzac(View view, @Nullable zzflf zzflfVar) {
        zzcgv zzcgvVarZzr = this.zze.zzr();
        if (!this.zzh.zzd() || zzflfVar == null || zzcgvVarZzr == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzA().zzh(zzflfVar, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzad, reason: merged with bridge method [inline-methods] */
    public final synchronized void zzy(zzdmg zzdmgVar) {
        Iterator<String> itKeys;
        View view;
        if (!this.zzp) {
            this.zzo = zzdmgVar;
            this.zzg.zze(zzdmgVar);
            this.zzf.zzy(zzdmgVar.zzf(), zzdmgVar.zzm(), zzdmgVar.zzn(), zzdmgVar, zzdmgVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzct)).booleanValue()) {
                this.zzt.zzc().zzo(zzdmgVar.zzf());
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbI)).booleanValue()) {
                zzfdu zzfduVar = this.zzb;
                if (zzfduVar.zzal && (itKeys = zzfduVar.zzak.keys()) != null) {
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        WeakReference weakReference = (WeakReference) this.zzo.zzl().get(next);
                        this.zzy.put(next, Boolean.FALSE);
                        if (weakReference != null && (view = (View) weakReference.get()) != null) {
                            zzavr zzavrVar = new zzavr(this.zzv, view);
                            this.zzz.add(zzavrVar);
                            zzavrVar.zzc(new zzdkc(this, next));
                        }
                    }
                }
            }
            if (zzdmgVar.zzi() != null) {
                zzdmgVar.zzi().zzc(this.zzs);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzae, reason: merged with bridge method [inline-methods] */
    public final void zzz(zzdmg zzdmgVar) {
        this.zzf.zzz(zzdmgVar.zzf(), zzdmgVar.zzl());
        if (zzdmgVar.zzh() != null) {
            zzdmgVar.zzh().setClickable(false);
            zzdmgVar.zzh().removeAllViews();
        }
        if (zzdmgVar.zzi() != null) {
            zzdmgVar.zzi().zze(this.zzs);
        }
        this.zzo = null;
    }

    public static /* synthetic */ void zzr(zzdkf zzdkfVar) {
        try {
            zzdkk zzdkkVar = zzdkfVar.zze;
            int iZzc = zzdkkVar.zzc();
            if (iZzc == 1) {
                if (zzdkfVar.zzi.zzb() != null) {
                    zzdkfVar.zzaa("Google", true);
                    zzdkfVar.zzi.zzb().zze((zzbgz) zzdkfVar.zzj.zzb());
                    return;
                }
                return;
            }
            if (iZzc == 2) {
                if (zzdkfVar.zzi.zza() != null) {
                    zzdkfVar.zzaa("Google", true);
                    zzdkfVar.zzi.zza().zze((zzbgx) zzdkfVar.zzk.zzb());
                    return;
                }
                return;
            }
            if (iZzc == 3) {
                if (zzdkfVar.zzi.zzd(zzdkkVar.zzA()) != null) {
                    if (zzdkfVar.zze.zzs() != null) {
                        zzdkfVar.zzf("Google", true);
                    }
                    zzdkfVar.zzi.zzd(zzdkfVar.zze.zzA()).zze((zzbhc) zzdkfVar.zzn.zzb());
                    return;
                }
                return;
            }
            if (iZzc == 6) {
                if (zzdkfVar.zzi.zzf() != null) {
                    zzdkfVar.zzaa("Google", true);
                    zzdkfVar.zzi.zzf().zze((zzbif) zzdkfVar.zzl.zzb());
                    return;
                }
                return;
            }
            if (iZzc != 7) {
                zzcbn.zzg("Wrong native template id!");
                return;
            }
            zzdkv zzdkvVar = zzdkfVar.zzi;
            if (zzdkvVar.zzg() != null) {
                zzdkvVar.zzg().zzg((zzbmp) zzdkfVar.zzm.zzb());
            }
        } catch (RemoteException e2) {
            zzcbn.zzh("RemoteException when notifyAdLoad is called", e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0047 A[Catch: all -> 0x00ee, TryCatch #0 {, blocks: (B:3:0x0001, B:6:0x0007, B:8:0x0019, B:10:0x001f, B:11:0x0029, B:13:0x002f, B:17:0x0047, B:20:0x005b, B:21:0x0063, B:23:0x0069, B:25:0x007d, B:27:0x0083, B:30:0x0088, B:32:0x008e, B:35:0x0093, B:37:0x00a5, B:39:0x00ab, B:42:0x00b0, B:44:0x00c2, B:46:0x00ce, B:48:0x00d8, B:50:0x00e2, B:55:0x00e9), top: B:61:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0088 A[Catch: all -> 0x00ee, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:6:0x0007, B:8:0x0019, B:10:0x001f, B:11:0x0029, B:13:0x002f, B:17:0x0047, B:20:0x005b, B:21:0x0063, B:23:0x0069, B:25:0x007d, B:27:0x0083, B:30:0x0088, B:32:0x008e, B:35:0x0093, B:37:0x00a5, B:39:0x00ab, B:42:0x00b0, B:44:0x00c2, B:46:0x00ce, B:48:0x00d8, B:50:0x00e2, B:55:0x00e9), top: B:61:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void zzA(android.view.View r4, java.util.Map r5, java.util.Map r6, boolean r7) {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdkf.zzA(android.view.View, java.util.Map, java.util.Map, boolean):void");
    }

    public final synchronized void zzB(@Nullable com.google.android.gms.ads.internal.client.zzcw zzcwVar) {
        this.zzf.zzj(zzcwVar);
    }

    public final synchronized void zzC(View view, View view2, Map map, Map map2, boolean z) {
        this.zzg.zzc(this.zzo);
        this.zzf.zzk(view, view2, map, map2, z, zzZ());
        if (this.zzr) {
            zzdkk zzdkkVar = this.zze;
            if (zzdkkVar.zzs() != null) {
                zzdkkVar.zzs().zzd("onSdkAdUserInteractionClick", new ArrayMap());
            }
        }
    }

    public final synchronized void zzD(@Nullable final View view, final int i) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkG)).booleanValue()) {
            zzdmg zzdmgVar = this.zzo;
            if (zzdmgVar == null) {
                zzcbn.zze("Ad should be associated with an ad view before calling performClickForCustomGesture()");
            } else {
                final boolean z = zzdmgVar instanceof zzdle;
                this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjz
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzw(view, z, i);
                    }
                });
            }
        }
    }

    public final synchronized void zzE(String str) {
        this.zzf.zzl(str);
    }

    public final synchronized void zzF(Bundle bundle) {
        this.zzf.zzm(bundle);
    }

    public final synchronized void zzG() {
        zzdmg zzdmgVar = this.zzo;
        if (zzdmgVar == null) {
            zzcbn.zze("Ad should be associated with an ad view before calling recordCustomClickGesture()");
        } else {
            final boolean z = zzdmgVar instanceof zzdle;
            this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdkb
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzx(z);
                }
            });
        }
    }

    public final synchronized void zzH() {
        if (this.zzq) {
            return;
        }
        this.zzf.zzr();
    }

    public final void zzI(View view) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeZ)).booleanValue()) {
            zzac(view, this.zze.zzu());
            return;
        }
        zzccf zzccfVarZzp = this.zze.zzp();
        if (zzccfVarZzp == null) {
            return;
        }
        zzgbb.zzr(zzccfVarZzp, new zzdke(this, view), this.zzd);
    }

    public final synchronized void zzJ(View view, MotionEvent motionEvent, View view2) {
        this.zzf.zzs(view, motionEvent, view2);
    }

    public final synchronized void zzK(Bundle bundle) {
        this.zzf.zzt(bundle);
    }

    public final synchronized void zzL(View view) {
        this.zzf.zzu(view);
    }

    public final synchronized void zzM() {
        this.zzf.zzv();
    }

    public final synchronized void zzN(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        this.zzf.zzw(zzcsVar);
    }

    public final synchronized void zzO(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        this.zzx.zza(zzdgVar);
    }

    public final synchronized void zzP(zzbic zzbicVar) {
        this.zzf.zzx(zzbicVar);
    }

    public final synchronized void zzQ(final zzdmg zzdmgVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbG)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjv
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzy(zzdmgVar);
                }
            });
        } else {
            zzy(zzdmgVar);
        }
    }

    public final synchronized void zzR(final zzdmg zzdmgVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbG)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjw
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzz(zzdmgVar);
                }
            });
        } else {
            zzz(zzdmgVar);
        }
    }

    public final boolean zzS() {
        return this.zzh.zze();
    }

    public final synchronized boolean zzT() {
        return this.zzf.zzA();
    }

    public final synchronized boolean zzU() {
        return this.zzf.zzB();
    }

    public final boolean zzV() {
        return this.zzh.zzd();
    }

    public final synchronized boolean zzX(Bundle bundle) {
        if (this.zzq) {
            return true;
        }
        boolean zZzC = this.zzf.zzC(bundle);
        this.zzq = zZzC;
        return zZzC;
    }

    public final synchronized int zza() {
        return this.zzf.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzctr
    public final synchronized void zzb() {
        this.zzp = true;
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdka
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzv();
            }
        });
        super.zzb();
    }

    public final zzdkh zzc() {
        return this.zzw;
    }

    @Nullable
    public final zzflf zzf(String str, boolean z) {
        String str2;
        zzefq zzefqVar;
        zzefp zzefpVar;
        if (!this.zzh.zzd() || TextUtils.isEmpty(str)) {
            return null;
        }
        zzdkk zzdkkVar = this.zze;
        zzcgv zzcgvVarZzr = zzdkkVar.zzr();
        zzcgv zzcgvVarZzs = zzdkkVar.zzs();
        if (zzcgvVarZzr == null && zzcgvVarZzs == null) {
            zzcbn.zzj("Omid display and video webview are null. Skipping initialization.");
            return null;
        }
        boolean z2 = false;
        boolean z3 = zzcgvVarZzr != null;
        boolean z4 = zzcgvVarZzs != null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeX)).booleanValue()) {
            this.zzh.zza();
            int iZzb = this.zzh.zza().zzb();
            int i = iZzb - 1;
            if (i != 0) {
                if (i != 1) {
                    zzcbn.zzj("Unknown omid media type: " + (iZzb != 1 ? iZzb != 2 ? "UNKNOWN" : "DISPLAY" : ShareConstants.VIDEO_URL) + ". Not initializing Omid.");
                    return null;
                }
                if (zzcgvVarZzr == null) {
                    zzcbn.zzj("Omid media type was display but there was no display webview.");
                    return null;
                }
                z2 = true;
                z4 = false;
            } else {
                if (zzcgvVarZzs == null) {
                    zzcbn.zzj("Omid media type was video but there was no video webview.");
                    return null;
                }
                z4 = true;
            }
        } else {
            z2 = z3;
        }
        if (z2) {
            str2 = null;
        } else {
            str2 = "javascript";
            zzcgvVarZzr = zzcgvVarZzs;
        }
        zzcgvVarZzr.zzG();
        if (!com.google.android.gms.ads.internal.zzt.zzA().zzj(this.zzv)) {
            zzcbn.zzj("Failed to initialize omid in InternalNativeAd");
            return null;
        }
        zzcbt zzcbtVar = this.zzu;
        String str3 = zzcbtVar.zzb + "." + zzcbtVar.zzc;
        if (z4) {
            zzefpVar = zzefp.VIDEO;
            zzefqVar = zzefq.DEFINED_BY_JAVASCRIPT;
        } else {
            zzdkk zzdkkVar2 = this.zze;
            zzefp zzefpVar2 = zzefp.NATIVE_DISPLAY;
            zzefqVar = zzdkkVar2.zzc() == 3 ? zzefq.UNSPECIFIED : zzefq.ONE_PIXEL;
            zzefpVar = zzefpVar2;
        }
        zzflf zzflfVarZzb = com.google.android.gms.ads.internal.zzt.zzA().zzb(str3, zzcgvVarZzr.zzG(), "", "javascript", str2, str, zzefqVar, zzefpVar, this.zzb.zzam);
        if (zzflfVarZzb == null) {
            zzcbn.zzj("Failed to create omid session in InternalNativeAd");
            return null;
        }
        this.zze.zzW(zzflfVarZzb);
        zzcgvVarZzr.zzap(zzflfVarZzb);
        if (z4) {
            com.google.android.gms.ads.internal.zzt.zzA().zzh(zzflfVarZzb, zzcgvVarZzs.zzF());
            this.zzr = true;
        }
        if (z) {
            com.google.android.gms.ads.internal.zzt.zzA().zzi(zzflfVarZzb);
            zzcgvVarZzr.zzd("onSdkLoaded", new ArrayMap());
        }
        return zzflfVarZzb;
    }

    public final String zzg() {
        return this.zzh.zzb();
    }

    public final synchronized JSONObject zzi(View view, Map map, Map map2) {
        return this.zzf.zze(view, map, map2, zzZ());
    }

    @Override // com.google.android.gms.internal.ads.zzctr
    @AnyThread
    public final void zzj() {
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjx
            @Override // java.lang.Runnable
            public final void run() {
                zzdkf.zzr(this.zza);
            }
        });
        if (this.zze.zzc() != 7) {
            Executor executor = this.zzd;
            final zzdks zzdksVar = this.zzf;
            zzdksVar.getClass();
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjy
                @Override // java.lang.Runnable
                public final void run() {
                    zzdksVar.zzp();
                }
            });
        }
        super.zzj();
    }

    public final synchronized JSONObject zzk(View view, Map map, Map map2) {
        return this.zzf.zzf(view, map, map2, zzZ());
    }

    public final void zzt(View view) {
        zzflf zzflfVarZzu = this.zze.zzu();
        if (!this.zzh.zzd() || zzflfVarZzu == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzA().zzf(zzflfVarZzu, view);
    }

    public final synchronized void zzu() {
        this.zzf.zzh();
    }

    final /* synthetic */ void zzv() {
        this.zzf.zzi();
        this.zze.zzI();
    }

    final /* synthetic */ void zzw(View view, boolean z, int i) {
        this.zzf.zzo(view, this.zzo.zzf(), this.zzo.zzl(), this.zzo.zzm(), z, zzZ(), i);
    }

    final /* synthetic */ void zzx(boolean z) {
        this.zzf.zzo(null, this.zzo.zzf(), this.zzo.zzl(), this.zzo.zzm(), z, zzZ(), 0);
    }
}
