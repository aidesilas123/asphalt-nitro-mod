package com.google.android.gms.measurement.internal;

import androidx.collection.LruCache;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfw extends LruCache {
    final /* synthetic */ zzfz zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfw(zzfz zzfzVar, int i) {
        super(20);
        this.zza = zzfzVar;
    }

    @Override // androidx.collection.LruCache
    protected final /* bridge */ /* synthetic */ Object create(Object obj) {
        String str = (String) obj;
        Preconditions.checkNotEmpty(str);
        return zzfz.zzd(this.zza, str);
    }
}
