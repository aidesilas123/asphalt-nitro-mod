package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzffk {

    @GuardedBy("LiteSdkInfoRetriever.class")
    private static zzffk zza;
    private final Context zzb;
    private final com.google.android.gms.ads.internal.client.zzcl zzc;
    private final AtomicReference zzd = new AtomicReference();

    @VisibleForTesting
    zzffk(Context context, com.google.android.gms.ads.internal.client.zzcl zzclVar) {
        this.zzb = context;
        this.zzc = zzclVar;
    }

    @VisibleForTesting
    static com.google.android.gms.ads.internal.client.zzcl zza(Context context) {
        try {
            return com.google.android.gms.ads.internal.client.zzck.asInterface((IBinder) context.getClassLoader().loadClass("com.google.android.gms.ads.internal.client.LiteSdkInfo").getConstructor(Context.class).newInstance(context));
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            zzcbn.zzh("Failed to retrieve lite SDK info.", e2);
            return null;
        }
    }

    public static zzffk zzd(Context context) {
        synchronized (zzffk.class) {
            zzffk zzffkVar = zza;
            if (zzffkVar != null) {
                return zzffkVar;
            }
            Context applicationContext = context.getApplicationContext();
            long jLongValue = ((Long) zzbex.zzb.zze()).longValue();
            com.google.android.gms.ads.internal.client.zzcl zzclVarZza = null;
            if (jLongValue > 0 && jLongValue <= 234310600) {
                zzclVarZza = zza(applicationContext);
            }
            zzffk zzffkVar2 = new zzffk(applicationContext, zzclVarZza);
            zza = zzffkVar2;
            return zzffkVar2;
        }
    }

    private final com.google.android.gms.ads.internal.client.zzen zzg() {
        com.google.android.gms.ads.internal.client.zzcl zzclVar = this.zzc;
        if (zzclVar != null) {
            try {
                return zzclVar.getLiteSdkVersion();
            } catch (RemoteException unused) {
            }
        }
        return null;
    }

    public final zzbpr zzb() {
        return (zzbpr) this.zzd.get();
    }

    public final zzcbt zzc(int i, boolean z, int i2) {
        com.google.android.gms.ads.internal.client.zzen zzenVarZzg;
        com.google.android.gms.ads.internal.zzt.zzp();
        boolean zZzD = com.google.android.gms.ads.internal.util.zzt.zzD(this.zzb);
        zzcbt zzcbtVar = new zzcbt(234310000, i2, true, zZzD);
        return (((Boolean) zzbex.zzc.zze()).booleanValue() && (zzenVarZzg = zzg()) != null) ? new zzcbt(234310000, zzenVarZzg.zza(), true, zZzD) : zzcbtVar;
    }

    public final String zze() {
        com.google.android.gms.ads.internal.client.zzen zzenVarZzg = zzg();
        if (zzenVarZzg != null) {
            return zzenVarZzg.zzb();
        }
        return null;
    }

    public final void zzf(zzbpr zzbprVar) {
        zzbpr adapterCreator;
        if (!((Boolean) zzbex.zza.zze()).booleanValue()) {
            zzffj.zza(this.zzd, null, zzbprVar);
            return;
        }
        com.google.android.gms.ads.internal.client.zzcl zzclVar = this.zzc;
        if (zzclVar == null) {
            adapterCreator = null;
        } else {
            try {
                adapterCreator = zzclVar.getAdapterCreator();
            } catch (RemoteException unused) {
                adapterCreator = null;
            }
        }
        AtomicReference atomicReference = this.zzd;
        if (adapterCreator != null) {
            zzbprVar = adapterCreator;
        }
        zzffj.zza(atomicReference, null, zzbprVar);
    }
}
