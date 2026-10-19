package com.google.android.gms.measurement.internal;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzkz implements zzfa {
    final /* synthetic */ String zza;
    final /* synthetic */ zzli zzb;

    zzkz(zzli zzliVar, String str) {
        this.zzb = zzliVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.measurement.internal.zzfa
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map map) {
        this.zzb.zzJ(i, th, bArr, this.zza);
    }
}
