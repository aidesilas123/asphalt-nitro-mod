package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfws extends zzfuu {
    private final zzfwu zza;

    zzfws(zzfwu zzfwuVar, int i) {
        super(zzfwuVar.size(), i);
        this.zza = zzfwuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuu
    protected final Object zza(int i) {
        return this.zza.get(i);
    }
}
