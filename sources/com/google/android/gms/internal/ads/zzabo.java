package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzabo {
    public static final zzabo zza = new zzabo(-3, C.TIME_UNSET, -1);
    private final int zzb;
    private final long zzc;
    private final long zzd;

    private zzabo(int i, long j, long j2) {
        this.zzb = i;
        this.zzc = j;
        this.zzd = j2;
    }

    public static zzabo zzd(long j, long j2) {
        return new zzabo(-1, j, j2);
    }

    public static zzabo zze(long j) {
        return new zzabo(0, C.TIME_UNSET, j);
    }

    public static zzabo zzf(long j, long j2) {
        return new zzabo(-2, j, j2);
    }
}
