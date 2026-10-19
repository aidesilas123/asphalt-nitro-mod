package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaci {
    public static int zza(zzacf zzacfVar, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (i3 < i2) {
            int iZzb = zzacfVar.zzb(bArr, i + i3, i2 - i3);
            if (iZzb == -1) {
                break;
            }
            i3 += iZzb;
        }
        return i3;
    }

    public static void zzb(boolean z, @Nullable String str) throws zzcf {
        if (!z) {
            throw zzcf.zza(str, null);
        }
    }

    public static boolean zzc(zzacf zzacfVar, byte[] bArr, int i, int i2, boolean z) throws IOException {
        try {
            return zzacfVar.zzm(bArr, 0, i2, z);
        } catch (EOFException e2) {
            if (z) {
                return false;
            }
            throw e2;
        }
    }

    public static boolean zzd(zzacf zzacfVar, byte[] bArr, int i, int i2) throws IOException {
        try {
            ((zzabu) zzacfVar).zzn(bArr, i, i2, false);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean zze(zzacf zzacfVar, int i) throws IOException {
        try {
            ((zzabu) zzacfVar).zzo(i, false);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
