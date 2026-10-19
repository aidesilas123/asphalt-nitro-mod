package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzahe {
    private final zzfj zza = new zzfj(8);
    private int zzb;

    private final long zzb(zzacf zzacfVar) throws IOException {
        int i;
        zzabu zzabuVar = (zzabu) zzacfVar;
        int i2 = 0;
        zzabuVar.zzm(this.zza.zzI(), 0, 1, false);
        int i3 = this.zza.zzI()[0] & 255;
        if (i3 == 0) {
            return Long.MIN_VALUE;
        }
        int i4 = 128;
        int i5 = 0;
        while (true) {
            i = i5 + 1;
            if ((i3 & i4) != 0) {
                break;
            }
            i4 >>= 1;
            i5 = i;
        }
        int i6 = i3 & (~i4);
        zzabuVar.zzm(this.zza.zzI(), 1, i5, false);
        while (i2 < i5) {
            i2++;
            i6 = (this.zza.zzI()[i2] & 255) + (i6 << 8);
        }
        this.zzb += i;
        return i6;
    }

    public final boolean zza(zzacf zzacfVar) throws IOException {
        long jZzd = zzacfVar.zzd();
        long j = PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        if (jZzd != -1 && jZzd <= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
            j = jZzd;
        }
        zzabu zzabuVar = (zzabu) zzacfVar;
        zzabuVar.zzm(this.zza.zzI(), 0, 4, false);
        long jZzt = this.zza.zzt();
        this.zzb = 4;
        while (jZzt != 440786851) {
            int i = (int) j;
            int i2 = this.zzb + 1;
            this.zzb = i2;
            if (i2 == i) {
                return false;
            }
            zzabuVar.zzm(this.zza.zzI(), 0, 1, false);
            jZzt = ((jZzt << 8) & (-256)) | ((long) (this.zza.zzI()[0] & 255));
        }
        long jZzb = zzb(zzacfVar);
        long j2 = this.zzb;
        if (jZzb != Long.MIN_VALUE) {
            long j3 = j2 + jZzb;
            if (jZzd == -1 || j3 < jZzd) {
                while (true) {
                    long j4 = this.zzb;
                    if (j4 < j3) {
                        if (zzb(zzacfVar) == Long.MIN_VALUE) {
                            return false;
                        }
                        long jZzb2 = zzb(zzacfVar);
                        if (jZzb2 < 0) {
                            return false;
                        }
                        if (jZzb2 != 0) {
                            int i3 = (int) jZzb2;
                            zzabuVar.zzl(i3, false);
                            this.zzb += i3;
                        }
                    } else if (j4 == j3) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
