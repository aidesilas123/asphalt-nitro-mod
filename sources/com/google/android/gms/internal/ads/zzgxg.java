package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgxg extends zzgxk {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzgxg() {
        super(null);
    }

    /* synthetic */ zzgxg(zzgxf zzgxfVar) {
        super(null);
    }

    private static List zzf(Object obj, long j, int i) {
        List list;
        List list2 = (List) zzgzq.zzh(obj, j);
        if (list2.isEmpty()) {
            List zzgxdVar = list2 instanceof zzgxe ? new zzgxd(i) : ((list2 instanceof zzgyd) && (list2 instanceof zzgwv)) ? ((zzgwv) list2).zzd(i) : new ArrayList(i);
            zzgzq.zzv(obj, j, zzgxdVar);
            return zzgxdVar;
        }
        if (zza.isAssignableFrom(list2.getClass())) {
            ArrayList arrayList = new ArrayList(list2.size() + i);
            arrayList.addAll(list2);
            zzgzq.zzv(obj, j, arrayList);
            list = arrayList;
        } else {
            if (!(list2 instanceof zzgzl)) {
                if (!(list2 instanceof zzgyd) || !(list2 instanceof zzgwv)) {
                    return list2;
                }
                zzgwv zzgwvVar = (zzgwv) list2;
                if (zzgwvVar.zzc()) {
                    return list2;
                }
                zzgwv zzgwvVarZzd = zzgwvVar.zzd(list2.size() + i);
                zzgzq.zzv(obj, j, zzgwvVarZzd);
                return zzgwvVarZzd;
            }
            zzgxd zzgxdVar2 = new zzgxd(list2.size() + i);
            zzgxdVar2.addAll(zzgxdVar2.size(), (zzgzl) list2);
            zzgzq.zzv(obj, j, zzgxdVar2);
            list = zzgxdVar2;
        }
        return list;
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    final List zza(Object obj, long j) {
        return zzf(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    final void zzb(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzgzq.zzh(obj, j);
        if (list instanceof zzgxe) {
            objUnmodifiableList = ((zzgxe) list).zze();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzgyd) && (list instanceof zzgwv)) {
                zzgwv zzgwvVar = (zzgwv) list;
                if (zzgwvVar.zzc()) {
                    zzgwvVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzgzq.zzv(obj, j, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    final void zzc(Object obj, Object obj2, long j) {
        List list = (List) zzgzq.zzh(obj2, j);
        List listZzf = zzf(obj, j, list.size());
        int size = listZzf.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            listZzf.addAll(list);
        }
        if (size > 0) {
            list = listZzf;
        }
        zzgzq.zzv(obj, j, list);
    }
}
