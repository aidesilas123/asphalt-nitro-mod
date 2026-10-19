package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzdoq implements zzbfv {
    final /* synthetic */ String zza = "_videoMediaView";
    final /* synthetic */ zzdor zzb;

    zzdoq(zzdor zzdorVar, String str) {
        this.zzb = zzdorVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final JSONObject zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final JSONObject zzb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final void zzc() {
        zzdor zzdorVar = this.zzb;
        if (zzdorVar.zzd != null) {
            zzdorVar.zzd.zzE(this.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final void zzd(MotionEvent motionEvent) {
    }
}
