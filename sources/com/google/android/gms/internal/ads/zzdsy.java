package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsCallback;
import com.google.android.gms.ads.MobileAds;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdsy implements zzdcz, com.google.android.gms.ads.internal.client.zza, zzczb, zzcyl {
    private final Context zza;
    private final zzffg zzb;
    private final zzdtp zzc;
    private final zzfeh zzd;
    private final zzfdu zze;
    private final zzeep zzf;

    @Nullable
    private Boolean zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgQ)).booleanValue();

    public zzdsy(Context context, zzffg zzffgVar, zzdtp zzdtpVar, zzfeh zzfehVar, zzfdu zzfduVar, zzeep zzeepVar) {
        this.zza = context;
        this.zzb = zzffgVar;
        this.zzc = zzdtpVar;
        this.zzd = zzfehVar;
        this.zze = zzfduVar;
        this.zzf = zzeepVar;
    }

    private final zzdto zzd(String str) {
        zzdto zzdtoVarZza = this.zzc.zza();
        zzdtoVarZza.zze(this.zzd.zzb.zzb);
        zzdtoVarZza.zzd(this.zze);
        zzdtoVarZza.zzb("action", str);
        if (!this.zze.zzu.isEmpty()) {
            zzdtoVarZza.zzb("ancn", (String) this.zze.zzu.get(0));
        }
        if (this.zze.zzaj) {
            zzdtoVarZza.zzb("device_connectivity", true != com.google.android.gms.ads.internal.zzt.zzo().zzz(this.zza) ? "offline" : CustomTabsCallback.ONLINE_EXTRAS_KEY);
            zzdtoVarZza.zzb("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
            zzdtoVarZza.zzb("offline_ad", "1");
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgZ)).booleanValue()) {
            boolean z = com.google.android.gms.ads.nonagon.signalgeneration.zzf.zze(this.zzd.zza.zza) != 1;
            zzdtoVarZza.zzb("scar", String.valueOf(z));
            if (z) {
                com.google.android.gms.ads.internal.client.zzl zzlVar = this.zzd.zza.zza.zzd;
                zzdtoVarZza.zzc("ragent", zzlVar.zzp);
                zzdtoVarZza.zzc("rtype", com.google.android.gms.ads.nonagon.signalgeneration.zzf.zza(com.google.android.gms.ads.nonagon.signalgeneration.zzf.zzb(zzlVar)));
            }
        }
        return zzdtoVarZza;
    }

    private final void zze(zzdto zzdtoVar) {
        if (!this.zze.zzaj) {
            zzdtoVar.zzg();
            return;
        }
        this.zzf.zzd(new zzeer(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis(), this.zzd.zzb.zzb.zzb, zzdtoVar.zzf(), 2));
    }

    private final boolean zzf() {
        String strZzp;
        if (this.zzg == null) {
            synchronized (this) {
                if (this.zzg == null) {
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
                    this.zzg = Boolean.valueOf(zMatches);
                }
            }
        }
        return this.zzg.booleanValue();
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if (this.zze.zzaj) {
            zze(zzd(CampaignEx.JSON_NATIVE_VIDEO_CLICK));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        com.google.android.gms.ads.internal.client.zze zzeVar2;
        if (this.zzh) {
            zzdto zzdtoVarZzd = zzd("ifts");
            zzdtoVarZzd.zzb("reason", "adapter");
            int i = zzeVar.zza;
            String str = zzeVar.zzb;
            if (zzeVar.zzc.equals(MobileAds.ERROR_DOMAIN) && (zzeVar2 = zzeVar.zzd) != null && !zzeVar2.zzc.equals(MobileAds.ERROR_DOMAIN)) {
                com.google.android.gms.ads.internal.client.zze zzeVar3 = zzeVar.zzd;
                i = zzeVar3.zza;
                str = zzeVar3.zzb;
            }
            if (i >= 0) {
                zzdtoVarZzd.zzb("arec", String.valueOf(i));
            }
            String strZza = this.zzb.zza(str);
            if (strZza != null) {
                zzdtoVarZzd.zzb("areec", strZza);
            }
            zzdtoVarZzd.zzg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zzb() {
        if (this.zzh) {
            zzdto zzdtoVarZzd = zzd("ifts");
            zzdtoVarZzd.zzb("reason", "blocked");
            zzdtoVarZzd.zzg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zzc(zzdif zzdifVar) {
        if (this.zzh) {
            zzdto zzdtoVarZzd = zzd("ifts");
            zzdtoVarZzd.zzb("reason", "exception");
            if (!TextUtils.isEmpty(zzdifVar.getMessage())) {
                zzdtoVarZzd.zzb("msg", zzdifVar.getMessage());
            }
            zzdtoVarZzd.zzg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzi() {
        if (zzf()) {
            zzd("adapter_shown").zzg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzj() {
        if (zzf()) {
            zzd("adapter_impression").zzg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczb
    public final void zzq() {
        if (zzf() || this.zze.zzaj) {
            zze(zzd("impression"));
        }
    }
}
