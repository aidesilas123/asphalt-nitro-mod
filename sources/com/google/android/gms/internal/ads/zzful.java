package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzful {
    private final zzftk zza;
    private final zzfuk zzb;

    private zzful(zzfuk zzfukVar) {
        zzftk zzftkVar = zzftj.zza;
        this.zzb = zzfukVar;
        this.zza = zzftkVar;
    }

    public static zzful zzb(int i) {
        return new zzful(new zzfuh(4000));
    }

    public static zzful zzc(zzftk zzftkVar) {
        return new zzful(new zzfuf(zzftkVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Iterator zzg(CharSequence charSequence) {
        return this.zzb.zza(this, charSequence);
    }

    public final Iterable zzd(CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        return new zzfui(this, charSequence);
    }

    public final List zzf(CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        Iterator itZzg = zzg(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itZzg.hasNext()) {
            arrayList.add((String) itZzg.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
