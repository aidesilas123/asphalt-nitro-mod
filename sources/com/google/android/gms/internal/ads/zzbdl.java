package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public final class zzbdl {
    public static final void zza(zzbdk zzbdkVar, @Nullable zzbdi zzbdiVar) {
        if (zzbdiVar.zza() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        }
        if (TextUtils.isEmpty(zzbdiVar.zzb())) {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        zzbdkVar.zzd(zzbdiVar.zza(), zzbdiVar.zzb(), zzbdiVar.zzc(), zzbdiVar.zzd());
    }
}
