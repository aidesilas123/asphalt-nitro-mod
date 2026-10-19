package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgwt extends AbstractList {
    private final List zza;
    private final zzgws zzb;

    public zzgwt(List list, zzgws zzgwsVar) {
        this.zza = list;
        this.zzb = zzgwsVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        zzazn zzaznVarZzb = zzazn.zzb(((Integer) this.zza.get(i)).intValue());
        return zzaznVarZzb == null ? zzazn.AD_FORMAT_TYPE_UNSPECIFIED : zzaznVarZzb;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }
}
