package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzenu extends com.google.android.gms.ads.internal.client.zzbt {
    private final com.google.android.gms.ads.internal.client.zzq zza;
    private final Context zzb;
    private final zzfbx zzc;
    private final String zzd;
    private final zzcbt zze;
    private final zzenm zzf;
    private final zzfcx zzg;
    private final zzasi zzh;
    private final zzdtp zzi;

    @Nullable
    private zzdgx zzj;
    private boolean zzk = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaC)).booleanValue();

    public zzenu(Context context, com.google.android.gms.ads.internal.client.zzq zzqVar, String str, zzfbx zzfbxVar, zzenm zzenmVar, zzfcx zzfcxVar, zzcbt zzcbtVar, zzasi zzasiVar, zzdtp zzdtpVar) {
        this.zza = zzqVar;
        this.zzd = str;
        this.zzb = context;
        this.zzc = zzfbxVar;
        this.zzf = zzenmVar;
        this.zzg = zzfcxVar;
        this.zze = zzcbtVar;
        this.zzh = zzasiVar;
        this.zzi = zzdtpVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final synchronized boolean zze() {
        /*
            r1 = this;
            monitor-enter(r1)
            com.google.android.gms.internal.ads.zzdgx r0 = r1.zzj     // Catch: java.lang.Throwable -> L10
            if (r0 == 0) goto Le
            boolean r0 = r0.zza()     // Catch: java.lang.Throwable -> L10
            if (r0 != 0) goto Le
            r0 = 1
        Lc:
            monitor-exit(r1)
            return r0
        Le:
            r0 = 0
            goto Lc
        L10:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzenu.zze():boolean");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzA() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzB() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        zzdgx zzdgxVar = this.zzj;
        if (zzdgxVar != null) {
            zzdgxVar.zzm().zzc(null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzC(com.google.android.gms.ads.internal.client.zzbe zzbeVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzD(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzf.zzj(zzbhVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzE(com.google.android.gms.ads.internal.client.zzby zzbyVar) {
        Preconditions.checkMainThread("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzF(com.google.android.gms.ads.internal.client.zzq zzqVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzG(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.zzf.zzm(zzcbVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzH(zzaxm zzaxmVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzI(com.google.android.gms.ads.internal.client.zzw zzwVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzJ(com.google.android.gms.ads.internal.client.zzci zzciVar) {
        this.zzf.zzn(zzciVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzK(com.google.android.gms.ads.internal.client.zzdu zzduVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzL(boolean z) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.zzk = z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzM(zzbty zzbtyVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzN(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzO(zzbea zzbeaVar) {
        Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzc.zzi(zzbeaVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzP(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        Preconditions.checkMainThread("setPaidEventListener must be called on the main UI thread.");
        try {
            if (!zzdgVar.zzf()) {
                this.zzi.zze();
            }
        } catch (RemoteException e2) {
            zzcbn.zzf("Error in making CSI ping for reporting paid event callback", e2);
        }
        this.zzf.zzl(zzdgVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzQ(zzbub zzbubVar, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzR(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzS(zzbww zzbwwVar) {
        this.zzg.zzm(zzbwwVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzT(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzU(com.google.android.gms.ads.internal.client.zzfl zzflVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzW(IObjectWrapper iObjectWrapper) {
        if (this.zzj == null) {
            zzcbn.zzj("Interstitial can not be shown before loaded.");
            this.zzf.zzp(zzffr.zzd(9, null, null));
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcx)).booleanValue()) {
            this.zzh.zzc().zzn(new Throwable().getStackTrace());
        }
        this.zzj.zzc(this.zzk, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzX() {
        Preconditions.checkMainThread("showInterstitial must be called on the main UI thread.");
        if (this.zzj == null) {
            zzcbn.zzj("Interstitial can not be shown before loaded.");
            this.zzf.zzp(zzffr.zzd(9, null, null));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcx)).booleanValue()) {
                this.zzh.zzc().zzn(new Throwable().getStackTrace());
            }
            this.zzj.zzc(this.zzk, null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized boolean zzY() {
        return this.zzc.zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized boolean zzZ() {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return zze();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // com.google.android.gms.ads.internal.client.zzbu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean zzaa(com.google.android.gms.ads.internal.client.zzl r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            com.google.android.gms.internal.ads.zzbeh r0 = com.google.android.gms.internal.ads.zzbet.zzi     // Catch: java.lang.Throwable -> L8b
            java.lang.Object r0 = r0.zze()     // Catch: java.lang.Throwable -> L8b
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L8b
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L8b
            r1 = 0
            if (r0 == 0) goto L24
            com.google.android.gms.internal.ads.zzbcu r0 = com.google.android.gms.internal.ads.zzbdc.zzkt     // Catch: java.lang.Throwable -> L8b
            com.google.android.gms.internal.ads.zzbda r2 = com.google.android.gms.ads.internal.client.zzba.zzc()     // Catch: java.lang.Throwable -> L8b
            java.lang.Object r0 = r2.zza(r0)     // Catch: java.lang.Throwable -> L8b
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L8b
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L8b
            if (r0 == 0) goto L24
            r0 = 1
            goto L25
        L24:
            r0 = 0
        L25:
            com.google.android.gms.internal.ads.zzcbt r2 = r5.zze     // Catch: java.lang.Throwable -> L8b
            int r2 = r2.zzc     // Catch: java.lang.Throwable -> L8b
            com.google.android.gms.internal.ads.zzbcu r3 = com.google.android.gms.internal.ads.zzbdc.zzku     // Catch: java.lang.Throwable -> L8b
            com.google.android.gms.internal.ads.zzbda r4 = com.google.android.gms.ads.internal.client.zzba.zzc()     // Catch: java.lang.Throwable -> L8b
            java.lang.Object r3 = r4.zza(r3)     // Catch: java.lang.Throwable -> L8b
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch: java.lang.Throwable -> L8b
            int r3 = r3.intValue()     // Catch: java.lang.Throwable -> L8b
            if (r2 < r3) goto L3d
            if (r0 != 0) goto L42
        L3d:
            java.lang.String r0 = "loadAd must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L8b
        L42:
            com.google.android.gms.ads.internal.zzt.zzp()     // Catch: java.lang.Throwable -> L8b
            android.content.Context r0 = r5.zzb     // Catch: java.lang.Throwable -> L8b
            boolean r0 = com.google.android.gms.ads.internal.util.zzt.zzG(r0)     // Catch: java.lang.Throwable -> L8b
            r2 = 0
            if (r0 == 0) goto L64
            com.google.android.gms.ads.internal.client.zzc r0 = r6.zzs     // Catch: java.lang.Throwable -> L8b
            if (r0 != 0) goto L64
            java.lang.String r6 = "Failed to load the ad because app ID is missing."
            com.google.android.gms.internal.ads.zzcbn.zzg(r6)     // Catch: java.lang.Throwable -> L8b
            com.google.android.gms.internal.ads.zzenm r6 = r5.zzf     // Catch: java.lang.Throwable -> L8b
            if (r6 == 0) goto L89
            r0 = 4
            com.google.android.gms.ads.internal.client.zze r0 = com.google.android.gms.internal.ads.zzffr.zzd(r0, r2, r2)     // Catch: java.lang.Throwable -> L8b
            r6.zzbG(r0)     // Catch: java.lang.Throwable -> L8b
            goto L89
        L64:
            boolean r0 = r5.zze()     // Catch: java.lang.Throwable -> L8b
            if (r0 != 0) goto L89
            android.content.Context r0 = r5.zzb     // Catch: java.lang.Throwable -> L8b
            boolean r1 = r6.zzf     // Catch: java.lang.Throwable -> L8b
            com.google.android.gms.internal.ads.zzffl.zza(r0, r1)     // Catch: java.lang.Throwable -> L8b
            r5.zzj = r2     // Catch: java.lang.Throwable -> L8b
            com.google.android.gms.internal.ads.zzfbx r0 = r5.zzc     // Catch: java.lang.Throwable -> L8b
            java.lang.String r1 = r5.zzd     // Catch: java.lang.Throwable -> L8b
            com.google.android.gms.ads.internal.client.zzq r2 = r5.zza     // Catch: java.lang.Throwable -> L8b
            com.google.android.gms.internal.ads.zzfbq r3 = new com.google.android.gms.internal.ads.zzfbq     // Catch: java.lang.Throwable -> L8b
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L8b
            com.google.android.gms.internal.ads.zzent r2 = new com.google.android.gms.internal.ads.zzent     // Catch: java.lang.Throwable -> L8b
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L8b
            boolean r6 = r0.zzb(r6, r1, r3, r2)     // Catch: java.lang.Throwable -> L8b
            monitor-exit(r5)
            return r6
        L89:
            monitor-exit(r5)
            return r1
        L8b:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzenu.zzaa(com.google.android.gms.ads.internal.client.zzl):boolean");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzab(com.google.android.gms.ads.internal.client.zzcf zzcfVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final Bundle zzd() {
        Preconditions.checkMainThread("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzq zzg() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzbh zzi() {
        return this.zzf.zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzcb zzj() {
        return this.zzf.zzi();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzdn zzk() {
        zzdgx zzdgxVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgM)).booleanValue() && (zzdgxVar = this.zzj) != null) {
            return zzdgxVar.zzl();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzdq zzl() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final IObjectWrapper zzn() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String zzr() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final synchronized String zzs() {
        zzdgx zzdgxVar = this.zzj;
        if (zzdgxVar == null || zzdgxVar.zzl() == null) {
            return null;
        }
        return zzdgxVar.zzl().zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final synchronized String zzt() {
        zzdgx zzdgxVar = this.zzj;
        if (zzdgxVar == null || zzdgxVar.zzl() == null) {
            return null;
        }
        return zzdgxVar.zzl().zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzx() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        zzdgx zzdgxVar = this.zzj;
        if (zzdgxVar != null) {
            zzdgxVar.zzm().zza(null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzy(com.google.android.gms.ads.internal.client.zzl zzlVar, com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        this.zzf.zzk(zzbkVar);
        zzaa(zzlVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzz() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        zzdgx zzdgxVar = this.zzj;
        if (zzdgxVar != null) {
            zzdgxVar.zzm().zzb(null);
        }
    }
}
