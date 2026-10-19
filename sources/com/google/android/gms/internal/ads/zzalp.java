package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.math.RoundingMode;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzalp implements zzalq {
    private static final int[] zza = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
    private static final int[] zzb = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 209, 230, 253, 279, 307, 337, 371, TTAdConstant.DOWNLOAD_URL_CODE, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    private final zzach zzc;
    private final zzadk zzd;
    private final zzalt zze;
    private final int zzf;
    private final byte[] zzg;
    private final zzfj zzh;
    private final int zzi;
    private final zzam zzj;
    private int zzk;
    private long zzl;
    private int zzm;
    private long zzn;

    public zzalp(zzach zzachVar, zzadk zzadkVar, zzalt zzaltVar) throws zzcf {
        this.zzc = zzachVar;
        this.zzd = zzadkVar;
        this.zze = zzaltVar;
        int iMax = Math.max(1, zzaltVar.zzc / 10);
        this.zzi = iMax;
        zzfj zzfjVar = new zzfj(zzaltVar.zzf);
        zzfjVar.zzj();
        int iZzj = zzfjVar.zzj();
        this.zzf = iZzj;
        int i = zzaltVar.zzb;
        int i2 = zzaltVar.zzd;
        int i3 = (((i2 - (i * 4)) * 8) / (zzaltVar.zze * i)) + 1;
        if (iZzj != i3) {
            throw zzcf.zza("Expected frames per block: " + i3 + "; got: " + iZzj, null);
        }
        int i4 = zzfs.zza;
        int i5 = ((iMax + iZzj) - 1) / iZzj;
        this.zzg = new byte[i2 * i5];
        this.zzh = new zzfj(i5 * (iZzj + iZzj) * i);
        int i6 = ((zzaltVar.zzc * zzaltVar.zzd) * 8) / iZzj;
        zzak zzakVar = new zzak();
        zzakVar.zzU(MimeTypes.AUDIO_RAW);
        zzakVar.zzx(i6);
        zzakVar.zzQ(i6);
        zzakVar.zzN((iMax + iMax) * i);
        zzakVar.zzy(zzaltVar.zzb);
        zzakVar.zzV(zzaltVar.zzc);
        zzakVar.zzP(2);
        this.zzj = zzakVar.zzac();
    }

    private final int zzd(int i) {
        int i2 = this.zze.zzb;
        return i / (i2 + i2);
    }

    private final int zze(int i) {
        return (i + i) * this.zze.zzb;
    }

    private final void zzf(int i) {
        long jZzs = this.zzl + zzfs.zzs(this.zzn, 1000000L, this.zze.zzc, RoundingMode.FLOOR);
        int iZze = zze(i);
        this.zzd.zzt(jZzs, 1, iZze, this.zzm - iZze, null);
        this.zzn += (long) i;
        this.zzm -= iZze;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final void zza(int i, long j) {
        this.zzc.zzO(new zzalw(this.zze, this.zzf, i, j));
        this.zzd.zzl(this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final void zzb(long j) {
        this.zzk = 0;
        this.zzl = j;
        this.zzm = 0;
        this.zzn = 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0026  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003c -> B:4:0x0021). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.zzalq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zzacf r21, long r22) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 350
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalp.zzc(com.google.android.gms.internal.ads.zzacf, long):boolean");
    }
}
