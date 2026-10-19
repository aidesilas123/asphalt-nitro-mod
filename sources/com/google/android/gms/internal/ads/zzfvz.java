package com.google.android.gms.internal.ads;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
abstract class zzfvz implements Iterator {
    int zzb;
    int zzc;
    int zzd = -1;
    final /* synthetic */ zzfwd zze;

    /* synthetic */ zzfvz(zzfwd zzfwdVar, zzfvy zzfvyVar) {
        this.zze = zzfwdVar;
        this.zzb = zzfwdVar.zzf;
        this.zzc = zzfwdVar.zze();
    }

    private final void zzb() {
        if (this.zze.zzf != this.zzb) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzc >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        zzb();
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.zzc;
        this.zzd = i;
        Object objZza = zza(i);
        this.zzc = this.zze.zzf(this.zzc);
        return objZza;
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzb();
        zzfty.zzj(this.zzd >= 0, "no calls to next() since the last call to remove()");
        this.zzb += 32;
        zzfwd zzfwdVar = this.zze;
        int i = this.zzd;
        Object[] objArr = zzfwdVar.zzb;
        objArr.getClass();
        zzfwdVar.remove(objArr[i]);
        this.zzc--;
        this.zzd = -1;
    }

    abstract Object zza(int i);
}
