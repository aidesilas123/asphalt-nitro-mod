package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzabc {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    private static final int[] zzc = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static zzabb zza(byte[] bArr) throws zzcf {
        return zzb(new zzfi(bArr, bArr.length), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b5, code lost:
    
        if (r11 != 3) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.ads.zzabb zzb(com.google.android.gms.internal.ads.zzfi r11, boolean r12) throws com.google.android.gms.internal.ads.zzcf {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabc.zzb(com.google.android.gms.internal.ads.zzfi, boolean):com.google.android.gms.internal.ads.zzabb");
    }

    private static int zzc(zzfi zzfiVar) {
        int iZzd = zzfiVar.zzd(5);
        return iZzd == 31 ? zzfiVar.zzd(6) + 32 : iZzd;
    }

    private static int zzd(zzfi zzfiVar) throws zzcf {
        int iZzd = zzfiVar.zzd(4);
        if (iZzd == 15) {
            if (zzfiVar.zza() >= 24) {
                return zzfiVar.zzd(24);
            }
            throw zzcf.zza("AAC header insufficient data", null);
        }
        if (iZzd < 13) {
            return zzb[iZzd];
        }
        throw zzcf.zza("AAC header wrong Sampling Frequency Index", null);
    }
}
