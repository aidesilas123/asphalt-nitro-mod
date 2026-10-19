package com.google.android.gms.internal.ads;

import android.webkit.WebView;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfmn implements Runnable {
    final /* synthetic */ zzfmo zza;
    private final WebView zzb;

    zzfmn(zzfmo zzfmoVar) {
        this.zza = zzfmoVar;
        this.zzb = zzfmoVar.zza;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.destroy();
    }
}
