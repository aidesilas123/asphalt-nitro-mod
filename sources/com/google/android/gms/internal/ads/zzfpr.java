package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfpr {
    private static final HashMap zza = new HashMap();
    private final Context zzb;
    private final zzfps zzc;
    private final zzfnt zzd;
    private final zzfno zze;

    @Nullable
    private zzfpg zzf;
    private final Object zzg = new Object();

    public zzfpr(@NonNull Context context, @NonNull zzfps zzfpsVar, @NonNull zzfnt zzfntVar, @NonNull zzfno zzfnoVar) {
        this.zzb = context;
        this.zzc = zzfpsVar;
        this.zzd = zzfntVar;
        this.zze = zzfnoVar;
    }

    private final synchronized Class zzd(@NonNull zzfph zzfphVar) throws zzfpq {
        String strZzk = zzfphVar.zza().zzk();
        HashMap map = zza;
        Class cls = (Class) map.get(strZzk);
        if (cls != null) {
            return cls;
        }
        try {
            if (!this.zze.zza(zzfphVar.zzc())) {
                throw new zzfpq(2026, "VM did not pass signature verification");
            }
            try {
                File fileZzb = zzfphVar.zzb();
                if (!fileZzb.exists()) {
                    fileZzb.mkdirs();
                }
                Class clsLoadClass = new DexClassLoader(zzfphVar.zzc().getAbsolutePath(), fileZzb.getAbsolutePath(), null, this.zzb.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                map.put(strZzk, clsLoadClass);
                return clsLoadClass;
            } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e2) {
                throw new zzfpq(2008, e2);
            }
        } catch (GeneralSecurityException e3) {
            throw new zzfpq(2026, e3);
        }
    }

    @Nullable
    public final zzfnw zza() {
        zzfpg zzfpgVar;
        synchronized (this.zzg) {
            zzfpgVar = this.zzf;
        }
        return zzfpgVar;
    }

    @Nullable
    public final zzfph zzb() {
        synchronized (this.zzg) {
            zzfpg zzfpgVar = this.zzf;
            if (zzfpgVar == null) {
                return null;
            }
            return zzfpgVar.zzf();
        }
    }

    public final boolean zzc(@NonNull zzfph zzfphVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                zzfpg zzfpgVar = new zzfpg(zzd(zzfphVar).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.zzb, "msa-r", zzfphVar.zze(), null, new Bundle(), 2), zzfphVar, this.zzc, this.zzd);
                if (!zzfpgVar.zzh()) {
                    throw new zzfpq(4000, "init failed");
                }
                int iZze = zzfpgVar.zze();
                if (iZze != 0) {
                    throw new zzfpq(4001, "ci: " + iZze);
                }
                synchronized (this.zzg) {
                    zzfpg zzfpgVar2 = this.zzf;
                    if (zzfpgVar2 != null) {
                        try {
                            zzfpgVar2.zzg();
                        } catch (zzfpq e2) {
                            this.zzd.zzc(e2.zza(), -1L, e2);
                        }
                        this.zzf = zzfpgVar;
                    } else {
                        this.zzf = zzfpgVar;
                    }
                }
                this.zzd.zzd(3000, System.currentTimeMillis() - jCurrentTimeMillis);
                return true;
            } catch (Exception e3) {
                throw new zzfpq(2004, e3);
            }
        } catch (zzfpq e4) {
            this.zzd.zzc(e4.zza(), System.currentTimeMillis() - jCurrentTimeMillis, e4);
            return false;
        } catch (Exception e5) {
            this.zzd.zzc(4010, System.currentTimeMillis() - jCurrentTimeMillis, e5);
            return false;
        }
    }
}
