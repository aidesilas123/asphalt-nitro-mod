package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzjb extends zzf {

    @VisibleForTesting
    protected zziu zza;
    private volatile zziu zzb;
    private volatile zziu zzc;
    private final Map zzd;

    @GuardedBy("activityLock")
    private Activity zze;

    @GuardedBy("activityLock")
    private volatile boolean zzf;
    private volatile zziu zzg;
    private zziu zzh;

    @GuardedBy("activityLock")
    private boolean zzi;
    private final Object zzj;

    @GuardedBy("this")
    private zziu zzk;

    @GuardedBy("this")
    private String zzl;

    public zzjb(zzgi zzgiVar) {
        super(zzgiVar);
        this.zzj = new Object();
        this.zzd = new ConcurrentHashMap();
    }

    @MainThread
    private final void zzA(Activity activity, zziu zziuVar, boolean z) {
        zziu zziuVar2;
        zziu zziuVar3 = this.zzb == null ? this.zzc : this.zzb;
        if (zziuVar.zzb == null) {
            zziuVar2 = new zziu(zziuVar.zza, activity != null ? zzl(activity.getClass(), "Activity") : null, zziuVar.zzc, zziuVar.zze, zziuVar.zzf);
        } else {
            zziuVar2 = zziuVar;
        }
        this.zzc = this.zzb;
        this.zzb = zziuVar2;
        this.zzs.zzaA().zzp(new zziw(this, zziuVar2, zziuVar3, this.zzs.zzaw().elapsedRealtime(), z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzB(zziu zziuVar, zziu zziuVar2, long j, boolean z, Bundle bundle) {
        long j2;
        long j3;
        zzg();
        boolean z2 = false;
        boolean z3 = (zziuVar2 != null && zziuVar2.zzc == zziuVar.zzc && zzlp.zzal(zziuVar2.zzb, zziuVar.zzb) && zzlp.zzal(zziuVar2.zza, zziuVar.zza)) ? false : true;
        if (z && this.zza != null) {
            z2 = true;
        }
        if (z3) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            zzlp.zzK(zziuVar, bundle2, true);
            if (zziuVar2 != null) {
                String str = zziuVar2.zza;
                if (str != null) {
                    bundle2.putString("_pn", str);
                }
                String str2 = zziuVar2.zzb;
                if (str2 != null) {
                    bundle2.putString("_pc", str2);
                }
                bundle2.putLong("_pi", zziuVar2.zzc);
            }
            if (z2) {
                zzkp zzkpVar = this.zzs.zzu().zzb;
                long j4 = j - zzkpVar.zzb;
                zzkpVar.zzb = j;
                if (j4 > 0) {
                    this.zzs.zzv().zzI(bundle2, j4);
                }
            }
            if (!this.zzs.zzf().zzu()) {
                bundle2.putLong("_mst", 1L);
            }
            String str3 = true != zziuVar.zze ? "auto" : MBridgeConstans.DYNAMIC_VIEW_WX_APP;
            long jCurrentTimeMillis = this.zzs.zzaw().currentTimeMillis();
            if (zziuVar.zze) {
                j2 = jCurrentTimeMillis;
                long j5 = zziuVar.zzf;
                if (j5 != 0) {
                    j3 = j5;
                }
                this.zzs.zzq().zzI(str3, "_vs", j3, bundle2);
            } else {
                j2 = jCurrentTimeMillis;
            }
            j3 = j2;
            this.zzs.zzq().zzI(str3, "_vs", j3, bundle2);
        }
        if (z2) {
            zzC(this.zza, true, j);
        }
        this.zza = zziuVar;
        if (zziuVar.zze) {
            this.zzh = zziuVar;
        }
        this.zzs.zzt().zzG(zziuVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzC(zziu zziuVar, boolean z, long j) {
        this.zzs.zzd().zzf(this.zzs.zzaw().elapsedRealtime());
        if (!this.zzs.zzu().zzb.zzd(zziuVar != null && zziuVar.zzd, z, j) || zziuVar == null) {
            return;
        }
        zziuVar.zzd = false;
    }

    static /* bridge */ /* synthetic */ void zzp(zzjb zzjbVar, Bundle bundle, zziu zziuVar, zziu zziuVar2, long j) {
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        zzjbVar.zzB(zziuVar, zziuVar2, j, true, zzjbVar.zzs.zzv().zzy(null, "screen_view", bundle, null, false));
    }

    @MainThread
    private final zziu zzz(@NonNull Activity activity) {
        Preconditions.checkNotNull(activity);
        zziu zziuVar = (zziu) this.zzd.get(activity);
        if (zziuVar == null) {
            zziu zziuVar2 = new zziu(null, zzl(activity.getClass(), "Activity"), this.zzs.zzv().zzq());
            this.zzd.put(activity, zziuVar2);
            zziuVar = zziuVar2;
        }
        return this.zzg != null ? this.zzg : zziuVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzf() {
        return false;
    }

    public final zziu zzi() {
        return this.zzb;
    }

    @WorkerThread
    public final zziu zzj(boolean z) {
        zza();
        zzg();
        if (!z) {
            return this.zza;
        }
        zziu zziuVar = this.zza;
        return zziuVar != null ? zziuVar : this.zzh;
    }

    @VisibleForTesting
    final String zzl(Class cls, String str) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] strArrSplit = canonicalName.split("\\.");
        int length = strArrSplit.length;
        String str2 = length > 0 ? strArrSplit[length - 1] : "";
        int length2 = str2.length();
        this.zzs.zzf();
        if (length2 <= 100) {
            return str2;
        }
        this.zzs.zzf();
        return str2.substring(0, 100);
    }

    @MainThread
    public final void zzr(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!this.zzs.zzf().zzu() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.zzd.put(activity, new zziu(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    @MainThread
    public final void zzs(Activity activity) {
        synchronized (this.zzj) {
            if (activity == this.zze) {
                this.zze = null;
            }
        }
        if (this.zzs.zzf().zzu()) {
            this.zzd.remove(activity);
        }
    }

    @MainThread
    public final void zzt(Activity activity) {
        synchronized (this.zzj) {
            this.zzi = false;
            this.zzf = true;
        }
        long jElapsedRealtime = this.zzs.zzaw().elapsedRealtime();
        if (!this.zzs.zzf().zzu()) {
            this.zzb = null;
            this.zzs.zzaA().zzp(new zziy(this, jElapsedRealtime));
        } else {
            zziu zziuVarZzz = zzz(activity);
            this.zzc = this.zzb;
            this.zzb = null;
            this.zzs.zzaA().zzp(new zziz(this, zziuVarZzz, jElapsedRealtime));
        }
    }

    @MainThread
    public final void zzu(Activity activity) {
        synchronized (this.zzj) {
            this.zzi = true;
            if (activity != this.zze) {
                synchronized (this.zzj) {
                    this.zze = activity;
                    this.zzf = false;
                }
                if (this.zzs.zzf().zzu()) {
                    this.zzg = null;
                    this.zzs.zzaA().zzp(new zzja(this));
                }
            }
        }
        if (!this.zzs.zzf().zzu()) {
            this.zzb = this.zzg;
            this.zzs.zzaA().zzp(new zzix(this));
        } else {
            zzA(activity, zzz(activity), false);
            zzd zzdVarZzd = this.zzs.zzd();
            zzdVarZzd.zzs.zzaA().zzp(new zzc(zzdVarZzd, zzdVarZzd.zzs.zzaw().elapsedRealtime()));
        }
    }

    @MainThread
    public final void zzv(Activity activity, Bundle bundle) {
        zziu zziuVar;
        if (!this.zzs.zzf().zzu() || bundle == null || (zziuVar = (zziu) this.zzd.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", zziuVar.zzc);
        bundle2.putString("name", zziuVar.zza);
        bundle2.putString("referrer_name", zziuVar.zzb);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
    
        if (r5.length() <= 100) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b4, code lost:
    
        if (r6.length() <= 100) goto L39;
     */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzw(@androidx.annotation.NonNull android.app.Activity r4, @androidx.annotation.Size(max = 36, min = 1) java.lang.String r5, @androidx.annotation.Size(max = 36, min = 1) java.lang.String r6) {
        /*
            Method dump skipped, instruction units count: 253
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzjb.zzw(android.app.Activity, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
    
        if (r2 > 100) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
    
        if (r4 > 100) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzx(android.os.Bundle r13, long r14) {
        /*
            Method dump skipped, instruction units count: 286
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzjb.zzx(android.os.Bundle, long):void");
    }

    @WorkerThread
    public final void zzy(String str, zziu zziuVar) {
        zzg();
        synchronized (this) {
            String str2 = this.zzl;
            if (str2 == null || str2.equals(str) || zziuVar != null) {
                this.zzl = str;
                this.zzk = zziuVar;
            }
        }
    }
}
