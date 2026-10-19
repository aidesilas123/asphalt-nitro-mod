package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfwy extends zzfwn {
    Object[] zzd;
    private int zze;

    public zzfwy() {
        super(4);
    }

    zzfwy(int i) {
        super(i);
        this.zzd = new Object[zzfwz.zzh(i)];
    }

    @Override // com.google.android.gms.internal.ads.zzfwn, com.google.android.gms.internal.ads.zzfwo
    public final /* bridge */ /* synthetic */ zzfwo zzb(Object obj) {
        zzf(obj);
        return this;
    }

    public final zzfwy zzf(Object obj) {
        Objects.requireNonNull(obj);
        if (this.zzd != null) {
            int iZzh = zzfwz.zzh(this.zzb);
            int length = this.zzd.length;
            if (iZzh <= length) {
                int iHashCode = obj.hashCode();
                int iZza = zzfwm.zza(iHashCode);
                while (true) {
                    Object[] objArr = this.zzd;
                    int i = iZza & (length - 1);
                    Object obj2 = objArr[i];
                    if (obj2 != null) {
                        if (obj2.equals(obj)) {
                            break;
                        }
                        iZza = i + 1;
                    } else {
                        objArr[i] = obj;
                        this.zze += iHashCode;
                        super.zza(obj);
                        break;
                    }
                }
                return this;
            }
        }
        this.zzd = null;
        super.zza(obj);
        return this;
    }

    public final zzfwy zzg(Iterable iterable) {
        Objects.requireNonNull(iterable);
        if (this.zzd != null) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                zzf(it.next());
            }
        } else {
            super.zzc(iterable);
        }
        return this;
    }

    public final zzfwz zzh() {
        zzfwz zzfwzVarZzs;
        int i = this.zzb;
        if (i == 0) {
            return zzfyk.zza;
        }
        if (i == 1) {
            Object obj = this.zza[0];
            obj.getClass();
            return new zzfyr(obj);
        }
        if (this.zzd == null || zzfwz.zzh(i) != this.zzd.length) {
            zzfwzVarZzs = zzfwz.zzs(this.zzb, this.zza);
            this.zzb = zzfwzVarZzs.size();
        } else {
            int i2 = this.zzb;
            Object[] objArrCopyOf = this.zza;
            if (zzfwz.zzt(i2, objArrCopyOf.length)) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i2);
            }
            zzfwzVarZzs = new zzfyk(objArrCopyOf, this.zze, this.zzd, r6.length - 1, this.zzb);
        }
        this.zzc = true;
        this.zzd = null;
        return zzfwzVarZzs;
    }
}
