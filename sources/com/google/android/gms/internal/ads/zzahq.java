package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzahq extends zzahs {
    public final long zza;
    public final List zzb;
    public final List zzc;

    public zzahq(int i, long j) {
        super(i);
        this.zza = j;
        this.zzb = new ArrayList();
        this.zzc = new ArrayList();
    }

    @Override // com.google.android.gms.internal.ads.zzahs
    public final String toString() {
        List list = this.zzb;
        return zzahs.zzf(this.zzd) + " leaves: " + Arrays.toString(list.toArray()) + " containers: " + Arrays.toString(this.zzc.toArray());
    }

    @Nullable
    public final zzahq zza(int i) {
        int size = this.zzc.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzahq zzahqVar = (zzahq) this.zzc.get(i2);
            if (zzahqVar.zzd == i) {
                return zzahqVar;
            }
        }
        return null;
    }

    @Nullable
    public final zzahr zzb(int i) {
        int size = this.zzb.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzahr zzahrVar = (zzahr) this.zzb.get(i2);
            if (zzahrVar.zzd == i) {
                return zzahrVar;
            }
        }
        return null;
    }

    public final void zzc(zzahq zzahqVar) {
        this.zzc.add(zzahqVar);
    }

    public final void zzd(zzahr zzahrVar) {
        this.zzb.add(zzahrVar);
    }
}
