package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.mbridge.msdk.MBridgeConstans;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdme {
    private final zzdqu zza;
    private final zzdpj zzb;
    private ViewTreeObserver.OnScrollChangedListener zzc = null;

    public zzdme(zzdqu zzdquVar, zzdpj zzdpjVar) {
        this.zza = zzdquVar;
        this.zzb = zzdpjVar;
    }

    private static final int zzf(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        com.google.android.gms.ads.internal.client.zzay.zzb();
        return zzcbg.zzx(context, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View zza(@NonNull final View view, @NonNull final WindowManager windowManager) throws zzchg {
        zzcgv zzcgvVarZza = this.zza.zza(com.google.android.gms.ads.internal.client.zzq.zzc(), null, null);
        View view2 = (View) zzcgvVarZza;
        view2.setVisibility(4);
        view2.setContentDescription("policy_validator");
        zzcgvVarZza.zzad("/sendMessageToSdk", new zzbkd() { // from class: com.google.android.gms.internal.ads.zzdly
            @Override // com.google.android.gms.internal.ads.zzbkd
            public final void zza(Object obj, Map map) {
                this.zza.zzb((zzcgv) obj, map);
            }
        });
        zzcgvVarZza.zzad("/hideValidatorOverlay", new zzbkd() { // from class: com.google.android.gms.internal.ads.zzdlz
            @Override // com.google.android.gms.internal.ads.zzbkd
            public final void zza(Object obj, Map map) {
                this.zza.zzc(windowManager, view, (zzcgv) obj, map);
            }
        });
        zzcgvVarZza.zzad("/open", new zzbko(null, null, null, null, null, null));
        this.zzb.zzj(new WeakReference(zzcgvVarZza), "/loadNativeAdPolicyViolations", new zzbkd() { // from class: com.google.android.gms.internal.ads.zzdma
            @Override // com.google.android.gms.internal.ads.zzbkd
            public final void zza(Object obj, Map map) {
                this.zza.zze(view, windowManager, (zzcgv) obj, map);
            }
        });
        this.zzb.zzj(new WeakReference(zzcgvVarZza), "/showValidatorOverlay", new zzbkd() { // from class: com.google.android.gms.internal.ads.zzdmb
            @Override // com.google.android.gms.internal.ads.zzbkd
            public final void zza(Object obj, Map map) {
                zzcbn.zze("Show native ad policy validator overlay.");
                ((zzcgv) obj).zzF().setVisibility(0);
            }
        });
        return (View) zzcgvVarZza;
    }

    final /* synthetic */ void zzb(zzcgv zzcgvVar, Map map) {
        this.zzb.zzg("sendMessageToNativeJs", map);
    }

    final /* synthetic */ void zzc(WindowManager windowManager, View view, zzcgv zzcgvVar, Map map) {
        zzcbn.zze("Hide native ad policy validator overlay.");
        zzcgvVar.zzF().setVisibility(8);
        if (zzcgvVar.zzF().getWindowToken() != null) {
            windowManager.removeView(zzcgvVar.zzF());
        }
        zzcgvVar.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (this.zzc == null || viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this.zzc);
    }

    final /* synthetic */ void zzd(Map map, boolean z, int i, String str, String str2) {
        HashMap map2 = new HashMap();
        map2.put("messageType", "validatorHtmlLoaded");
        map2.put("id", (String) map.get("id"));
        this.zzb.zzg("sendMessageToNativeJs", map2);
    }

    final /* synthetic */ void zze(final View view, final WindowManager windowManager, final zzcgv zzcgvVar, final Map map) {
        zzcgvVar.zzN().zzA(new zzcig() { // from class: com.google.android.gms.internal.ads.zzdmd
            @Override // com.google.android.gms.internal.ads.zzcig
            public final void zza(boolean z, int i, String str, String str2) {
                this.zza.zzd(map, z, i, str, str2);
            }
        });
        if (map == null) {
            return;
        }
        Context context = view.getContext();
        int iZzf = zzf(context, (String) map.get("validator_width"), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhU)).intValue());
        int iZzf2 = zzf(context, (String) map.get("validator_height"), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhV)).intValue());
        int iZzf3 = zzf(context, (String) map.get("validator_x"), 0);
        int iZzf4 = zzf(context, (String) map.get("validator_y"), 0);
        zzcgvVar.zzag(zzcik.zzb(iZzf, iZzf2));
        try {
            zzcgvVar.zzG().getSettings().setUseWideViewPort(((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhW)).booleanValue());
            zzcgvVar.zzG().getSettings().setLoadWithOverviewMode(((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzhX)).booleanValue());
        } catch (NullPointerException unused) {
        }
        final WindowManager.LayoutParams layoutParamsZzb = com.google.android.gms.ads.internal.util.zzbz.zzb();
        layoutParamsZzb.x = iZzf3;
        layoutParamsZzb.y = iZzf4;
        windowManager.updateViewLayout(zzcgvVar.zzF(), layoutParamsZzb);
        final String str = (String) map.get("orientation");
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            final int i = (("1".equals(str) || MBridgeConstans.API_REUQEST_CATEGORY_APP.equals(str)) ? rect.bottom : rect.top) - iZzf4;
            this.zzc = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.gms.internal.ads.zzdmc
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    Rect rect2 = new Rect();
                    if (view.getGlobalVisibleRect(rect2)) {
                        zzcgv zzcgvVar2 = zzcgvVar;
                        if (zzcgvVar2.zzF().getWindowToken() == null) {
                            return;
                        }
                        int i2 = i;
                        WindowManager.LayoutParams layoutParams = layoutParamsZzb;
                        String str2 = str;
                        if ("1".equals(str2) || MBridgeConstans.API_REUQEST_CATEGORY_APP.equals(str2)) {
                            layoutParams.y = rect2.bottom - i2;
                        } else {
                            layoutParams.y = rect2.top - i2;
                        }
                        windowManager.updateViewLayout(zzcgvVar2.zzF(), layoutParams);
                    }
                }
            };
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnScrollChangedListener(this.zzc);
            }
        }
        String str2 = (String) map.get("overlay_url");
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        zzcgvVar.loadUrl(str2);
    }
}
