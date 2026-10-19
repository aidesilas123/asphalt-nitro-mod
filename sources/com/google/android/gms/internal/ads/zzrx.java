package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.HandlerThread;
import android.os.Trace;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzrx implements zzsj {
    private final zzfuo zzb;
    private final zzfuo zzc;

    public zzrx(int i, boolean z) {
        zzrv zzrvVar = new zzrv(i);
        zzrw zzrwVar = new zzrw(i);
        this.zzb = zzrvVar;
        this.zzc = zzrwVar;
    }

    static /* synthetic */ HandlerThread zza(int i) {
        return new HandlerThread(zzrz.zzr(i, "ExoPlayer:MediaCodecAsyncAdapter:"));
    }

    static /* synthetic */ HandlerThread zzb(int i) {
        return new HandlerThread(zzrz.zzr(i, "ExoPlayer:MediaCodecQueueingThread:"));
    }

    public final zzrz zzc(zzsi zzsiVar) throws Exception {
        MediaCodec mediaCodecCreateByCodecName;
        zzrz zzrzVar;
        String str = zzsiVar.zza.zza;
        zzrz zzrzVar2 = null;
        try {
            int i = zzfs.zza;
            Trace.beginSection("createCodec:" + str);
            mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            try {
                zzrzVar = new zzrz(mediaCodecCreateByCodecName, zza(((zzrv) this.zzb).zza), zzb(((zzrw) this.zzc).zza), false, null);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
            mediaCodecCreateByCodecName = null;
        }
        try {
            Trace.endSection();
            zzrz.zzh(zzrzVar, zzsiVar.zzb, zzsiVar.zzd, null, 0);
            return zzrzVar;
        } catch (Exception e4) {
            e = e4;
            zzrzVar2 = zzrzVar;
            if (zzrzVar2 != null) {
                zzrzVar2.zzl();
            } else if (mediaCodecCreateByCodecName != null) {
                mediaCodecCreateByCodecName.release();
            }
            throw e;
        }
    }
}
