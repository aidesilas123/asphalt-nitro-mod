package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.facebook.internal.AnalyticsEvents;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzefn implements zzefo {
    static /* synthetic */ zzflf zzc(String str, String str2, String str3, zzefp zzefpVar, String str4, WebView webView, String str5, String str6, zzefq zzefqVar) {
        zzflp zzflpVarZza = zzflp.zza("Google", str2);
        zzflo zzfloVarZzm = zzm("javascript");
        zzflk zzflkVarZzk = zzk(zzefpVar.toString());
        zzflo zzfloVar = zzflo.NONE;
        if (zzfloVarZzm == zzfloVar) {
            zzcbn.zzj("Omid html session error; Unable to parse impression owner: javascript");
            return null;
        }
        if (zzflkVarZzk == null) {
            zzcbn.zzj("Omid html session error; Unable to parse creative type: ".concat(String.valueOf(zzefpVar)));
            return null;
        }
        zzflo zzfloVarZzm2 = zzm(str4);
        if (zzflkVarZzk == zzflk.VIDEO && zzfloVarZzm2 == zzfloVar) {
            zzcbn.zzj("Omid html session error; Video events owner unknown for video creative: ".concat(String.valueOf(str4)));
            return null;
        }
        return zzflf.zza(zzflg.zza(zzflkVarZzk, zzl(zzefqVar.toString()), zzfloVarZzm, zzfloVarZzm2, true), zzflh.zzb(zzflpVarZza, webView, str5, ""));
    }

    static /* synthetic */ zzflf zzd(String str, String str2, String str3, String str4, zzefp zzefpVar, WebView webView, String str5, String str6, zzefq zzefqVar) {
        zzflp zzflpVarZza = zzflp.zza(str, str2);
        zzflo zzfloVarZzm = zzm("javascript");
        zzflo zzfloVarZzm2 = zzm(str4);
        zzflk zzflkVarZzk = zzk(zzefpVar.toString());
        zzflo zzfloVar = zzflo.NONE;
        if (zzfloVarZzm == zzfloVar) {
            zzcbn.zzj("Omid js session error; Unable to parse impression owner: javascript");
            return null;
        }
        if (zzflkVarZzk == null) {
            zzcbn.zzj("Omid js session error; Unable to parse creative type: ".concat(String.valueOf(zzefpVar)));
            return null;
        }
        if (zzflkVarZzk == zzflk.VIDEO && zzfloVarZzm2 == zzfloVar) {
            zzcbn.zzj("Omid js session error; Video events owner unknown for video creative: ".concat(String.valueOf(str4)));
            return null;
        }
        return zzflf.zza(zzflg.zza(zzflkVarZzk, zzl(zzefqVar.toString()), zzfloVarZzm, zzfloVarZzm2, true), zzflh.zzc(zzflpVarZza, webView, str5, ""));
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.gms.internal.ads.zzflk zzk(java.lang.String r4) {
        /*
            int r0 = r4.hashCode()
            r1 = -382745961(0xffffffffe92fc297, float:-1.3280059E25)
            r2 = 2
            r3 = 1
            if (r0 == r1) goto L2a
            r1 = 112202875(0x6b0147b, float:6.6233935E-35)
            if (r0 == r1) goto L20
            r1 = 714893483(0x2a9c68ab, float:2.7783795E-13)
            if (r0 == r1) goto L16
            goto L34
        L16:
            java.lang.String r0 = "nativeDisplay"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L34
            r4 = 1
            goto L35
        L20:
            java.lang.String r0 = "video"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L34
            r4 = 2
            goto L35
        L2a:
            java.lang.String r0 = "htmlDisplay"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L34
            r4 = 0
            goto L35
        L34:
            r4 = -1
        L35:
            if (r4 == 0) goto L43
            if (r4 == r3) goto L40
            if (r4 == r2) goto L3d
            r4 = 0
            return r4
        L3d:
            com.google.android.gms.internal.ads.zzflk r4 = com.google.android.gms.internal.ads.zzflk.VIDEO
            return r4
        L40:
            com.google.android.gms.internal.ads.zzflk r4 = com.google.android.gms.internal.ads.zzflk.NATIVE_DISPLAY
            return r4
        L43:
            com.google.android.gms.internal.ads.zzflk r4 = com.google.android.gms.internal.ads.zzflk.HTML_DISPLAY
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzefn.zzk(java.lang.String):com.google.android.gms.internal.ads.zzflk");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.gms.internal.ads.zzfln zzl(java.lang.String r4) {
        /*
            int r0 = r4.hashCode()
            r1 = -1104128070(0xffffffffbe3057ba, float:-0.17220965)
            r2 = 2
            r3 = 1
            if (r0 == r1) goto L2a
            r1 = 1318088141(0x4e906dcd, float:1.2115575E9)
            if (r0 == r1) goto L20
            r1 = 1988248512(0x768243c0, float:1.3210405E33)
            if (r0 == r1) goto L16
            goto L34
        L16:
            java.lang.String r0 = "onePixel"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L34
            r4 = 2
            goto L35
        L20:
            java.lang.String r0 = "definedByJavascript"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L34
            r4 = 1
            goto L35
        L2a:
            java.lang.String r0 = "beginToRender"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L34
            r4 = 0
            goto L35
        L34:
            r4 = -1
        L35:
            if (r4 == 0) goto L44
            if (r4 == r3) goto L41
            if (r4 == r2) goto L3e
            com.google.android.gms.internal.ads.zzfln r4 = com.google.android.gms.internal.ads.zzfln.UNSPECIFIED
            return r4
        L3e:
            com.google.android.gms.internal.ads.zzfln r4 = com.google.android.gms.internal.ads.zzfln.ONE_PIXEL
            return r4
        L41:
            com.google.android.gms.internal.ads.zzfln r4 = com.google.android.gms.internal.ads.zzfln.DEFINED_BY_JAVASCRIPT
            return r4
        L44:
            com.google.android.gms.internal.ads.zzfln r4 = com.google.android.gms.internal.ads.zzfln.BEGIN_TO_RENDER
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzefn.zzl(java.lang.String):com.google.android.gms.internal.ads.zzfln");
    }

    private static zzflo zzm(@Nullable String str) {
        return AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE.equals(str) ? zzflo.NATIVE : "javascript".equals(str) ? zzflo.JAVASCRIPT : zzflo.NONE;
    }

    @Nullable
    private static final Object zzn(zzefm zzefmVar) {
        try {
            return zzefmVar.zza();
        } catch (RuntimeException e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzv(e2, "omid exception");
            return null;
        }
    }

    private static final void zzo(Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzv(e2, "omid exception");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzefo
    @Nullable
    public final zzflf zza(final String str, final WebView webView, String str2, String str3, @Nullable final String str4, final zzefq zzefqVar, final zzefp zzefpVar, @Nullable final String str5) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeT)).booleanValue() || !zzfld.zzb()) {
            return null;
        }
        final String str6 = "Google";
        final String str7 = "javascript";
        final String str8 = "";
        return (zzflf) zzn(new zzefm(str6, str, str7, zzefpVar, str4, webView, str5, str8, zzefqVar) { // from class: com.google.android.gms.internal.ads.zzefj
            public final /* synthetic */ String zzb;
            public final /* synthetic */ zzefp zzd;
            public final /* synthetic */ String zze;
            public final /* synthetic */ WebView zzf;
            public final /* synthetic */ String zzg;
            public final /* synthetic */ zzefq zzi;
            public final /* synthetic */ String zza = "Google";
            public final /* synthetic */ String zzc = "javascript";
            public final /* synthetic */ String zzh = "";

            {
                this.zzb = str;
                this.zzd = zzefpVar;
                this.zze = str4;
                this.zzf = webView;
                this.zzg = str5;
                this.zzi = zzefqVar;
            }

            @Override // com.google.android.gms.internal.ads.zzefm
            public final Object zza() {
                return zzefn.zzc(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzefo
    @Nullable
    public final zzflf zzb(final String str, final WebView webView, String str2, String str3, @Nullable final String str4, final String str5, final zzefq zzefqVar, final zzefp zzefpVar, @Nullable final String str6) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeT)).booleanValue() || !zzfld.zzb()) {
            return null;
        }
        final String str7 = "javascript";
        final String str8 = "";
        return (zzflf) zzn(new zzefm(str5, str, str7, str4, zzefpVar, webView, str6, str8, zzefqVar) { // from class: com.google.android.gms.internal.ads.zzefg
            public final /* synthetic */ String zza;
            public final /* synthetic */ String zzb;
            public final /* synthetic */ String zzd;
            public final /* synthetic */ zzefp zze;
            public final /* synthetic */ WebView zzf;
            public final /* synthetic */ String zzg;
            public final /* synthetic */ zzefq zzi;
            public final /* synthetic */ String zzc = "javascript";
            public final /* synthetic */ String zzh = "";

            {
                this.zzd = str4;
                this.zze = zzefpVar;
                this.zzf = webView;
                this.zzg = str6;
                this.zzi = zzefqVar;
            }

            @Override // com.google.android.gms.internal.ads.zzefm
            public final Object zza() {
                return zzefn.zzd(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzefo
    @Nullable
    public final String zze(Context context) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeT)).booleanValue()) {
            return (String) zzn(new zzefm() { // from class: com.google.android.gms.internal.ads.zzefk
                @Override // com.google.android.gms.internal.ads.zzefm
                public final Object zza() {
                    return "a.1.4.8-google_20230803";
                }
            });
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzefo
    public final void zzf(final zzflf zzflfVar, final View view) {
        zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzefe
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeT)).booleanValue() && zzfld.zzb()) {
                    zzflfVar.zzb(view, zzflm.NOT_VISIBLE, "Ad overlay");
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzefo
    public final void zzg(final zzflf zzflfVar) {
        zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzefl
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeT)).booleanValue() && zzfld.zzb()) {
                    zzflfVar.zzc();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzefo
    public final void zzh(final zzflf zzflfVar, final View view) {
        zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeff
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeT)).booleanValue() && zzfld.zzb()) {
                    zzflfVar.zzd(view);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzefo
    public final void zzi(final zzflf zzflfVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeT)).booleanValue() && zzfld.zzb()) {
            zzflfVar.getClass();
            zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzefh
                @Override // java.lang.Runnable
                public final void run() {
                    zzflfVar.zze();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzefo
    public final boolean zzj(final Context context) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeT)).booleanValue()) {
            Boolean bool = (Boolean) zzn(new zzefm() { // from class: com.google.android.gms.internal.ads.zzefi
                @Override // com.google.android.gms.internal.ads.zzefm
                public final Object zza() {
                    if (zzfld.zzb()) {
                        return Boolean.TRUE;
                    }
                    zzfld.zza(context);
                    return Boolean.valueOf(zzfld.zzb());
                }
            });
            return bool != null && bool.booleanValue();
        }
        zzcbn.zzj("Omid flag is disabled");
        return false;
    }
}
