package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfui implements Iterable {
    final /* synthetic */ CharSequence zza;
    final /* synthetic */ zzful zzb;

    zzfui(zzful zzfulVar, CharSequence charSequence) {
        this.zzb = zzfulVar;
        this.zza = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.zzb.zzg(this.zza);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        zzfto.zzb(sb, this, ", ");
        sb.append(']');
        return sb.toString();
    }
}
