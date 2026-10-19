package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzln implements zzuu, zzrm {
    final /* synthetic */ zzlr zza;
    private final zzlp zzb;

    public zzln(zzlr zzlrVar, zzlp zzlpVar) {
        this.zza = zzlrVar;
        this.zzb = zzlpVar;
    }

    @Nullable
    private final Pair zzf(int i, @Nullable zzuk zzukVar) {
        zzuk zzukVarZza;
        zzuk zzukVar2 = null;
        if (zzukVar != null) {
            zzlp zzlpVar = this.zzb;
            int i2 = 0;
            while (true) {
                if (i2 >= zzlpVar.zzc.size()) {
                    zzukVarZza = null;
                    break;
                }
                if (((zzuk) zzlpVar.zzc.get(i2)).zzd == zzukVar.zzd) {
                    zzukVarZza = zzukVar.zza(Pair.create(zzlpVar.zzb, zzukVar.zza));
                    break;
                }
                i2++;
            }
            if (zzukVarZza == null) {
                return null;
            }
            zzukVar2 = zzukVarZza;
        }
        return Pair.create(Integer.valueOf(this.zzb.zzd), zzukVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzuu
    public final void zzae(int i, @Nullable zzuk zzukVar, final zzug zzugVar) {
        final Pair pairZzf = zzf(0, zzukVar);
        if (pairZzf != null) {
            this.zza.zzi.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzll
                @Override // java.lang.Runnable
                public final void run() {
                    Pair pair = pairZzf;
                    this.zza.zza.zzh.zzae(((Integer) pair.first).intValue(), (zzuk) pair.second, zzugVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuu
    public final void zzaf(int i, @Nullable zzuk zzukVar, final zzub zzubVar, final zzug zzugVar) {
        final Pair pairZzf = zzf(0, zzukVar);
        if (pairZzf != null) {
            this.zza.zzi.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlj
                @Override // java.lang.Runnable
                public final void run() {
                    Pair pair = pairZzf;
                    this.zza.zza.zzh.zzaf(((Integer) pair.first).intValue(), (zzuk) pair.second, zzubVar, zzugVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuu
    public final void zzag(int i, @Nullable zzuk zzukVar, final zzub zzubVar, final zzug zzugVar) {
        final Pair pairZzf = zzf(0, zzukVar);
        if (pairZzf != null) {
            this.zza.zzi.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlm
                @Override // java.lang.Runnable
                public final void run() {
                    Pair pair = pairZzf;
                    this.zza.zza.zzh.zzag(((Integer) pair.first).intValue(), (zzuk) pair.second, zzubVar, zzugVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuu
    public final void zzah(int i, @Nullable zzuk zzukVar, final zzub zzubVar, final zzug zzugVar, final IOException iOException, final boolean z) {
        final Pair pairZzf = zzf(0, zzukVar);
        if (pairZzf != null) {
            this.zza.zzi.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzli
                @Override // java.lang.Runnable
                public final void run() {
                    Pair pair = pairZzf;
                    this.zza.zza.zzh.zzah(((Integer) pair.first).intValue(), (zzuk) pair.second, zzubVar, zzugVar, iOException, z);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuu
    public final void zzai(int i, @Nullable zzuk zzukVar, final zzub zzubVar, final zzug zzugVar) {
        final Pair pairZzf = zzf(0, zzukVar);
        if (pairZzf != null) {
            this.zza.zzi.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlk
                @Override // java.lang.Runnable
                public final void run() {
                    Pair pair = pairZzf;
                    this.zza.zza.zzh.zzai(((Integer) pair.first).intValue(), (zzuk) pair.second, zzubVar, zzugVar);
                }
            });
        }
    }
}
