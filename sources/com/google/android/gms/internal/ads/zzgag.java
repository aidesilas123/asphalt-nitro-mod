package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzfzp;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
abstract class zzgag extends zzfzp.zzi {
    private static final zzgac zzbb;
    private static final Logger zzbc = Logger.getLogger(zzgag.class.getName());
    private volatile int remaining;
    private volatile Set<Throwable> seenExceptions = null;

    static {
        Throwable th;
        zzgac zzgafVar;
        zzgae zzgaeVar = null;
        try {
            zzgafVar = new zzgad(AtomicReferenceFieldUpdater.newUpdater(zzgag.class, Set.class, "seenExceptions"), AtomicIntegerFieldUpdater.newUpdater(zzgag.class, "remaining"));
            th = null;
        } catch (Error | RuntimeException e2) {
            th = e2;
            zzgafVar = new zzgaf(zzgaeVar);
        }
        zzbb = zzgafVar;
        if (th != null) {
            zzbc.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    zzgag(int i) {
        this.remaining = i;
    }

    final int zzA() {
        return zzbb.zza(this);
    }

    final Set zzC() {
        Set<Throwable> set = this.seenExceptions;
        if (set != null) {
            return set;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        zze(setNewSetFromMap);
        zzbb.zzb(this, null, setNewSetFromMap);
        Set<Throwable> set2 = this.seenExceptions;
        set2.getClass();
        return set2;
    }

    final void zzF() {
        this.seenExceptions = null;
    }

    abstract void zze(Set set);
}
