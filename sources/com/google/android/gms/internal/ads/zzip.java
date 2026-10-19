package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzip implements zzkw {
    private final zzyn zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;
    private final long zzf;
    private final long zzg;
    private int zzh;
    private boolean zzi;

    public zzip() {
        zzyn zzynVar = new zzyn(true, 65536);
        zzj(2500, 0, "bufferForPlaybackMs", "0");
        zzj(5000, 0, "bufferForPlaybackAfterRebufferMs", "0");
        zzj(50000, 2500, "minBufferMs", "bufferForPlaybackMs");
        zzj(50000, 5000, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        zzj(50000, 50000, "maxBufferMs", "minBufferMs");
        zzj(0, 0, "backBufferDurationMs", "0");
        this.zzb = zzynVar;
        this.zzc = zzfs.zzq(50000L);
        this.zzd = zzfs.zzq(50000L);
        this.zze = zzfs.zzq(2500L);
        this.zzf = zzfs.zzq(5000L);
        this.zzh = C.DEFAULT_VIDEO_BUFFER_SIZE;
        this.zzg = zzfs.zzq(0L);
    }

    private static void zzj(int i, int i2, String str, String str2) {
        zzef.zze(i >= i2, str + " cannot be less than " + str2);
    }

    private final void zzk(boolean z) {
        this.zzh = C.DEFAULT_VIDEO_BUFFER_SIZE;
        this.zzi = false;
        if (z) {
            this.zzb.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final long zza() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final void zzb() {
        zzk(false);
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final void zzc() {
        zzk(true);
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final void zzd() {
        zzk(true);
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final void zze(zzda zzdaVar, zzuk zzukVar, zzlz[] zzlzVarArr, zzwl zzwlVar, zzxy[] zzxyVarArr) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int length = zzlzVarArr.length;
            int i3 = C.DEFAULT_VIDEO_BUFFER_SIZE;
            if (i >= 2) {
                int iMax = Math.max(C.DEFAULT_VIDEO_BUFFER_SIZE, i2);
                this.zzh = iMax;
                this.zzb.zzf(iMax);
                return;
            } else {
                if (zzxyVarArr[i] != null) {
                    if (zzlzVarArr[i].zzb() != 1) {
                        i3 = 131072000;
                    }
                    i2 += i3;
                }
                i++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final boolean zzg(long j, long j2, float f2) {
        int iZza = this.zzb.zza();
        int i = this.zzh;
        long jMin = this.zzc;
        if (f2 > 1.0f) {
            jMin = Math.min(zzfs.zzo(jMin, f2), this.zzd);
        }
        if (j2 < Math.max(jMin, 500000L)) {
            boolean z = iZza < i;
            this.zzi = z;
            if (!z && j2 < 500000) {
                zzez.zzf("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j2 >= this.zzd || iZza >= i) {
            this.zzi = false;
        }
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final boolean zzh(zzda zzdaVar, zzuk zzukVar, long j, float f2, boolean z, long j2) {
        long jZzp = zzfs.zzp(j, f2);
        long jMin = z ? this.zzf : this.zze;
        if (j2 != C.TIME_UNSET) {
            jMin = Math.min(j2 / 2, jMin);
        }
        return jMin <= 0 || jZzp >= jMin || this.zzb.zza() >= this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final zzyn zzi() {
        return this.zzb;
    }
}
