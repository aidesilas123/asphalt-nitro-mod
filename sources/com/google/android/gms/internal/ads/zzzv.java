package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzzv implements zzdp {
    private static final zzfuo zza = zzfur.zza(new zzfuo() { // from class: com.google.android.gms.internal.ads.zzzt
        @Override // com.google.android.gms.internal.ads.zzfuo
        public final Object zza() {
            try {
                Class<?> cls = Class.forName("androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder");
                Object objInvoke = cls.getMethod("build", new Class[0]).invoke(cls.getConstructor(new Class[0]).newInstance(new Object[0]), new Object[0]);
                Objects.requireNonNull(objInvoke);
                return (zzdp) objInvoke;
            } catch (Exception e2) {
                throw new IllegalStateException(e2);
            }
        }
    });

    private zzzv() {
    }

    /* synthetic */ zzzv(zzzu zzzuVar) {
    }
}
