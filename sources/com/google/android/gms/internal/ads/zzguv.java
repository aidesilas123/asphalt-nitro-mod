package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzguv implements Comparator {
    zzguv() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzgve zzgveVar = (zzgve) obj;
        zzgve zzgveVar2 = (zzgve) obj2;
        zzguy it = zzgveVar.iterator();
        zzguy it2 = zzgveVar2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            int iCompareTo = Integer.valueOf(it.zza() & 255).compareTo(Integer.valueOf(it2.zza() & 255));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return Integer.valueOf(zzgveVar.zzd()).compareTo(Integer.valueOf(zzgveVar2.zzd()));
    }
}
