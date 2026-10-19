package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzflf {
    public static zzflf zza(zzflg zzflgVar, zzflh zzflhVar) {
        if (zzfld.zzb()) {
            return new zzflj(zzflgVar, zzflhVar);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    public abstract void zzb(View view, zzflm zzflmVar, @Nullable String str);

    public abstract void zzc();

    public abstract void zzd(View view);

    public abstract void zze();
}
