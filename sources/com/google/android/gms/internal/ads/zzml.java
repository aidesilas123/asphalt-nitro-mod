package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzml {
    private final zzah zza;
    private final SparseArray zzb;

    public zzml(zzah zzahVar, SparseArray sparseArray) {
        this.zza = zzahVar;
        SparseArray sparseArray2 = new SparseArray(zzahVar.zzb());
        for (int i = 0; i < zzahVar.zzb(); i++) {
            int iZza = zzahVar.zza(i);
            zzmk zzmkVar = (zzmk) sparseArray.get(iZza);
            Objects.requireNonNull(zzmkVar);
            sparseArray2.append(iZza, zzmkVar);
        }
        this.zzb = sparseArray2;
    }

    public final int zza(int i) {
        return this.zza.zza(i);
    }

    public final int zzb() {
        return this.zza.zzb();
    }

    public final zzmk zzc(int i) {
        zzmk zzmkVar = (zzmk) this.zzb.get(i);
        Objects.requireNonNull(zzmkVar);
        return zzmkVar;
    }

    public final boolean zzd(int i) {
        return this.zza.zzc(i);
    }
}
