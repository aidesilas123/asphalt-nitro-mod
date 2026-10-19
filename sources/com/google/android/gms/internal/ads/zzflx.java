package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzflx {
    private static final zzflx zza = new zzflx();
    private final ArrayList zzb = new ArrayList();
    private final ArrayList zzc = new ArrayList();

    private zzflx() {
    }

    public static zzflx zza() {
        return zza;
    }

    public final Collection zzb() {
        return Collections.unmodifiableCollection(this.zzc);
    }

    public final Collection zzc() {
        return Collections.unmodifiableCollection(this.zzb);
    }

    public final void zzd(zzflj zzfljVar) {
        this.zzb.add(zzfljVar);
    }

    public final void zze(zzflj zzfljVar) {
        ArrayList arrayList = this.zzb;
        boolean zZzg = zzg();
        arrayList.remove(zzfljVar);
        this.zzc.remove(zzfljVar);
        if (!zZzg || zzg()) {
            return;
        }
        zzfme.zzb().zzg();
    }

    public final void zzf(zzflj zzfljVar) {
        ArrayList arrayList = this.zzc;
        boolean zZzg = zzg();
        arrayList.add(zzfljVar);
        if (zZzg) {
            return;
        }
        zzfme.zzb().zzf();
    }

    public final boolean zzg() {
        return this.zzc.size() > 0;
    }
}
