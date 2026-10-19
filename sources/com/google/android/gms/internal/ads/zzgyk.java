package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgyk {
    private final ArrayDeque zza = new ArrayDeque();

    private zzgyk() {
    }

    /* synthetic */ zzgyk(zzgyj zzgyjVar) {
    }

    static /* bridge */ /* synthetic */ zzgve zza(zzgyk zzgykVar, zzgve zzgveVar, zzgve zzgveVar2) {
        zzgykVar.zzb(zzgveVar);
        zzgykVar.zzb(zzgveVar2);
        zzgve zzgyoVar = (zzgve) zzgykVar.zza.pop();
        while (!zzgykVar.zza.isEmpty()) {
            zzgyoVar = new zzgyo((zzgve) zzgykVar.zza.pop(), zzgyoVar);
        }
        return zzgyoVar;
    }

    private final void zzb(zzgve zzgveVar) {
        zzgyn zzgynVar;
        if (!zzgveVar.zzh()) {
            if (!(zzgveVar instanceof zzgyo)) {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found ".concat(String.valueOf(zzgveVar.getClass())));
            }
            zzgyo zzgyoVar = (zzgyo) zzgveVar;
            zzb(zzgyoVar.zzd);
            zzb(zzgyoVar.zze);
            return;
        }
        int iZzc = zzc(zzgveVar.zzd());
        ArrayDeque arrayDeque = this.zza;
        int iZzc2 = zzgyo.zzc(iZzc + 1);
        if (arrayDeque.isEmpty() || ((zzgve) this.zza.peek()).zzd() >= iZzc2) {
            this.zza.push(zzgveVar);
            return;
        }
        int iZzc3 = zzgyo.zzc(iZzc);
        zzgve zzgyoVar2 = (zzgve) this.zza.pop();
        while (true) {
            zzgynVar = null;
            if (this.zza.isEmpty() || ((zzgve) this.zza.peek()).zzd() >= iZzc3) {
                break;
            } else {
                zzgyoVar2 = new zzgyo((zzgve) this.zza.pop(), zzgyoVar2);
            }
        }
        zzgyo zzgyoVar3 = new zzgyo(zzgyoVar2, zzgveVar);
        while (!this.zza.isEmpty()) {
            int iZzc4 = zzc(zzgyoVar3.zzd()) + 1;
            ArrayDeque arrayDeque2 = this.zza;
            if (((zzgve) arrayDeque2.peek()).zzd() >= zzgyo.zzc(iZzc4)) {
                break;
            } else {
                zzgyoVar3 = new zzgyo((zzgve) this.zza.pop(), zzgyoVar3);
            }
        }
        this.zza.push(zzgyoVar3);
    }

    private static final int zzc(int i) {
        int iBinarySearch = Arrays.binarySearch(zzgyo.zza, i);
        return iBinarySearch < 0 ? (-(iBinarySearch + 1)) - 1 : iBinarySearch;
    }
}
