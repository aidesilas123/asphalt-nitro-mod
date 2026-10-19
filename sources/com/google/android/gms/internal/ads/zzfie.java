package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.Collections;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfie {
    public static final zzfil zza(Callable callable, Object obj, zzfim zzfimVar) {
        return zzb(callable, zzfimVar.zzb, obj, zzfimVar);
    }

    public static final zzfil zzb(Callable callable, zzgbl zzgblVar, Object obj, zzfim zzfimVar) {
        return new zzfil(zzfimVar, obj, zzfim.zza, Collections.emptyList(), zzgblVar.zzb(callable));
    }

    public static final zzfil zzc(h0 h0Var, Object obj, zzfim zzfimVar) {
        return new zzfil(zzfimVar, obj, zzfim.zza, Collections.emptyList(), h0Var);
    }

    public static final zzfil zzd(final zzfhy zzfhyVar, zzgbl zzgblVar, Object obj, zzfim zzfimVar) {
        return zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfid
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                zzfhyVar.zza();
                return null;
            }
        }, zzgblVar, obj, zzfimVar);
    }
}
