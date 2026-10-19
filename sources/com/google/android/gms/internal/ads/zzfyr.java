package com.google.android.gms.internal.ads;

import com.json.o2;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfyr extends zzfwz {
    final transient Object zza;

    zzfyr(Object obj) {
        Objects.requireNonNull(obj);
        this.zza = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzfwp, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfwz, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzfwz, com.google.android.gms.internal.ads.zzfwp, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzfxc(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return o2.i.f6490d + this.zza.toString() + o2.i.f6491e;
    }

    @Override // com.google.android.gms.internal.ads.zzfwp
    final int zza(Object[] objArr, int i) {
        objArr[i] = this.zza;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfwz, com.google.android.gms.internal.ads.zzfwp
    public final zzfwu zzd() {
        return zzfwu.zzm(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfwz, com.google.android.gms.internal.ads.zzfwp
    /* JADX INFO: renamed from: zze */
    public final zzfyu iterator() {
        return new zzfxc(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfwp
    final boolean zzf() {
        throw null;
    }
}
