package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzagw implements zzagy {
    private final byte[] zza = new byte[8];
    private final ArrayDeque zzb = new ArrayDeque();
    private final zzahf zzc = new zzahf();
    private zzagx zzd;
    private int zze;
    private int zzf;
    private long zzg;

    private final long zzd(zzacf zzacfVar, int i) throws IOException {
        ((zzabu) zzacfVar).zzn(this.zza, 0, i, false);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | ((long) (this.zza[i2] & 255));
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzagy
    public final void zza(zzagx zzagxVar) {
        this.zzd = zzagxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzagy
    public final void zzb() {
        this.zze = 0;
        this.zzb.clear();
        this.zzc.zze();
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b4 A[LOOP:0: B:3:0x0005->B:36:0x00b4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00c1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00fe A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0107 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x012a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x016d A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzagy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zzacf r14) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 780
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagw.zzc(com.google.android.gms.internal.ads.zzacf):boolean");
    }
}
