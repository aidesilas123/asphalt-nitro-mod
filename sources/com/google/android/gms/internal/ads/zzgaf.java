package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgaf extends zzgac {
    private zzgaf() {
        super(null);
    }

    /* synthetic */ zzgaf(zzgae zzgaeVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzgac
    final int zza(zzgag zzgagVar) {
        int i;
        synchronized (zzgagVar) {
            i = zzgagVar.remaining - 1;
            zzgagVar.remaining = i;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzgac
    final void zzb(zzgag zzgagVar, Set set, Set set2) {
        synchronized (zzgagVar) {
            if (zzgagVar.seenExceptions == null) {
                zzgagVar.seenExceptions = set2;
            }
        }
    }
}
