package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcix implements zzhdp {
    private final zzcit zza;

    public zzcix(zzcit zzcitVar) {
        this.zza = zzcitVar;
    }

    public final WeakReference zza() {
        WeakReference weakReferenceZzf = this.zza.zzf();
        zzhdx.zzb(weakReferenceZzf);
        return weakReferenceZzf;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* synthetic */ Object zzb() {
        WeakReference weakReferenceZzf = this.zza.zzf();
        zzhdx.zzb(weakReferenceZzf);
        return weakReferenceZzf;
    }
}
