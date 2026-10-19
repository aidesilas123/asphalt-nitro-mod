package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgxi extends zzgxk {
    private zzgxi() {
        super(null);
    }

    /* synthetic */ zzgxi(zzgxh zzgxhVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    final List zza(Object obj, long j) {
        zzgwv zzgwvVar = (zzgwv) zzgzq.zzh(obj, j);
        if (zzgwvVar.zzc()) {
            return zzgwvVar;
        }
        int size = zzgwvVar.size();
        zzgwv zzgwvVarZzd = zzgwvVar.zzd(size == 0 ? 10 : size + size);
        zzgzq.zzv(obj, j, zzgwvVarZzd);
        return zzgwvVarZzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    final void zzb(Object obj, long j) {
        ((zzgwv) zzgzq.zzh(obj, j)).zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    final void zzc(Object obj, Object obj2, long j) {
        zzgwv zzgwvVarZzd = (zzgwv) zzgzq.zzh(obj, j);
        zzgwv zzgwvVar = (zzgwv) zzgzq.zzh(obj2, j);
        int size = zzgwvVarZzd.size();
        int size2 = zzgwvVar.size();
        if (size > 0 && size2 > 0) {
            if (!zzgwvVarZzd.zzc()) {
                zzgwvVarZzd = zzgwvVarZzd.zzd(size2 + size);
            }
            zzgwvVarZzd.addAll(zzgwvVar);
        }
        if (size > 0) {
            zzgwvVar = zzgwvVarZzd;
        }
        zzgzq.zzv(obj, j, zzgwvVar);
    }
}
