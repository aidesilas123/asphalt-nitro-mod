package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdlo implements View.OnClickListener {

    @Nullable
    @VisibleForTesting
    String zza;

    @Nullable
    @VisibleForTesting
    Long zzb;

    @Nullable
    @VisibleForTesting
    WeakReference zzc;
    private final zzdpj zzd;
    private final Clock zze;

    @Nullable
    private zzbic zzf;

    @Nullable
    private zzbkd zzg;

    public zzdlo(zzdpj zzdpjVar, Clock clock) {
        this.zzd = zzdpjVar;
        this.zze = clock;
    }

    private final void zzd() {
        View view;
        this.zza = null;
        this.zzb = null;
        WeakReference weakReference = this.zzc;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        view.setClickable(false);
        view.setOnClickListener(null);
        this.zzc = null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference weakReference = this.zzc;
        if (weakReference == null || weakReference.get() != view) {
            return;
        }
        if (this.zza != null && this.zzb != null) {
            HashMap map = new HashMap();
            map.put("id", this.zza);
            map.put(SDKConstants.PARAM_A2U_TIME_INTERVAL, String.valueOf(this.zze.currentTimeMillis() - this.zzb.longValue()));
            map.put("messageType", "onePointFiveClick");
            this.zzd.zzg("sendMessageToNativeJs", map);
        }
        zzd();
    }

    @Nullable
    public final zzbic zza() {
        return this.zzf;
    }

    public final void zzb() {
        if (this.zzf == null || this.zzb == null) {
            return;
        }
        zzd();
        try {
            this.zzf.zze();
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
        }
    }

    public final void zzc(final zzbic zzbicVar) {
        this.zzf = zzbicVar;
        zzbkd zzbkdVar = this.zzg;
        if (zzbkdVar != null) {
            this.zzd.zzk("/unconfirmedClick", zzbkdVar);
        }
        zzbkd zzbkdVar2 = new zzbkd() { // from class: com.google.android.gms.internal.ads.zzdln
            @Override // com.google.android.gms.internal.ads.zzbkd
            public final void zza(Object obj, Map map) {
                zzdlo zzdloVar = this.zza;
                try {
                    zzdloVar.zzb = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException unused) {
                    zzcbn.zzg("Failed to call parse unconfirmedClickTimestamp.");
                }
                zzbic zzbicVar2 = zzbicVar;
                zzdloVar.zza = (String) map.get("id");
                String str = (String) map.get("asset_id");
                if (zzbicVar2 == null) {
                    zzcbn.zze("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    zzbicVar2.zzf(str);
                } catch (RemoteException e2) {
                    zzcbn.zzl("#007 Could not call remote method.", e2);
                }
            }
        };
        this.zzg = zzbkdVar2;
        this.zzd.zzi("/unconfirmedClick", zzbkdVar2);
    }
}
