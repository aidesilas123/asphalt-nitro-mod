package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzawg {

    @VisibleForTesting
    int zza;
    private final Object zzb = new Object();
    private final List zzc = new LinkedList();

    @Nullable
    public final zzawf zza(boolean z) {
        synchronized (this.zzb) {
            zzawf zzawfVar = null;
            if (this.zzc.isEmpty()) {
                zzcbn.zze("Queue empty");
                return null;
            }
            int i = 0;
            if (this.zzc.size() < 2) {
                zzawf zzawfVar2 = (zzawf) this.zzc.get(0);
                if (z) {
                    this.zzc.remove(0);
                } else {
                    zzawfVar2.zzi();
                }
                return zzawfVar2;
            }
            int i2 = Integer.MIN_VALUE;
            int i3 = 0;
            for (zzawf zzawfVar3 : this.zzc) {
                int iZzb = zzawfVar3.zzb();
                if (iZzb > i2) {
                    i = i3;
                }
                int i4 = iZzb > i2 ? iZzb : i2;
                if (iZzb > i2) {
                    zzawfVar = zzawfVar3;
                }
                i3++;
                i2 = i4;
            }
            this.zzc.remove(i);
            return zzawfVar;
        }
    }

    public final void zzb(zzawf zzawfVar) {
        synchronized (this.zzb) {
            if (this.zzc.size() >= 10) {
                zzcbn.zze("Queue is full, current size = " + this.zzc.size());
                this.zzc.remove(0);
            }
            int i = this.zza;
            this.zza = i + 1;
            zzawfVar.zzj(i);
            zzawfVar.zzn();
            this.zzc.add(zzawfVar);
        }
    }

    public final boolean zzc(zzawf zzawfVar) {
        synchronized (this.zzb) {
            Iterator it = this.zzc.iterator();
            while (it.hasNext()) {
                zzawf zzawfVar2 = (zzawf) it.next();
                if (com.google.android.gms.ads.internal.zzt.zzo().zzi().zzN()) {
                    if (!com.google.android.gms.ads.internal.zzt.zzo().zzi().zzO() && !zzawfVar.equals(zzawfVar2) && zzawfVar2.zzf().equals(zzawfVar.zzf())) {
                        it.remove();
                        return true;
                    }
                } else if (!zzawfVar.equals(zzawfVar2) && zzawfVar2.zzd().equals(zzawfVar.zzd())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final boolean zzd(zzawf zzawfVar) {
        synchronized (this.zzb) {
            return this.zzc.contains(zzawfVar);
        }
    }
}
