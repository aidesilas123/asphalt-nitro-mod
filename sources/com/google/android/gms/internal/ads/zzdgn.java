package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdgn extends zzddv implements zzbkt {
    public zzdgn(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbkt
    public final void zza(final zzbxc zzbxcVar) {
        zzt(new zzddu() { // from class: com.google.android.gms.internal.ads.zzdgm
            @Override // com.google.android.gms.internal.ads.zzddu
            public final void zza(Object obj) {
                ((zzbkt) obj).zza(zzbxcVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbkt
    public final void zzb() {
        zzt(new zzddu() { // from class: com.google.android.gms.internal.ads.zzdgl
            @Override // com.google.android.gms.internal.ads.zzddu
            public final void zza(Object obj) {
                ((zzbkt) obj).zzb();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbkt
    public final synchronized void zzc() {
        zzt(new zzddu() { // from class: com.google.android.gms.internal.ads.zzdgk
            @Override // com.google.android.gms.internal.ads.zzddu
            public final void zza(Object obj) {
                ((zzbkt) obj).zzc();
            }
        });
    }
}
