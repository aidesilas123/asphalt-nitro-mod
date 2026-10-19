package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfkk implements Runnable {

    @GuardedBy("enabledLock")
    @VisibleForTesting
    public static Boolean zzb;
    private final Context zze;
    private final zzcbt zzf;
    private int zzi;
    private final zzdrh zzj;
    private final List zzk;
    private final zzecl zzm;
    private final zzbwm zzn;

    @VisibleForTesting
    public static final Object zza = new Object();
    private static final Object zzc = new Object();
    private static final Object zzd = new Object();

    @GuardedBy("protoLock")
    private final zzfkp zzg = zzfks.zzc();
    private String zzh = "";

    @GuardedBy("initLock")
    private boolean zzl = false;

    public zzfkk(Context context, zzcbt zzcbtVar, zzdrh zzdrhVar, zzecl zzeclVar, zzbwm zzbwmVar) {
        this.zze = context;
        this.zzf = zzcbtVar;
        this.zzj = zzdrhVar;
        this.zzm = zzeclVar;
        this.zzn = zzbwmVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziF)).booleanValue()) {
            this.zzk = com.google.android.gms.ads.internal.util.zzt.zzd();
        } else {
            this.zzk = zzfwu.zzl();
        }
    }

    public static boolean zza() {
        boolean zBooleanValue;
        synchronized (zza) {
            if (zzb == null) {
                if (((Boolean) zzbeo.zzb.zze()).booleanValue()) {
                    zzb = Boolean.valueOf(Math.random() < ((Double) zzbeo.zza.zze()).doubleValue());
                } else {
                    zzb = Boolean.FALSE;
                }
            }
            zBooleanValue = zzb.booleanValue();
        }
        return zBooleanValue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        byte[] bArrZzax;
        if (zza()) {
            Object obj = zzc;
            synchronized (obj) {
                if (this.zzg.zza() == 0) {
                    return;
                }
                try {
                    synchronized (obj) {
                        bArrZzax = ((zzfks) this.zzg.zzal()).zzax();
                        this.zzg.zzc();
                    }
                    new zzeck(this.zze, this.zzf.zza, this.zzn, Binder.getCallingUid()).zza(new zzeci((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziz), 60000, new HashMap(), bArrZzax, "application/x-protobuf", false));
                } catch (Exception e2) {
                    if ((e2 instanceof zzdxn) && ((zzdxn) e2).zza() == 3) {
                        return;
                    }
                    com.google.android.gms.ads.internal.zzt.zzo().zzv(e2, "CuiMonitor.sendCuiPing");
                }
            }
        }
    }

    public final void zzb(@Nullable final zzfka zzfkaVar) {
        zzcca.zza.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfkj
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzc(zzfkaVar);
            }
        });
    }

    final /* synthetic */ void zzc(zzfka zzfkaVar) {
        synchronized (zzd) {
            if (!this.zzl) {
                this.zzl = true;
                if (zza()) {
                    try {
                        com.google.android.gms.ads.internal.zzt.zzp();
                        this.zzh = com.google.android.gms.ads.internal.util.zzt.zzp(this.zze);
                    } catch (RemoteException e2) {
                        com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "CuiMonitor.gettingAppIdFromManifest");
                    }
                    this.zzi = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zze);
                    int iIntValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziA)).intValue();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkW)).booleanValue()) {
                        long j = iIntValue;
                        zzcca.zzd.scheduleWithFixedDelay(this, j, j, TimeUnit.MILLISECONDS);
                    } else {
                        long j2 = iIntValue;
                        zzcca.zzd.scheduleAtFixedRate(this, j2, j2, TimeUnit.MILLISECONDS);
                    }
                }
            }
        }
        if (zza() && zzfkaVar != null) {
            synchronized (zzc) {
                if (this.zzg.zza() >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziB)).intValue()) {
                    return;
                }
                zzfkm zzfkmVarZza = zzfkn.zza();
                zzfkmVarZza.zzt(zzfkaVar.zzl());
                zzfkmVarZza.zzp(zzfkaVar.zzk());
                zzfkmVarZza.zzg(zzfkaVar.zzb());
                zzfkmVarZza.zzv(3);
                zzfkmVarZza.zzm(this.zzf.zza);
                zzfkmVarZza.zzb(this.zzh);
                zzfkmVarZza.zzk(Build.VERSION.RELEASE);
                zzfkmVarZza.zzq(Build.VERSION.SDK_INT);
                zzfkmVarZza.zzu(zzfkaVar.zzn());
                zzfkmVarZza.zzj(zzfkaVar.zza());
                zzfkmVarZza.zze(this.zzi);
                zzfkmVarZza.zzs(zzfkaVar.zzm());
                zzfkmVarZza.zzc(zzfkaVar.zzd());
                zzfkmVarZza.zzf(zzfkaVar.zzf());
                zzfkmVarZza.zzh(zzfkaVar.zzg());
                zzfkmVarZza.zzi(this.zzj.zzc(zzfkaVar.zzg()));
                zzfkmVarZza.zzl(zzfkaVar.zzh());
                zzfkmVarZza.zzd(zzfkaVar.zze());
                zzfkmVarZza.zzr(zzfkaVar.zzj());
                zzfkmVarZza.zzn(zzfkaVar.zzi());
                zzfkmVarZza.zzo(zzfkaVar.zzc());
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziF)).booleanValue()) {
                    zzfkmVarZza.zza(this.zzk);
                }
                zzfkp zzfkpVar = this.zzg;
                zzfkq zzfkqVarZza = zzfkr.zza();
                zzfkqVarZza.zza(zzfkmVarZza);
                zzfkpVar.zzb(zzfkqVarZza);
            }
        }
    }
}
