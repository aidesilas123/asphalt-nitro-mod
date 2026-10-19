package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzalm {
    public static int zza(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    public static long zzb(zzfj zzfjVar, int i, int i2) {
        zzfjVar.zzG(i);
        if (zzfjVar.zza() < 5) {
            return C.TIME_UNSET;
        }
        int iZzf = zzfjVar.zzf();
        if ((8388608 & iZzf) != 0 || ((iZzf >> 8) & 8191) != i2 || (iZzf & 32) == 0 || zzfjVar.zzl() < 7 || zzfjVar.zza() < 7 || (zzfjVar.zzl() & 16) != 16) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[6];
        zzfjVar.zzC(bArr, 0, 6);
        long j = bArr[0];
        long j2 = bArr[1];
        long j3 = bArr[2];
        long j4 = bArr[3] & 255;
        return ((j & 255) << 25) | ((j2 & 255) << 17) | ((j3 & 255) << 9) | (j4 + j4) | ((((long) bArr[4]) & 255) >> 7);
    }
}
