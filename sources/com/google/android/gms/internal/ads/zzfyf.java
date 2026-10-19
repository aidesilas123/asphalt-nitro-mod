package com.google.android.gms.internal.ads;

import java.util.AbstractMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfyf extends zzfwu {
    final /* synthetic */ zzfyg zza;

    zzfyf(zzfyg zzfygVar) {
        this.zza = zzfygVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzfty.zza(i, this.zza.zzc, "index");
        zzfyg zzfygVar = this.zza;
        int i2 = i + i;
        Object obj = zzfygVar.zzb[i2];
        obj.getClass();
        Object obj2 = zzfygVar.zzb[i2 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfwp
    public final boolean zzf() {
        return true;
    }
}
