package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbko implements zzbkd {

    @Nullable
    private final com.google.android.gms.ads.internal.zzb zza;

    @Nullable
    private final zzdtp zzb;

    @Nullable
    private final zzfje zzc;

    @Nullable
    private final zzbsm zze;

    @Nullable
    private final zzeep zzf;

    @Nullable
    private final zzcpo zzg;
    private com.google.android.gms.ads.internal.overlay.zzx zzh = null;
    private final zzgbl zzi = zzcca.zzf;
    private final zzcbs zzd = new zzcbs(null);

    public zzbko(com.google.android.gms.ads.internal.zzb zzbVar, zzbsm zzbsmVar, zzeep zzeepVar, zzdtp zzdtpVar, zzfje zzfjeVar, zzcpo zzcpoVar) {
        this.zza = zzbVar;
        this.zze = zzbsmVar;
        this.zzf = zzeepVar;
        this.zzb = zzdtpVar;
        this.zzc = zzfjeVar;
        this.zzg = zzcpoVar;
    }

    public static int zzb(Map map) {
        String str = (String) map.get("o");
        if (str == null) {
            return -1;
        }
        if (TtmlNode.TAG_P.equalsIgnoreCase(str)) {
            return 7;
        }
        if ("l".equalsIgnoreCase(str)) {
            return 6;
        }
        return "c".equalsIgnoreCase(str) ? 14 : -1;
    }

    @VisibleForTesting
    static Uri zzc(Context context, zzasi zzasiVar, Uri uri, View view, @Nullable Activity activity) {
        if (zzasiVar == null) {
            return uri;
        }
        try {
            return zzasiVar.zze(uri) ? zzasiVar.zza(uri, context, view, activity) : uri;
        } catch (zzasj unused) {
            return uri;
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            return uri;
        }
    }

    @VisibleForTesting
    static Uri zzd(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e2) {
            zzcbn.zzh("Error adding click uptime parameter to url: ".concat(String.valueOf(uri.toString())), e2);
        }
        return uri;
    }

    public static boolean zzf(Map map) {
        return "1".equals(map.get("custom_close"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0302  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzh(java.lang.String r27, com.google.android.gms.ads.internal.client.zza r28, java.util.Map r29, java.lang.String r30) {
        /*
            Method dump skipped, instruction units count: 1064
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbko.zzh(java.lang.String, com.google.android.gms.ads.internal.client.zza, java.util.Map, java.lang.String):void");
    }

    private final void zzi(Context context, String str, String str2) {
        this.zzf.zzc(str);
        zzdtp zzdtpVar = this.zzb;
        if (zzdtpVar != null) {
            zzefa.zzc(context, zzdtpVar, this.zzc, this.zzf, str, "dialog_not_shown", zzfwx.zze("dialog_not_shown_reason", str2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0122, code lost:
    
        r11 = r16;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzj(com.google.android.gms.ads.internal.client.zza r18, java.util.Map r19, boolean r20, java.lang.String r21, boolean r22) {
        /*
            Method dump skipped, instruction units count: 362
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbko.zzj(com.google.android.gms.ads.internal.client.zza, java.util.Map, boolean, java.lang.String, boolean):void");
    }

    private final void zzk(boolean z) {
        zzbsm zzbsmVar = this.zze;
        if (zzbsmVar != null) {
            zzbsmVar.zza(z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008d, code lost:
    
        if ((android.os.Build.VERSION.SDK_INT < 33 ? ((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(com.google.android.gms.internal.ads.zzbdc.zzin)).booleanValue() : ((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(com.google.android.gms.internal.ads.zzbdc.zzim)).booleanValue()) != false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean zzl(com.google.android.gms.ads.internal.client.zza r9, android.content.Context r10, java.lang.String r11, java.lang.String r12) {
        /*
            Method dump skipped, instruction units count: 258
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbko.zzl(com.google.android.gms.ads.internal.client.zza, android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzm(int i) {
        if (this.zzb == null) {
            return;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziv)).booleanValue()) {
            zzdto zzdtoVarZza = this.zzb.zza();
            zzdtoVarZza.zzb("action", "cct_action");
            zzdtoVarZza.zzb("cct_open_status", zzbec.zza(i));
            zzdtoVarZza.zzg();
            return;
        }
        zzfje zzfjeVar = this.zzc;
        String strZza = zzbec.zza(i);
        zzfjd zzfjdVarZzb = zzfjd.zzb("cct_action");
        zzfjdVarZzb.zza("cct_open_status", strZza);
        zzfjeVar.zzb(zzfjdVarZzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcpo zzcpoVar;
        com.google.android.gms.ads.internal.client.zza zzaVar = (com.google.android.gms.ads.internal.client.zza) obj;
        String strZzc = zzbzu.zzc((String) map.get("u"), ((zzcgv) zzaVar).getContext(), true);
        String str = (String) map.get("a");
        if (str == null) {
            zzcbn.zzj("Action missing from an open GMSG.");
            return;
        }
        com.google.android.gms.ads.internal.zzb zzbVar = this.zza;
        if (zzbVar == null || zzbVar.zzc()) {
            zzgbb.zzr((!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjB)).booleanValue() || (zzcpoVar = this.zzg) == null) ? zzgbb.zzh(strZzc) : zzcpoVar.zzc(strZzc, com.google.android.gms.ads.internal.client.zzay.zze()), new zzbkk(this, zzaVar, map, str), this.zzi);
        } else {
            zzbVar.zzb(strZzc);
        }
    }
}
