package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzglj {
    private final Map zza;
    private final Map zzb;

    private zzglj() {
        this.zza = new HashMap();
        this.zzb = new HashMap();
    }

    /* synthetic */ zzglj(zzgli zzgliVar) {
        this.zza = new HashMap();
        this.zzb = new HashMap();
    }

    /* synthetic */ zzglj(zzgln zzglnVar, zzgli zzgliVar) {
        this.zza = new HashMap(zzglnVar.zza);
        this.zzb = new HashMap(zzglnVar.zzb);
    }

    public final zzglj zza(zzglg zzglgVar) throws GeneralSecurityException {
        zzgll zzgllVar = new zzgll(zzglgVar.zzc(), zzglgVar.zzd(), null);
        if (this.zza.containsKey(zzgllVar)) {
            zzglg zzglgVar2 = (zzglg) this.zza.get(zzgllVar);
            if (!zzglgVar2.equals(zzglgVar) || !zzglgVar.equals(zzglgVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: ".concat(zzgllVar.toString()));
            }
        } else {
            this.zza.put(zzgllVar, zzglgVar);
        }
        return this;
    }

    public final zzglj zzb(zzgdl zzgdlVar) throws GeneralSecurityException {
        Map map = this.zzb;
        Class clsZzb = zzgdlVar.zzb();
        if (map.containsKey(clsZzb)) {
            zzgdl zzgdlVar2 = (zzgdl) this.zzb.get(clsZzb);
            if (!zzgdlVar2.equals(zzgdlVar) || !zzgdlVar.equals(zzgdlVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type".concat(clsZzb.toString()));
            }
        } else {
            this.zzb.put(clsZzb, zzgdlVar);
        }
        return this;
    }
}
