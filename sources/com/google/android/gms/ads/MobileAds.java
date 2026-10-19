package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.internal.client.zzej;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbug;
import com.google.android.gms.internal.ads.zzcae;
import com.google.android.gms.internal.ads.zzcbn;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public class MobileAds {

    @NonNull
    public static final String ERROR_DOMAIN = "com.google.android.gms.ads";

    private MobileAds() {
    }

    public static void disableMediationAdapterInitialization(@NonNull Context context) {
        zzej.zzf().zzl(context);
    }

    @Deprecated
    public static void enableSameAppKey(boolean z) {
        zzej.zzf().zzr(z);
    }

    @Nullable
    public static InitializationStatus getInitializationStatus() {
        return zzej.zzf().zze();
    }

    @KeepForSdk
    private static String getInternalVersion() {
        return zzej.zzf().zzh();
    }

    @NonNull
    public static RequestConfiguration getRequestConfiguration() {
        return zzej.zzf().zzc();
    }

    @NonNull
    public static VersionInfo getVersion() {
        zzej.zzf();
        String[] strArrSplit = TextUtils.split("22.6.0", "\\.");
        if (strArrSplit.length != 3) {
            return new VersionInfo(0, 0, 0);
        }
        try {
            return new VersionInfo(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]));
        } catch (NumberFormatException unused) {
            return new VersionInfo(0, 0, 0);
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public static void initialize(@NonNull Context context) {
        zzej.zzf().zzm(context, null, null);
    }

    public static void initialize(@NonNull Context context, @NonNull OnInitializationCompleteListener onInitializationCompleteListener) {
        zzej.zzf().zzm(context, null, onInitializationCompleteListener);
    }

    public static void openAdInspector(@NonNull Context context, @NonNull OnAdInspectorClosedListener onAdInspectorClosedListener) {
        zzej.zzf().zzp(context, onAdInspectorClosedListener);
    }

    public static void openDebugMenu(@NonNull Context context, @NonNull String str) {
        zzej.zzf().zzq(context, str);
    }

    public static void putPublisherFirstPartyIdEnabled(boolean z) {
        zzej.zzf().zzr(z);
    }

    @KeepForSdk
    public static void registerRtbAdapter(@NonNull Class<? extends RtbAdapter> cls) {
        zzej.zzf().zzs(cls);
    }

    @RequiresApi(api = 21)
    public static void registerWebView(@NonNull WebView webView) {
        zzej.zzf();
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (webView == null) {
            zzcbn.zzg("The webview to be registered cannot be null.");
            return;
        }
        zzcae zzcaeVarZza = zzbug.zza(webView.getContext());
        if (zzcaeVarZza == null) {
            zzcbn.zzj("Internal error, query info generator is null.");
            return;
        }
        try {
            zzcaeVarZza.zzi(ObjectWrapper.wrap(webView));
        } catch (RemoteException e2) {
            zzcbn.zzh("", e2);
        }
    }

    public static void setAppMuted(boolean z) {
        zzej.zzf().zzt(z);
    }

    public static void setAppVolume(float f2) {
        zzej.zzf().zzu(f2);
    }

    @KeepForSdk
    private static void setPlugin(String str) {
        zzej.zzf().zzv(str);
    }

    public static void setRequestConfiguration(@NonNull RequestConfiguration requestConfiguration) {
        zzej.zzf().zzw(requestConfiguration);
    }
}
