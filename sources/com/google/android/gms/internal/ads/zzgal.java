package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
abstract class zzgal extends zzgaa {
    private List zza;

    zzgal(zzfwp zzfwpVar, boolean z) {
        super(zzfwpVar, z, true);
        List listEmptyList = zzfwpVar.isEmpty() ? Collections.emptyList() : zzfxi.zza(zzfwpVar.size());
        for (int i = 0; i < zzfwpVar.size(); i++) {
            listEmptyList.add(null);
        }
        this.zza = listEmptyList;
    }

    abstract Object zzG(List list);

    @Override // com.google.android.gms.internal.ads.zzgaa
    final void zzf(int i, Object obj) {
        List list = this.zza;
        if (list != null) {
            list.set(i, new zzgak(obj));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgaa
    final void zzu() {
        List list = this.zza;
        if (list != null) {
            zzc(zzG(list));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgaa
    final void zzy(int i) {
        super.zzy(i);
        this.zza = null;
    }
}
