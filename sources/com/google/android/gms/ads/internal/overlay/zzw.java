package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbdc;
import com.google.android.gms.internal.ads.zzcca;
import com.google.android.gms.internal.ads.zzcgv;
import com.google.android.gms.internal.ads.zzfrr;
import com.google.android.gms.internal.ads.zzfrs;
import com.google.android.gms.internal.ads.zzfrt;
import com.google.android.gms.internal.ads.zzfru;
import com.google.android.gms.internal.ads.zzfsd;
import com.google.android.gms.internal.ads.zzfsf;
import com.google.android.gms.internal.ads.zzfsg;
import com.google.android.gms.internal.ads.zzfsh;
import com.google.android.gms.internal.ads.zzfsi;
import com.google.android.gms.internal.ads.zzftc;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzw {
    private zzfsg zzf;

    @Nullable
    private zzcgv zzc = null;
    private boolean zze = false;

    @Nullable
    private String zza = null;

    @Nullable
    private zzfrt zzd = null;

    @Nullable
    private String zzb = null;

    private final zzfsi zzl() {
        zzfsh zzfshVarZzc = zzfsi.zzc();
        if (!((Boolean) zzba.zzc().zza(zzbdc.zzkD)).booleanValue() || TextUtils.isEmpty(this.zzb)) {
            String str = this.zza;
            if (str != null) {
                zzfshVarZzc.zzb(str);
            } else {
                zzf("Missing session token and/or appId", "onLMDupdate");
            }
        } else {
            zzfshVarZzc.zza(this.zzb);
        }
        return zzfshVarZzc.zzc();
    }

    private final void zzm() {
        if (this.zzf == null) {
            this.zzf = new zzv(this);
        }
    }

    public final synchronized void zza(@Nullable zzcgv zzcgvVar, Context context) {
        this.zzc = zzcgvVar;
        if (!zzk(context)) {
            zzf("Unable to bind", "on_play_store_bind");
            return;
        }
        HashMap map = new HashMap();
        map.put("action", "fetch_completed");
        zze("on_play_store_bind", map);
    }

    public final void zzb() {
        zzfrt zzfrtVar;
        if (!this.zze || (zzfrtVar = this.zzd) == null) {
            com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
        } else {
            zzfrtVar.zza(zzl(), this.zzf);
            zzd("onLMDOverlayCollapse");
        }
    }

    public final void zzc() {
        zzfrt zzfrtVar;
        if (!this.zze || (zzfrtVar = this.zzd) == null) {
            com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
            return;
        }
        zzfrr zzfrrVarZzc = zzfrs.zzc();
        if (!((Boolean) zzba.zzc().zza(zzbdc.zzkD)).booleanValue() || TextUtils.isEmpty(this.zzb)) {
            String str = this.zza;
            if (str != null) {
                zzfrrVarZzc.zzb(str);
            } else {
                zzf("Missing session token and/or appId", "onLMDupdate");
            }
        } else {
            zzfrrVarZzc.zza(this.zzb);
        }
        zzfrtVar.zzb(zzfrrVarZzc.zzc(), this.zzf);
    }

    @VisibleForTesting
    final void zzd(String str) {
        zze(str, new HashMap());
    }

    @VisibleForTesting
    final void zze(final String str, final Map map) {
        zzcca.zze.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzu
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzh(str, map);
            }
        });
    }

    @VisibleForTesting
    final void zzf(String str, String str2) {
        com.google.android.gms.ads.internal.util.zze.zza(str);
        if (this.zzc != null) {
            HashMap map = new HashMap();
            map.put("message", str);
            map.put("action", str2);
            zze("onError", map);
        }
    }

    public final void zzg() {
        zzfrt zzfrtVar;
        if (!this.zze || (zzfrtVar = this.zzd) == null) {
            com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
        } else {
            zzfrtVar.zzc(zzl(), this.zzf);
            zzd("onLMDOverlayExpand");
        }
    }

    final /* synthetic */ void zzh(String str, Map map) {
        zzcgv zzcgvVar = this.zzc;
        if (zzcgvVar != null) {
            zzcgvVar.zzd(str, map);
        }
    }

    @VisibleForTesting
    final void zzi(zzfsf zzfsfVar) {
        if (!TextUtils.isEmpty(zzfsfVar.zzb())) {
            if (!((Boolean) zzba.zzc().zza(zzbdc.zzkD)).booleanValue()) {
                this.zza = zzfsfVar.zzb();
            }
        }
        switch (zzfsfVar.zza()) {
            case 8152:
                zzd("onLMDOverlayOpened");
                break;
            case 8153:
                zzd("onLMDOverlayClicked");
                break;
            case 8155:
                zzd("onLMDOverlayClose");
                break;
            case 8157:
                this.zza = null;
                this.zzb = null;
                this.zze = false;
                break;
            case 8160:
            case 8161:
            case 8162:
                HashMap map = new HashMap();
                map.put("error", String.valueOf(zzfsfVar.zza()));
                zze("onLMDOverlayFailedToOpen", map);
                break;
        }
    }

    public final void zzj(@Nullable zzcgv zzcgvVar, @Nullable zzfsd zzfsdVar) {
        if (zzcgvVar == null) {
            zzf("adWebview missing", "onLMDShow");
            return;
        }
        this.zzc = zzcgvVar;
        if (!this.zze && !zzk(zzcgvVar.getContext())) {
            zzf("LMDOverlay not bound", "on_play_store_bind");
            return;
        }
        if (((Boolean) zzba.zzc().zza(zzbdc.zzkD)).booleanValue()) {
            this.zzb = zzfsdVar.zzg();
        }
        zzm();
        zzfrt zzfrtVar = this.zzd;
        if (zzfrtVar != null) {
            zzfrtVar.zzd(zzfsdVar, this.zzf);
        }
    }

    public final synchronized boolean zzk(Context context) {
        if (!zzftc.zza(context)) {
            return false;
        }
        try {
            this.zzd = zzfru.zza(context);
        } catch (NullPointerException e2) {
            com.google.android.gms.ads.internal.util.zze.zza("Error connecting LMD Overlay service");
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "LastMileDeliveryOverlay.bindLastMileDeliveryService");
        }
        if (this.zzd == null) {
            this.zze = false;
            return false;
        }
        zzm();
        this.zze = true;
        return true;
    }
}
