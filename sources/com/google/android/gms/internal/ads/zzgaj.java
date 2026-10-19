package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgaj extends zzgal {
    zzgaj(zzfwp zzfwpVar, boolean z) {
        super(zzfwpVar, z);
        zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzgal
    public final /* bridge */ /* synthetic */ Object zzG(List list) {
        ArrayList arrayListZza = zzfxi.zza(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzgak zzgakVar = (zzgak) it.next();
            arrayListZza.add(zzgakVar != null ? zzgakVar.zza : null);
        }
        return Collections.unmodifiableList(arrayListZza);
    }
}
