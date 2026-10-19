package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@RequiresApi(29)
final class zzow {
    private static final AudioAttributes zza = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

    @DoNotInline
    public static int zza(int i, int i2) {
        for (int i3 = 10; i3 > 0; i3--) {
            int iZzg = zzfs.zzg(i3);
            if (iZzg != 0 && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i).setSampleRate(i2).setChannelMask(iZzg).build(), zza)) {
                return i3;
            }
        }
        return 0;
    }

    @DoNotInline
    public static zzfwu<Integer> zzb() {
        zzfwr zzfwrVar = new zzfwr();
        zzfyu it = zzox.zzc.keySet().iterator();
        while (it.hasNext()) {
            int iIntValue = ((Integer) it.next()).intValue();
            if (zzfs.zza >= zzfs.zzf(iIntValue) && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(iIntValue).setSampleRate(48000).build(), zza)) {
                zzfwrVar.zzf(Integer.valueOf(iIntValue));
            }
        }
        zzfwrVar.zzf((Object) 2);
        return zzfwrVar.zzi();
    }
}
