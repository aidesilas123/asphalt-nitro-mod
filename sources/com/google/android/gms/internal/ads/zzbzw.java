package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbzw implements SharedPreferences.OnSharedPreferenceChangeListener {
    final /* synthetic */ zzbzx zza;
    private final String zzb;

    public zzbzw(zzbzx zzbzxVar, String str) {
        this.zza = zzbzxVar;
        this.zzb = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        synchronized (this.zza) {
            for (zzbzv zzbzvVar : this.zza.zzb) {
                zzbzvVar.zza.zzb(zzbzvVar.zzb, sharedPreferences, this.zzb, str);
            }
        }
    }
}
