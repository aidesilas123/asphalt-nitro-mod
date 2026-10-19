package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface zzefo {
    @Nullable
    zzflf zza(String str, WebView webView, String str2, String str3, @Nullable String str4, zzefq zzefqVar, zzefp zzefpVar, @Nullable String str5);

    @Nullable
    zzflf zzb(String str, WebView webView, String str2, String str3, @Nullable String str4, String str5, zzefq zzefqVar, zzefp zzefpVar, @Nullable String str6);

    @Nullable
    String zze(Context context);

    void zzf(zzflf zzflfVar, View view);

    void zzg(zzflf zzflfVar);

    void zzh(zzflf zzflfVar, View view);

    void zzi(zzflf zzflfVar);

    boolean zzj(Context context);
}
