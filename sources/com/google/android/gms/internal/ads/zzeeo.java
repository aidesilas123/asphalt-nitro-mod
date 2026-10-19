package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzeeo implements zzgax {
    final /* synthetic */ zzfhx zza;

    zzeeo(zzeep zzeepVar, zzfhx zzfhxVar) {
        this.zza = zzfhxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        zzcbn.zzg("Failed to get offline buffered ping database: ".concat(String.valueOf(th.getMessage())));
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            this.zza.zza((SQLiteDatabase) obj);
        } catch (Exception e2) {
            zzcbn.zzg("Error executing function on offline buffered ping database: ".concat(String.valueOf(e2.getMessage())));
        }
    }
}
