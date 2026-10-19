package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgcw {
    private final List zza = new ArrayList();
    private final zzgop zzb = zzgop.zza;
    private boolean zzc = false;

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd() {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            ((zzgcu) it.next()).zza = false;
        }
    }

    public final zzgcw zza(zzgcu zzgcuVar) {
        if (zzgcuVar.zzf != null) {
            throw new IllegalStateException("Entry has already been added to a KeysetHandle.Builder");
        }
        if (zzgcuVar.zza) {
            zzd();
        }
        zzgcuVar.zzf = this;
        this.zza.add(zzgcuVar);
        return this;
    }

    public final zzgcz zzb() throws GeneralSecurityException {
        int i;
        if (this.zzc) {
            throw new GeneralSecurityException("KeysetHandle.Builder#build must only be called once");
        }
        this.zzc = true;
        List list = this.zza;
        zzgrw zzgrwVarZzd = zzgrz.zzd();
        int i2 = 0;
        while (i2 < list.size() - 1) {
            int i3 = i2 + 1;
            if (((zzgcu) list.get(i2)).zze == zzgcv.zza && ((zzgcu) list.get(i3)).zze != zzgcv.zza) {
                throw new GeneralSecurityException("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
            }
            i2 = i3;
        }
        HashSet hashSet = new HashSet();
        Integer num = null;
        for (zzgcu zzgcuVar : this.zza) {
            zzgcr unused = zzgcuVar.zzb;
            if (zzgcuVar.zze == null) {
                throw new GeneralSecurityException("No ID was set (with withFixedId or withRandomId)");
            }
            int i4 = 3;
            if (zzgcuVar.zze == zzgcv.zza) {
                i = 0;
                while (true) {
                    if (i != 0 && !hashSet.contains(Integer.valueOf(i))) {
                        break;
                    }
                    SecureRandom secureRandom = new SecureRandom();
                    byte[] bArr = new byte[4];
                    int i5 = 0;
                    while (i5 == 0) {
                        secureRandom.nextBytes(bArr);
                        i5 = ((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
                    }
                    i = i5;
                }
            } else {
                zzgcv unused2 = zzgcuVar.zze;
                i = 0;
            }
            Integer numValueOf = Integer.valueOf(i);
            if (hashSet.contains(numValueOf)) {
                throw new GeneralSecurityException("Id " + i + " is used twice in the keyset");
            }
            hashSet.add(numValueOf);
            zzgcu.zza(zzgcuVar);
            zzgdd zzgddVar = zzgcuVar.zzd;
            zzgcr zzgcrVarZzc = zzgcuVar.zzc();
            zzgcr zzgcrVar = zzgcr.zza;
            if (!zzgcrVar.equals(zzgcrVarZzc)) {
                if (zzgcr.zzb.equals(zzgcrVarZzc)) {
                    i4 = 4;
                } else {
                    if (!zzgcr.zzc.equals(zzgcrVarZzc)) {
                        throw new IllegalStateException("Unknown key status");
                    }
                    i4 = 5;
                }
            }
            zzglp zzglpVar = (zzglp) (zzgddVar instanceof zzgkh ? ((zzgkh) zzgddVar).zzb() : zzgku.zzc().zzd(zzgddVar, zzglp.class));
            zzgrm zzgrmVarZza = zzgdo.zza(zzglpVar.zzc());
            zzgrx zzgrxVarZzd = zzgry.zzd();
            zzgrxVarZzd.zzb(i);
            zzgrxVarZzd.zzd(i4);
            zzgrxVarZzd.zza(zzgrmVarZza);
            zzgrxVarZzd.zzc(zzglpVar.zzc().zzf());
            zzgrwVarZzd.zza((zzgry) zzgrxVarZzd.zzal());
            if (zzgcuVar.zza) {
                if (num != null) {
                    throw new GeneralSecurityException("Two primaries were set");
                }
                if (zzgcuVar.zzb != zzgcrVar) {
                    throw new GeneralSecurityException("Primary key is not enabled");
                }
                num = numValueOf;
            }
        }
        if (num == null) {
            throw new GeneralSecurityException("No primary was set");
        }
        zzgrwVarZzd.zzb(num.intValue());
        return zzgcz.zzb((zzgrz) zzgrwVarZzd.zzal(), this.zzb);
    }
}
