package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsCallback;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.google.android.gms.ads.MobileAds;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzecq implements zzdcz, com.google.android.gms.ads.internal.client.zza, zzczb, zzcyl {
    private final Context zza;
    private final zzffg zzb;
    private final zzfeh zzc;
    private final zzfdu zzd;
    private final zzeep zze;

    @Nullable
    private Boolean zzf;
    private final boolean zzg = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgQ)).booleanValue();

    @NonNull
    private final zzfje zzh;
    private final String zzi;

    public zzecq(Context context, zzffg zzffgVar, zzfeh zzfehVar, zzfdu zzfduVar, zzeep zzeepVar, @NonNull zzfje zzfjeVar, String str) {
        this.zza = context;
        this.zzb = zzffgVar;
        this.zzc = zzfehVar;
        this.zzd = zzfduVar;
        this.zze = zzeepVar;
        this.zzh = zzfjeVar;
        this.zzi = str;
    }

    private final zzfjd zzd(String str) {
        zzfjd zzfjdVarZzb = zzfjd.zzb(str);
        zzfjdVarZzb.zzh(this.zzc, null);
        zzfjdVarZzb.zzf(this.zzd);
        zzfjdVarZzb.zza(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.zzi);
        if (!this.zzd.zzu.isEmpty()) {
            zzfjdVarZzb.zza("ancn", (String) this.zzd.zzu.get(0));
        }
        if (this.zzd.zzaj) {
            zzfjdVarZzb.zza("device_connectivity", true != com.google.android.gms.ads.internal.zzt.zzo().zzz(this.zza) ? "offline" : CustomTabsCallback.ONLINE_EXTRAS_KEY);
            zzfjdVarZzb.zza("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
            zzfjdVarZzb.zza("offline_ad", "1");
        }
        return zzfjdVarZzb;
    }

    private final void zze(zzfjd zzfjdVar) {
        if (!this.zzd.zzaj) {
            this.zzh.zzb(zzfjdVar);
            return;
        }
        this.zze.zzd(new zzeer(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis(), this.zzc.zzb.zzb.zzb, this.zzh.zza(zzfjdVar), 2));
    }

    private final boolean zzf() {
        String strZzp;
        if (this.zzf == null) {
            synchronized (this) {
                if (this.zzf == null) {
                    String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbr);
                    com.google.android.gms.ads.internal.zzt.zzp();
                    try {
                        strZzp = com.google.android.gms.ads.internal.util.zzt.zzp(this.zza);
                    } catch (RemoteException unused) {
                        strZzp = null;
                    }
                    boolean zMatches = false;
                    if (str != null && strZzp != null) {
                        try {
                            zMatches = Pattern.matches(str, strZzp);
                        } catch (RuntimeException e2) {
                            com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "CsiActionsListener.isPatternMatched");
                        }
                    }
                    this.zzf = Boolean.valueOf(zMatches);
                }
            }
        }
        return this.zzf.booleanValue();
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if (this.zzd.zzaj) {
            zze(zzd(CampaignEx.JSON_NATIVE_VIDEO_CLICK));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        com.google.android.gms.ads.internal.client.zze zzeVar2;
        if (this.zzg) {
            int i = zzeVar.zza;
            String str = zzeVar.zzb;
            if (zzeVar.zzc.equals(MobileAds.ERROR_DOMAIN) && (zzeVar2 = zzeVar.zzd) != null && !zzeVar2.zzc.equals(MobileAds.ERROR_DOMAIN)) {
                com.google.android.gms.ads.internal.client.zze zzeVar3 = zzeVar.zzd;
                i = zzeVar3.zza;
                str = zzeVar3.zzb;
            }
            String strZza = this.zzb.zza(str);
            zzfjd zzfjdVarZzd = zzd("ifts");
            zzfjdVarZzd.zza("reason", "adapter");
            if (i >= 0) {
                zzfjdVarZzd.zza("arec", String.valueOf(i));
            }
            if (strZza != null) {
                zzfjdVarZzd.zza("areec", strZza);
            }
            this.zzh.zzb(zzfjdVarZzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zzb() {
        if (this.zzg) {
            zzfje zzfjeVar = this.zzh;
            zzfjd zzfjdVarZzd = zzd("ifts");
            zzfjdVarZzd.zza("reason", "blocked");
            zzfjeVar.zzb(zzfjdVarZzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zzc(zzdif zzdifVar) {
        if (this.zzg) {
            zzfjd zzfjdVarZzd = zzd("ifts");
            zzfjdVarZzd.zza("reason", "exception");
            if (!TextUtils.isEmpty(zzdifVar.getMessage())) {
                zzfjdVarZzd.zza("msg", zzdifVar.getMessage());
            }
            this.zzh.zzb(zzfjdVarZzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzi() {
        if (zzf()) {
            this.zzh.zzb(zzd("adapter_shown"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzj() {
        if (zzf()) {
            this.zzh.zzb(zzd("adapter_impression"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczb
    public final void zzq() {
        if (zzf() || this.zzd.zzaj) {
            zze(zzd("impression"));
        }
    }
}
