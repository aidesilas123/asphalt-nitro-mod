package com.google.android.gms.internal.ads;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzut {
    public final int zza;

    @Nullable
    public final zzuk zzb;
    private final CopyOnWriteArrayList zzc;

    public zzut() {
        this(new CopyOnWriteArrayList(), 0, null);
    }

    private zzut(CopyOnWriteArrayList copyOnWriteArrayList, int i, @Nullable zzuk zzukVar) {
        this.zzc = copyOnWriteArrayList;
        this.zza = 0;
        this.zzb = zzukVar;
    }

    @CheckResult
    public final zzut zza(int i, @Nullable zzuk zzukVar) {
        return new zzut(this.zzc, 0, zzukVar);
    }

    public final void zzb(Handler handler, zzuu zzuuVar) {
        this.zzc.add(new zzus(handler, zzuuVar));
    }

    public final void zzc(final zzug zzugVar) {
        for (zzus zzusVar : this.zzc) {
            final zzuu zzuuVar = zzusVar.zzb;
            zzfs.zzJ(zzusVar.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzun
                @Override // java.lang.Runnable
                public final void run() {
                    zzuuVar.zzae(0, this.zza.zzb, zzugVar);
                }
            });
        }
    }

    public final void zzd(final zzub zzubVar, final zzug zzugVar) {
        for (zzus zzusVar : this.zzc) {
            final zzuu zzuuVar = zzusVar.zzb;
            zzfs.zzJ(zzusVar.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzur
                @Override // java.lang.Runnable
                public final void run() {
                    zzuuVar.zzaf(0, this.zza.zzb, zzubVar, zzugVar);
                }
            });
        }
    }

    public final void zze(final zzub zzubVar, final zzug zzugVar) {
        for (zzus zzusVar : this.zzc) {
            final zzuu zzuuVar = zzusVar.zzb;
            zzfs.zzJ(zzusVar.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzup
                @Override // java.lang.Runnable
                public final void run() {
                    zzuuVar.zzag(0, this.zza.zzb, zzubVar, zzugVar);
                }
            });
        }
    }

    public final void zzf(final zzub zzubVar, final zzug zzugVar, final IOException iOException, final boolean z) {
        for (zzus zzusVar : this.zzc) {
            final zzuu zzuuVar = zzusVar.zzb;
            zzfs.zzJ(zzusVar.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzuq
                @Override // java.lang.Runnable
                public final void run() {
                    zzuuVar.zzah(0, this.zza.zzb, zzubVar, zzugVar, iOException, z);
                }
            });
        }
    }

    public final void zzg(final zzub zzubVar, final zzug zzugVar) {
        for (zzus zzusVar : this.zzc) {
            final zzuu zzuuVar = zzusVar.zzb;
            zzfs.zzJ(zzusVar.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzuo
                @Override // java.lang.Runnable
                public final void run() {
                    zzuuVar.zzai(0, this.zza.zzb, zzubVar, zzugVar);
                }
            });
        }
    }

    public final void zzh(zzuu zzuuVar) {
        for (zzus zzusVar : this.zzc) {
            if (zzusVar.zzb == zzuuVar) {
                this.zzc.remove(zzusVar);
            }
        }
    }
}
