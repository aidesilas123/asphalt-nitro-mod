package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzqt extends AudioTrack.StreamEventCallback {
    final /* synthetic */ zzqw zza;
    final /* synthetic */ zzqu zzb;

    zzqt(zzqu zzquVar, zzqw zzqwVar) {
        this.zzb = zzquVar;
        this.zza = zzqwVar;
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onDataRequest(AudioTrack audioTrack, int i) {
        if (audioTrack.equals(this.zzb.zza.zzt)) {
            zzqw zzqwVar = this.zzb.zza;
            if (zzqwVar.zzp == null || !zzqwVar.zzQ) {
                return;
            }
            zzqwVar.zzp.zzb();
        }
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onTearDown(AudioTrack audioTrack) {
        if (audioTrack.equals(this.zzb.zza.zzt)) {
            zzqw zzqwVar = this.zzb.zza;
            if (zzqwVar.zzp == null || !zzqwVar.zzQ) {
                return;
            }
            zzqwVar.zzp.zzb();
        }
    }
}
