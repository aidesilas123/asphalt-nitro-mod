package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzol {
    private final zzcx zza;
    private zzfwu zzb = zzfwu.zzl();
    private zzfwx zzc = zzfwx.zzd();

    @Nullable
    private zzuk zzd;
    private zzuk zze;
    private zzuk zzf;

    public zzol(zzcx zzcxVar) {
        this.zza = zzcxVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    private static zzuk zzj(zzcr zzcrVar, zzfwu zzfwuVar, @Nullable zzuk zzukVar, zzcx zzcxVar) {
        zzda zzdaVarZzn = zzcrVar.zzn();
        int iZze = zzcrVar.zze();
        Object objZzf = zzdaVarZzn.zzo() ? null : zzdaVarZzn.zzf(iZze);
        int iZzc = (zzcrVar.zzx() || zzdaVarZzn.zzo()) ? -1 : zzdaVarZzn.zzd(iZze, zzcxVar, false).zzc(zzfs.zzq(zzcrVar.zzk()));
        for (int i = 0; i < zzfwuVar.size(); i++) {
            zzuk zzukVar2 = (zzuk) zzfwuVar.get(i);
            if (zzm(zzukVar2, objZzf, zzcrVar.zzx(), zzcrVar.zzb(), zzcrVar.zzc(), iZzc)) {
                return zzukVar2;
            }
        }
        if (zzfwuVar.isEmpty() && zzukVar != null) {
            if (zzm(zzukVar, objZzf, zzcrVar.zzx(), zzcrVar.zzb(), zzcrVar.zzc(), iZzc)) {
                return zzukVar;
            }
        }
        return null;
    }

    private final void zzk(zzfww zzfwwVar, @Nullable zzuk zzukVar, zzda zzdaVar) {
        if (zzukVar == null) {
            return;
        }
        if (zzdaVar.zza(zzukVar.zza) != -1) {
            zzfwwVar.zza(zzukVar, zzdaVar);
            return;
        }
        zzda zzdaVar2 = (zzda) this.zzc.get(zzukVar);
        if (zzdaVar2 != null) {
            zzfwwVar.zza(zzukVar, zzdaVar2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zzl(zzda zzdaVar) {
        zzfww zzfwwVar = new zzfww();
        if (this.zzb.isEmpty()) {
            zzk(zzfwwVar, this.zze, zzdaVar);
            if (!zzftt.zza(this.zzf, this.zze)) {
                zzk(zzfwwVar, this.zzf, zzdaVar);
            }
            if (!zzftt.zza(this.zzd, this.zze) && !zzftt.zza(this.zzd, this.zzf)) {
                zzk(zzfwwVar, this.zzd, zzdaVar);
            }
        } else {
            for (int i = 0; i < this.zzb.size(); i++) {
                zzk(zzfwwVar, (zzuk) this.zzb.get(i), zzdaVar);
            }
            if (!this.zzb.contains(this.zzd)) {
                zzk(zzfwwVar, this.zzd, zzdaVar);
            }
        }
        this.zzc = zzfwwVar.zzc();
    }

    private static boolean zzm(zzuk zzukVar, @Nullable Object obj, boolean z, int i, int i2, int i3) {
        if (!zzukVar.zza.equals(obj)) {
            return false;
        }
        if (z) {
            if (zzukVar.zzb != i || zzukVar.zzc != i2) {
                return false;
            }
        } else if (zzukVar.zzb != -1 || zzukVar.zze != i3) {
            return false;
        }
        return true;
    }

    @Nullable
    public final zzda zza(zzuk zzukVar) {
        return (zzda) this.zzc.get(zzukVar);
    }

    @Nullable
    public final zzuk zzb() {
        return this.zzd;
    }

    @Nullable
    public final zzuk zzc() {
        Object next;
        Object obj;
        if (this.zzb.isEmpty()) {
            return null;
        }
        zzfwu zzfwuVar = this.zzb;
        if (!(zzfwuVar instanceof List)) {
            Iterator<E> it = zzfwuVar.iterator();
            do {
                next = it.next();
            } while (it.hasNext());
            obj = next;
        } else {
            if (zzfwuVar.isEmpty()) {
                throw new NoSuchElementException();
            }
            obj = zzfwuVar.get(zzfwuVar.size() - 1);
        }
        return (zzuk) obj;
    }

    @Nullable
    public final zzuk zzd() {
        return this.zze;
    }

    @Nullable
    public final zzuk zze() {
        return this.zzf;
    }

    public final void zzg(zzcr zzcrVar) {
        this.zzd = zzj(zzcrVar, this.zzb, this.zze, this.zza);
    }

    public final void zzh(List list, @Nullable zzuk zzukVar, zzcr zzcrVar) {
        this.zzb = zzfwu.zzj(list);
        if (!list.isEmpty()) {
            this.zze = (zzuk) list.get(0);
            Objects.requireNonNull(zzukVar);
            this.zzf = zzukVar;
        }
        if (this.zzd == null) {
            this.zzd = zzj(zzcrVar, this.zzb, this.zze, this.zza);
        }
        zzl(zzcrVar.zzn());
    }

    public final void zzi(zzcr zzcrVar) {
        this.zzd = zzj(zzcrVar, this.zzb, this.zze, this.zza);
        zzl(zzcrVar.zzn());
    }
}
