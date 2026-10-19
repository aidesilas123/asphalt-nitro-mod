package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgju {
    private static final Logger zza = Logger.getLogger(zzgju.class.getName());
    private final ConcurrentMap zzb;
    private final ConcurrentMap zzc;

    public zzgju() {
        this.zzb = new ConcurrentHashMap();
        this.zzc = new ConcurrentHashMap();
    }

    public zzgju(zzgju zzgjuVar) {
        this.zzb = new ConcurrentHashMap(zzgjuVar.zzb);
        this.zzc = new ConcurrentHashMap(zzgjuVar.zzc);
    }

    private final synchronized zzgjt zze(String str) throws GeneralSecurityException {
        if (!this.zzb.containsKey(str)) {
            throw new GeneralSecurityException("No key manager found for key type ".concat(String.valueOf(str)));
        }
        return (zzgjt) this.zzb.get(str);
    }

    private final synchronized void zzf(zzgjt zzgjtVar, boolean z, boolean z2) throws GeneralSecurityException {
        String strZzc = zzgjtVar.zza().zzc();
        if (this.zzc.containsKey(strZzc) && !((Boolean) this.zzc.get(strZzc)).booleanValue()) {
            throw new GeneralSecurityException("New keys are already disallowed for key type ".concat(strZzc));
        }
        zzgjt zzgjtVar2 = (zzgjt) this.zzb.get(strZzc);
        if (zzgjtVar2 != null && !zzgjtVar2.zza.getClass().equals(zzgjtVar.zza.getClass())) {
            zza.logp(Level.WARNING, "com.google.crypto.tink.internal.KeyManagerRegistry", "registerKeyManagerContainer", "Attempted overwrite of a registered key manager for key type ".concat(strZzc));
            throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", strZzc, zzgjtVar2.zza.getClass().getName(), zzgjtVar.zza.getClass().getName()));
        }
        this.zzb.putIfAbsent(strZzc, zzgjtVar);
        this.zzc.put(strZzc, Boolean.TRUE);
    }

    public final zzgcq zza(String str, Class cls) throws GeneralSecurityException {
        zzgjt zzgjtVarZze = zze(str);
        if (zzgjtVarZze.zza.zzl().contains(cls)) {
            try {
                return new zzgjs(zzgjtVarZze.zza, cls);
            } catch (IllegalArgumentException e2) {
                throw new GeneralSecurityException("Primitive type not supported", e2);
            }
        }
        String name = cls.getName();
        zzgke zzgkeVar = zzgjtVarZze.zza;
        String strValueOf = String.valueOf(zzgkeVar.getClass());
        Set<Class> setZzl = zzgkeVar.zzl();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Class cls2 : setZzl) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(cls2.getCanonicalName());
            z = false;
        }
        throw new GeneralSecurityException("Primitive type " + name + " not supported by key manager of type " + strValueOf + ", supported primitives: " + sb.toString());
    }

    public final zzgcq zzb(String str) throws GeneralSecurityException {
        return zze(str).zza();
    }

    public final synchronized void zzc(zzgke zzgkeVar, boolean z) throws GeneralSecurityException {
        if (!zzgjl.zza(zzgkeVar.zzg())) {
            throw new GeneralSecurityException("failed to register key manager " + String.valueOf(zzgkeVar.getClass()) + " as it is not FIPS compatible.");
        }
        zzf(new zzgjt(zzgkeVar), false, true);
    }

    public final boolean zzd(String str) {
        return ((Boolean) this.zzc.get(str)).booleanValue();
    }
}
