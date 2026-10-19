package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public final class zzme {
    private final zzjc zza;

    @Deprecated
    public zzme(Context context, zzcgf zzcgfVar) {
        this.zza = new zzjc(context, zzcgfVar);
    }

    @Deprecated
    public final zzme zza(final zzkw zzkwVar) {
        zzjc zzjcVar = this.zza;
        zzef.zzf(!zzjcVar.zzq);
        Objects.requireNonNull(zzkwVar);
        zzjcVar.zzf = new zzfuo() { // from class: com.google.android.gms.internal.ads.zziu
            @Override // com.google.android.gms.internal.ads.zzfuo
            public final Object zza() {
                return zzkwVar;
            }
        };
        return this;
    }

    @Deprecated
    public final zzme zzb(final zzye zzyeVar) {
        zzjc zzjcVar = this.zza;
        zzef.zzf(!zzjcVar.zzq);
        Objects.requireNonNull(zzyeVar);
        zzjcVar.zze = new zzfuo() { // from class: com.google.android.gms.internal.ads.zzjb
            @Override // com.google.android.gms.internal.ads.zzfuo
            public final Object zza() {
                return zzyeVar;
            }
        };
        return this;
    }

    @Deprecated
    public final zzmf zzc() {
        zzjc zzjcVar = this.zza;
        zzef.zzf(!zzjcVar.zzq);
        zzjcVar.zzq = true;
        return new zzmf(zzjcVar);
    }
}
