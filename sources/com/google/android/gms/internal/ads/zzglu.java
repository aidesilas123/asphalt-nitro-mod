package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzglu {
    private final Map zza;
    private final Map zzb;
    private final Map zzc;
    private final Map zzd;

    public zzglu() {
        this.zza = new HashMap();
        this.zzb = new HashMap();
        this.zzc = new HashMap();
        this.zzd = new HashMap();
    }

    public zzglu(zzgma zzgmaVar) {
        this.zza = new HashMap(zzgmaVar.zza);
        this.zzb = new HashMap(zzgmaVar.zzb);
        this.zzc = new HashMap(zzgmaVar.zzc);
        this.zzd = new HashMap(zzgmaVar.zzd);
    }

    public final zzglu zza(zzgjy zzgjyVar) throws GeneralSecurityException {
        zzglw zzglwVar = new zzglw(zzgjyVar.zzd(), zzgjyVar.zzc(), null);
        if (this.zzb.containsKey(zzglwVar)) {
            zzgjy zzgjyVar2 = (zzgjy) this.zzb.get(zzglwVar);
            if (!zzgjyVar2.equals(zzgjyVar) || !zzgjyVar.equals(zzgjyVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(zzglwVar.toString()));
            }
        } else {
            this.zzb.put(zzglwVar, zzgjyVar);
        }
        return this;
    }

    public final zzglu zzb(zzgkc zzgkcVar) throws GeneralSecurityException {
        zzgly zzglyVar = new zzgly(zzgkcVar.zzb(), zzgkcVar.zzc(), null);
        if (this.zza.containsKey(zzglyVar)) {
            zzgkc zzgkcVar2 = (zzgkc) this.zza.get(zzglyVar);
            if (!zzgkcVar2.equals(zzgkcVar) || !zzgkcVar.equals(zzgkcVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(zzglyVar.toString()));
            }
        } else {
            this.zza.put(zzglyVar, zzgkcVar);
        }
        return this;
    }

    public final zzglu zzc(zzgky zzgkyVar) throws GeneralSecurityException {
        zzglw zzglwVar = new zzglw(zzgkyVar.zzd(), zzgkyVar.zzc(), null);
        if (this.zzd.containsKey(zzglwVar)) {
            zzgky zzgkyVar2 = (zzgky) this.zzd.get(zzglwVar);
            if (!zzgkyVar2.equals(zzgkyVar) || !zzgkyVar.equals(zzgkyVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(zzglwVar.toString()));
            }
        } else {
            this.zzd.put(zzglwVar, zzgkyVar);
        }
        return this;
    }

    public final zzglu zzd(zzglc zzglcVar) throws GeneralSecurityException {
        zzgly zzglyVar = new zzgly(zzglcVar.zzc(), zzglcVar.zzd(), null);
        if (this.zzc.containsKey(zzglyVar)) {
            zzglc zzglcVar2 = (zzglc) this.zzc.get(zzglyVar);
            if (!zzglcVar2.equals(zzglcVar) || !zzglcVar.equals(zzglcVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(zzglyVar.toString()));
            }
        } else {
            this.zzc.put(zzglyVar, zzglcVar);
        }
        return this;
    }
}
