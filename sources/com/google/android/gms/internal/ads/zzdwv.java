package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdwv implements com.google.android.gms.ads.internal.overlay.zzo, zzcig {
    private final Context zza;
    private final zzcbt zzb;
    private zzdwn zzc;
    private zzcgv zzd;
    private boolean zze;
    private boolean zzf;
    private long zzg;

    @Nullable
    private com.google.android.gms.ads.internal.client.zzda zzh;
    private boolean zzi;

    zzdwv(Context context, zzcbt zzcbtVar) {
        this.zza = context;
        this.zzb = zzcbtVar;
    }

    private final synchronized boolean zzl(com.google.android.gms.ads.internal.client.zzda zzdaVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziJ)).booleanValue()) {
            zzcbn.zzj("Ad inspector had an internal error.");
            try {
                zzdaVar.zze(zzffr.zzd(16, null, null));
            } catch (RemoteException unused) {
            }
            return false;
        }
        if (this.zzc == null) {
            zzcbn.zzj("Ad inspector had an internal error.");
            try {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(new NullPointerException("InspectorManager null"), "InspectorUi.shouldOpenUi");
                zzdaVar.zze(zzffr.zzd(16, null, null));
            } catch (RemoteException unused2) {
            }
            return false;
        }
        if (!this.zze && !this.zzf) {
            if (com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() >= this.zzg + ((long) ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziM)).intValue())) {
                return true;
            }
        }
        zzcbn.zzj("Ad inspector cannot be opened because it is already open.");
        try {
            zzdaVar.zze(zzffr.zzd(19, null, null));
        } catch (RemoteException unused3) {
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcig
    public final synchronized void zza(boolean z, int i, String str, String str2) {
        if (z) {
            com.google.android.gms.ads.internal.util.zze.zza("Ad inspector loaded.");
            this.zze = true;
            zzk("");
            return;
        }
        zzcbn.zzj("Ad inspector failed to load.");
        try {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(new Exception("Failed to load UI. Error code: " + i + ", Description: " + str + ", Failing URL: " + str2), "InspectorUi.onAdWebViewFinishedLoading 0");
            com.google.android.gms.ads.internal.client.zzda zzdaVar = this.zzh;
            if (zzdaVar != null) {
                zzdaVar.zze(zzffr.zzd(17, null, null));
            }
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "InspectorUi.onAdWebViewFinishedLoading 1");
        }
        this.zzi = true;
        this.zzd.destroy();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbM() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbp() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbv() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzbw() {
        this.zzf = true;
        zzk("");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzby() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzbz(int i) {
        this.zzd.destroy();
        if (!this.zzi) {
            com.google.android.gms.ads.internal.util.zze.zza("Inspector closed.");
            com.google.android.gms.ads.internal.client.zzda zzdaVar = this.zzh;
            if (zzdaVar != null) {
                try {
                    zzdaVar.zze(null);
                } catch (RemoteException unused) {
                }
            }
        }
        this.zzf = false;
        this.zze = false;
        this.zzg = 0L;
        this.zzi = false;
        this.zzh = null;
    }

    @Nullable
    public final Activity zzg() {
        zzcgv zzcgvVar = this.zzd;
        if (zzcgvVar == null || zzcgvVar.zzaz()) {
            return null;
        }
        return this.zzd.zzi();
    }

    public final void zzh(zzdwn zzdwnVar) {
        this.zzc = zzdwnVar;
    }

    final /* synthetic */ void zzi(String str) {
        JSONObject jSONObjectZze = this.zzc.zze();
        if (!TextUtils.isEmpty(str)) {
            try {
                jSONObjectZze.put("redirectUrl", str);
            } catch (JSONException unused) {
            }
        }
        this.zzd.zzb("window.inspectorInfo", jSONObjectZze.toString());
    }

    public final synchronized void zzj(com.google.android.gms.ads.internal.client.zzda zzdaVar, zzbkw zzbkwVar, zzbkp zzbkpVar) {
        if (zzl(zzdaVar)) {
            try {
                com.google.android.gms.ads.internal.zzt.zzz();
                zzcgv zzcgvVarZza = zzchh.zza(this.zza, zzcik.zza(), "", false, false, null, null, this.zzb, null, null, null, zzayp.zza(), null, null, null);
                this.zzd = zzcgvVarZza;
                zzcii zzciiVarZzN = zzcgvVarZza.zzN();
                if (zzciiVarZzN == null) {
                    zzcbn.zzj("Failed to obtain a web view for the ad inspector");
                    try {
                        com.google.android.gms.ads.internal.zzt.zzo().zzw(new NullPointerException("Failed to obtain a web view for the ad inspector"), "InspectorUi.openInspector 2");
                        zzdaVar.zze(zzffr.zzd(17, "Failed to obtain a web view for the ad inspector", null));
                        return;
                    } catch (RemoteException e2) {
                        com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "InspectorUi.openInspector 3");
                        return;
                    }
                }
                this.zzh = zzdaVar;
                zzciiVarZzN.zzM(null, null, null, null, null, false, null, null, null, null, null, null, null, null, zzbkwVar, null, new zzbkv(this.zza), zzbkpVar, null);
                zzciiVarZzN.zzA(this);
                this.zzd.loadUrl((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziK));
                com.google.android.gms.ads.internal.zzt.zzi();
                com.google.android.gms.ads.internal.overlay.zzm.zza(this.zza, new AdOverlayInfoParcel(this, this.zzd, 1, this.zzb), true);
                this.zzg = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
            } catch (zzchg e3) {
                zzcbn.zzk("Failed to obtain a web view for the ad inspector", e3);
                try {
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e3, "InspectorUi.openInspector 0");
                    zzdaVar.zze(zzffr.zzd(17, "Failed to obtain a web view for the ad inspector", null));
                } catch (RemoteException e4) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e4, "InspectorUi.openInspector 1");
                }
            }
        }
    }

    public final synchronized void zzk(final String str) {
        if (this.zze && this.zzf) {
            zzcca.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdwu
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzi(str);
                }
            });
        }
    }
}
