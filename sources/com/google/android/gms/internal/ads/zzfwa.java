package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfwa extends AbstractSet {
    final /* synthetic */ zzfwd zza;

    zzfwa(zzfwd zzfwdVar) {
        this.zza = zzfwdVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.zza.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzfwd zzfwdVar = this.zza;
        Map mapZzj = zzfwdVar.zzj();
        return mapZzj != null ? mapZzj.keySet().iterator() : new zzfvu(zzfwdVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map mapZzj = this.zza.zzj();
        return mapZzj != null ? mapZzj.keySet().remove(obj) : this.zza.zzs(obj) != zzfwd.zzd;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
