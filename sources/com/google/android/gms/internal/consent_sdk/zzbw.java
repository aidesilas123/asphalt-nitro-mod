package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import android.webkit.WebView;
import androidx.annotation.UiThread;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@UiThread
public final class zzbw extends WebView {
    private final Handler zza;
    private final zzcc zzb;
    private boolean zzc;

    public zzbw(zzby zzbyVar, Handler handler, zzcc zzccVar) {
        super(zzbyVar);
        this.zzc = false;
        this.zza = handler;
        this.zzb = zzccVar;
    }

    static /* bridge */ /* synthetic */ boolean zze(zzbw zzbwVar, String str) {
        return str != null && str.startsWith("consent://");
    }

    public final void zzc(String str, String str2) {
        final String str3 = str + "(" + str2 + ");";
        this.zza.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbt
            @Override // java.lang.Runnable
            public final void run() {
                zzcu.zza(this.zza, str3);
            }
        });
    }
}
