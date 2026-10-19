package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaei extends zzabq {
    public zzaei(final zzacr zzacrVar, int i, long j, long j2) {
        long j3;
        zzabn zzabnVar = new zzabn() { // from class: com.google.android.gms.internal.ads.zzaef
            @Override // com.google.android.gms.internal.ads.zzabn
            public final long zza(long j4) {
                return zzacrVar.zzb(j4);
            }
        };
        zzaeh zzaehVar = new zzaeh(zzacrVar, i, null);
        long jZza = zzacrVar.zza();
        long j4 = zzacrVar.zzj;
        int i2 = zzacrVar.zzd;
        if (i2 > 0) {
            j3 = ((((long) i2) + ((long) zzacrVar.zzc)) / 2) + 1;
        } else {
            int i3 = zzacrVar.zza;
            int i4 = zzacrVar.zzb;
            long j5 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
            if (i3 == i4 && i3 > 0) {
                j5 = i3;
            }
            j3 = (((j5 * ((long) zzacrVar.zzg)) * ((long) zzacrVar.zzh)) / 8) + 64;
        }
        super(zzabnVar, zzaehVar, jZza, 0L, j4, j, j2, j3, Math.max(6, zzacrVar.zzc));
    }
}
