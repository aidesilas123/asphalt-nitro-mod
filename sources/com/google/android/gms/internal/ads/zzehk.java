package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzehk implements zzefv {
    private final Context zza;
    private final zzdhy zzb;
    private final Executor zzc;
    private final zzfdt zzd;

    public zzehk(Context context, Executor executor, zzdhy zzdhyVar, zzfdt zzfdtVar) {
        this.zza = context;
        this.zzb = zzdhyVar;
        this.zzc = executor;
        this.zzd = zzfdtVar;
    }

    @Nullable
    private static String zzd(zzfdu zzfduVar) {
        try {
            return zzfduVar.zzw.getString("tab_url");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzefv
    public final h0 zza(final zzfeh zzfehVar, final zzfdu zzfduVar) {
        String strZzd = zzd(zzfduVar);
        final Uri uri = strZzd != null ? Uri.parse(strZzd) : null;
        return zzgbb.zzn(zzgbb.zzh(null), new zzgai() { // from class: com.google.android.gms.internal.ads.zzehi
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzc(uri, zzfehVar, zzfduVar, obj);
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzefv
    public final boolean zzb(zzfeh zzfehVar, zzfdu zzfduVar) {
        Context context = this.zza;
        return (context instanceof Activity) && zzbed.zzg(context) && !TextUtils.isEmpty(zzd(zzfduVar));
    }

    final /* synthetic */ h0 zzc(Uri uri, zzfeh zzfehVar, zzfdu zzfduVar, Object obj) throws Exception {
        try {
            CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder().build();
            customTabsIntentBuild.intent.setData(uri);
            com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc(customTabsIntentBuild.intent, null);
            final zzccf zzccfVar = new zzccf();
            zzdgy zzdgyVarZze = this.zzb.zze(new zzcuh(zzfehVar, zzfduVar, null), new zzdhb(new zzdig() { // from class: com.google.android.gms.internal.ads.zzehj
                @Override // com.google.android.gms.internal.ads.zzdig
                public final void zza(boolean z, Context context, zzcyu zzcyuVar) {
                    zzccf zzccfVar2 = zzccfVar;
                    try {
                        com.google.android.gms.ads.internal.zzt.zzi();
                        com.google.android.gms.ads.internal.overlay.zzm.zza(context, (AdOverlayInfoParcel) zzccfVar2.get(), true);
                    } catch (Exception unused) {
                    }
                }
            }, null));
            zzccfVar.zzc(new AdOverlayInfoParcel(zzcVar, null, zzdgyVarZze.zza(), null, new zzcbt(0, 0, false, false, false), null, null));
            this.zzd.zza();
            return zzgbb.zzh(zzdgyVarZze.zzg());
        } catch (Throwable th) {
            zzcbn.zzh("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }
}
