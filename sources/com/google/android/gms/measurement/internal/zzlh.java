package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzlh {
    final String zza;
    long zzb;

    private zzlh(zzli zzliVar, String str) {
        this.zza = str;
        this.zzb = zzliVar.zzaw().elapsedRealtime();
    }
}
