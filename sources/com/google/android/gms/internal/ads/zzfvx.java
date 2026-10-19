package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfvx extends AbstractSet {
    final /* synthetic */ zzfwd zza;

    zzfvx(zzfwd zzfwdVar) {
        this.zza = zzfwdVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Map mapZzj = this.zza.zzj();
        if (mapZzj != null) {
            return mapZzj.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int iZzq = this.zza.zzq(entry.getKey());
            if (iZzq != -1) {
                Object[] objArr = this.zza.zzc;
                objArr.getClass();
                if (zzftt.zza(objArr[iZzq], entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzfwd zzfwdVar = this.zza;
        Map mapZzj = zzfwdVar.zzj();
        return mapZzj != null ? mapZzj.entrySet().iterator() : new zzfvv(zzfwdVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map mapZzj = this.zza.zzj();
        if (mapZzj != null) {
            return mapZzj.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        zzfwd zzfwdVar = this.zza;
        if (zzfwdVar.zzo()) {
            return false;
        }
        int iZzp = zzfwdVar.zzp();
        Object key = entry.getKey();
        Object value = entry.getValue();
        zzfwd zzfwdVar2 = this.zza;
        Object objZzh = zzfwd.zzh(zzfwdVar2);
        int[] iArr = zzfwdVar2.zza;
        iArr.getClass();
        zzfwd zzfwdVar3 = this.zza;
        Object[] objArr = zzfwdVar3.zzb;
        objArr.getClass();
        Object[] objArr2 = zzfwdVar3.zzc;
        objArr2.getClass();
        int iZzb = zzfwe.zzb(key, value, iZzp, objZzh, iArr, objArr, objArr2);
        if (iZzb == -1) {
            return false;
        }
        this.zza.zzn(iZzb, iZzp);
        zzfwd zzfwdVar4 = this.zza;
        zzfwdVar4.zzg--;
        this.zza.zzl();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
