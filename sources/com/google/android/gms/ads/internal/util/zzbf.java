package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbf {
    private final List zza = new ArrayList();
    private final List zzb = new ArrayList();
    private final List zzc = new ArrayList();

    public final zzbf zza(String str, double d2, double d3) {
        int i = 0;
        while (i < this.zza.size()) {
            double dDoubleValue = ((Double) this.zzc.get(i)).doubleValue();
            double dDoubleValue2 = ((Double) this.zzb.get(i)).doubleValue();
            if (d2 < dDoubleValue || (dDoubleValue == d2 && d3 < dDoubleValue2)) {
                break;
            }
            i++;
        }
        this.zza.add(i, str);
        this.zzc.add(i, Double.valueOf(d2));
        this.zzb.add(i, Double.valueOf(d3));
        return this;
    }

    public final zzbh zzb() {
        return new zzbh(this, null);
    }
}
