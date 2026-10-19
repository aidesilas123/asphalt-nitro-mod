package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgdf {
    private final Class zza;
    private zzgdg zzd;
    private ConcurrentMap zzb = new ConcurrentHashMap();
    private final List zzc = new ArrayList();
    private zzgop zze = zzgop.zza;

    /* synthetic */ zzgdf(Class cls, zzgde zzgdeVar) {
        this.zza = cls;
    }

    private final zzgdf zze(Object obj, Object obj2, zzgry zzgryVar, boolean z) throws GeneralSecurityException {
        byte[] bArrArray;
        if (this.zzb == null) {
            throw new IllegalStateException("addPrimitive cannot be called after build");
        }
        if (obj == null && obj2 == null) {
            throw new GeneralSecurityException("at least one of the `fullPrimitive` or `primitive` must be set");
        }
        if (zzgryVar.zzk() != 3) {
            throw new GeneralSecurityException("only ENABLED key is allowed");
        }
        Integer numValueOf = Integer.valueOf(zzgryVar.zza());
        if (zzgryVar.zzf() == zzgss.RAW) {
            numValueOf = null;
        }
        zzgcp zzgcpVarZza = zzgku.zzc().zza(zzglo.zza(zzgryVar.zzc().zzg(), zzgryVar.zzc().zzf(), zzgryVar.zzc().zzc(), zzgryVar.zzf(), numValueOf), zzgdp.zza());
        int iOrdinal = zzgryVar.zzf().ordinal();
        if (iOrdinal == 1) {
            bArrArray = ByteBuffer.allocate(5).put((byte) 1).putInt(zzgryVar.zza()).array();
        } else if (iOrdinal == 2) {
            bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(zzgryVar.zza()).array();
        } else if (iOrdinal != 3) {
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("unknown output prefix type");
            }
            bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(zzgryVar.zza()).array();
        } else {
            bArrArray = zzgck.zza;
        }
        zzgdg zzgdgVar = new zzgdg(obj, obj2, bArrArray, zzgryVar.zzk(), zzgryVar.zzf(), zzgryVar.zza(), zzgryVar.zzc().zzg(), zzgcpVarZza);
        ConcurrentMap concurrentMap = this.zzb;
        List list = this.zzc;
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzgdgVar);
        zzgdi zzgdiVar = new zzgdi(zzgdgVar.zzg(), null);
        List list2 = (List) concurrentMap.put(zzgdiVar, Collections.unmodifiableList(arrayList));
        if (list2 != null) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(list2);
            arrayList2.add(zzgdgVar);
            concurrentMap.put(zzgdiVar, Collections.unmodifiableList(arrayList2));
        }
        list.add(zzgdgVar);
        if (z) {
            if (this.zzd != null) {
                throw new IllegalStateException("you cannot set two primary primitives");
            }
            this.zzd = zzgdgVar;
        }
        return this;
    }

    public final zzgdf zza(Object obj, Object obj2, zzgry zzgryVar) throws GeneralSecurityException {
        zze(obj, obj2, zzgryVar, false);
        return this;
    }

    public final zzgdf zzb(Object obj, Object obj2, zzgry zzgryVar) throws GeneralSecurityException {
        zze(obj, obj2, zzgryVar, true);
        return this;
    }

    public final zzgdf zzc(zzgop zzgopVar) {
        if (this.zzb == null) {
            throw new IllegalStateException("setAnnotations cannot be called after build");
        }
        this.zze = zzgopVar;
        return this;
    }

    public final zzgdk zzd() throws GeneralSecurityException {
        ConcurrentMap concurrentMap = this.zzb;
        if (concurrentMap == null) {
            throw new IllegalStateException("build cannot be called twice");
        }
        zzgdk zzgdkVar = new zzgdk(concurrentMap, this.zzc, this.zzd, this.zze, this.zza, null);
        this.zzb = null;
        return zzgdkVar;
    }
}
