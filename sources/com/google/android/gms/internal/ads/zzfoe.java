package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ShowFirstParty;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@ShowFirstParty
public final class zzfoe {
    private final Context zza;
    private final Looper zzb;

    public zzfoe(@NonNull Context context, @NonNull Looper looper) {
        this.zza = context;
        this.zzb = looper;
    }

    public final void zza(@NonNull String str) {
        zzfos zzfosVarZza = zzfou.zza();
        zzfosVarZza.zza(this.zza.getPackageName());
        zzfosVarZza.zzc(2);
        zzfop zzfopVarZza = zzfoq.zza();
        zzfopVarZza.zza(str);
        zzfopVarZza.zzb(2);
        zzfosVarZza.zzb(zzfopVarZza);
        new zzfof(this.zza, this.zzb, (zzfou) zzfosVarZza.zzal()).zza();
    }
}
