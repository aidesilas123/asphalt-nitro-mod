package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgym implements Iterator {
    private final ArrayDeque zza;
    private zzguz zzb;

    /* synthetic */ zzgym(zzgve zzgveVar, zzgyl zzgylVar) {
        if (!(zzgveVar instanceof zzgyo)) {
            this.zza = null;
            this.zzb = (zzguz) zzgveVar;
            return;
        }
        zzgyo zzgyoVar = (zzgyo) zzgveVar;
        ArrayDeque arrayDeque = new ArrayDeque(zzgyoVar.zzf());
        this.zza = arrayDeque;
        arrayDeque.push(zzgyoVar);
        this.zzb = zzb(zzgyoVar.zzd);
    }

    private final zzguz zzb(zzgve zzgveVar) {
        while (zzgveVar instanceof zzgyo) {
            zzgyo zzgyoVar = (zzgyo) zzgveVar;
            this.zza.push(zzgyoVar);
            zzgveVar = zzgyoVar.zzd;
        }
        return (zzguz) zzgveVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb != null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzguz next() {
        zzguz zzguzVarZzb;
        zzguz zzguzVar = this.zzb;
        if (zzguzVar == null) {
            throw new NoSuchElementException();
        }
        do {
            ArrayDeque arrayDeque = this.zza;
            zzguzVarZzb = null;
            if (arrayDeque == null || arrayDeque.isEmpty()) {
                break;
            }
            zzguzVarZzb = zzb(((zzgyo) this.zza.pop()).zze);
        } while (zzguzVarZzb.zzd() == 0);
        this.zzb = zzguzVarZzb;
        return zzguzVar;
    }
}
