package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaf extends zzhb {
    private Boolean zza;
    private zzae zzb;
    private Boolean zzc;

    zzaf(zzgi zzgiVar) {
        super(zzgiVar);
        this.zzb = new zzae() { // from class: com.google.android.gms.measurement.internal.zzad
            @Override // com.google.android.gms.measurement.internal.zzae
            public final String zza(String str, String str2) {
                return null;
            }
        };
    }

    public static final long zzA() {
        return ((Long) zzel.zzC.zza(null)).longValue();
    }

    private final String zzB(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            Preconditions.checkNotNull(str3);
            return str3;
        } catch (ClassNotFoundException e2) {
            this.zzs.zzaz().zzd().zzb("Could not find SystemProperties class", e2);
            return "";
        } catch (IllegalAccessException e3) {
            this.zzs.zzaz().zzd().zzb("Could not access SystemProperties.get()", e3);
            return "";
        } catch (NoSuchMethodException e4) {
            this.zzs.zzaz().zzd().zzb("Could not find SystemProperties.get() method", e4);
            return "";
        } catch (InvocationTargetException e5) {
            this.zzs.zzaz().zzd().zzb("SystemProperties.get() threw an exception", e5);
            return "";
        }
    }

    public static final long zzz() {
        return ((Long) zzel.zzc.zza(null)).longValue();
    }

    @WorkerThread
    public final double zza(String str, zzek zzekVar) {
        if (str == null) {
            return ((Double) zzekVar.zza(null)).doubleValue();
        }
        String strZza = this.zzb.zza(str, zzekVar.zzb());
        if (TextUtils.isEmpty(strZza)) {
            return ((Double) zzekVar.zza(null)).doubleValue();
        }
        try {
            return ((Double) zzekVar.zza(Double.valueOf(Double.parseDouble(strZza)))).doubleValue();
        } catch (NumberFormatException unused) {
            return ((Double) zzekVar.zza(null)).doubleValue();
        }
    }

    final int zzb(@Size(min = 1) String str) {
        return zzf(str, zzel.zzG, 500, 2000);
    }

    public final int zzc() {
        zzlp zzlpVarZzv = this.zzs.zzv();
        Boolean boolZzj = zzlpVarZzv.zzs.zzt().zzj();
        if (zzlpVarZzv.zzm() < 201500) {
            return (boolZzj == null || boolZzj.booleanValue()) ? 25 : 100;
        }
        return 100;
    }

    public final int zzd(@Size(min = 1) String str) {
        return zzf(str, zzel.zzH, 25, 100);
    }

    @WorkerThread
    public final int zze(String str, zzek zzekVar) {
        if (str == null) {
            return ((Integer) zzekVar.zza(null)).intValue();
        }
        String strZza = this.zzb.zza(str, zzekVar.zzb());
        if (TextUtils.isEmpty(strZza)) {
            return ((Integer) zzekVar.zza(null)).intValue();
        }
        try {
            return ((Integer) zzekVar.zza(Integer.valueOf(Integer.parseInt(strZza)))).intValue();
        } catch (NumberFormatException unused) {
            return ((Integer) zzekVar.zza(null)).intValue();
        }
    }

    @WorkerThread
    public final int zzf(String str, zzek zzekVar, int i, int i2) {
        return Math.max(Math.min(zze(str, zzekVar), i2), i);
    }

    public final long zzh() {
        this.zzs.zzax();
        return 61000L;
    }

    @WorkerThread
    public final long zzi(String str, zzek zzekVar) {
        if (str == null) {
            return ((Long) zzekVar.zza(null)).longValue();
        }
        String strZza = this.zzb.zza(str, zzekVar.zzb());
        if (TextUtils.isEmpty(strZza)) {
            return ((Long) zzekVar.zza(null)).longValue();
        }
        try {
            return ((Long) zzekVar.zza(Long.valueOf(Long.parseLong(strZza)))).longValue();
        } catch (NumberFormatException unused) {
            return ((Long) zzekVar.zza(null)).longValue();
        }
    }

    @VisibleForTesting
    final Bundle zzj() {
        try {
            if (this.zzs.zzav().getPackageManager() == null) {
                this.zzs.zzaz().zzd().zza("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(this.zzs.zzav()).getApplicationInfo(this.zzs.zzav().getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            this.zzs.zzaz().zzd().zza("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e2) {
            this.zzs.zzaz().zzd().zzb("Failed to load metadata: Package name not found", e2);
            return null;
        }
    }

    @VisibleForTesting
    final Boolean zzk(@Size(min = 1) String str) {
        Preconditions.checkNotEmpty(str);
        Bundle bundleZzj = zzj();
        if (bundleZzj == null) {
            this.zzs.zzaz().zzd().zza("Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (bundleZzj.containsKey(str)) {
            return Boolean.valueOf(bundleZzj.getBoolean(str));
        }
        return null;
    }

    public final String zzl() {
        return zzB("debug.firebase.analytics.app", "");
    }

    public final String zzm() {
        return zzB("debug.deferred.deeplink", "");
    }

    final String zzn() {
        this.zzs.zzax();
        return "FA";
    }

    @WorkerThread
    public final String zzo(String str, zzek zzekVar) {
        return str == null ? (String) zzekVar.zza(null) : (String) zzekVar.zza(this.zzb.zza(str, zzekVar.zzb()));
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.List zzp(@androidx.annotation.Size(min = 1) java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r4 = "analytics.safelisted_events"
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r4)
            android.os.Bundle r0 = r3.zzj()
            r1 = 0
            if (r0 != 0) goto L1d
            com.google.android.gms.measurement.internal.zzgi r4 = r3.zzs
            com.google.android.gms.measurement.internal.zzey r4 = r4.zzaz()
            com.google.android.gms.measurement.internal.zzew r4 = r4.zzd()
            java.lang.String r0 = "Failed to load metadata: Metadata bundle is null"
            r4.zza(r0)
        L1b:
            r4 = r1
            goto L2c
        L1d:
            boolean r2 = r0.containsKey(r4)
            if (r2 != 0) goto L24
            goto L1b
        L24:
            int r4 = r0.getInt(r4)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
        L2c:
            if (r4 == 0) goto L58
            com.google.android.gms.measurement.internal.zzgi r0 = r3.zzs     // Catch: android.content.res.Resources.NotFoundException -> L48
            android.content.Context r0 = r0.zzav()     // Catch: android.content.res.Resources.NotFoundException -> L48
            android.content.res.Resources r0 = r0.getResources()     // Catch: android.content.res.Resources.NotFoundException -> L48
            int r4 = r4.intValue()     // Catch: android.content.res.Resources.NotFoundException -> L48
            java.lang.String[] r4 = r0.getStringArray(r4)     // Catch: android.content.res.Resources.NotFoundException -> L48
            if (r4 != 0) goto L43
            return r1
        L43:
            java.util.List r4 = java.util.Arrays.asList(r4)     // Catch: android.content.res.Resources.NotFoundException -> L48
            return r4
        L48:
            r4 = move-exception
            com.google.android.gms.measurement.internal.zzgi r0 = r3.zzs
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzaz()
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzd()
            java.lang.String r2 = "Failed to load string array from metadata: resource not found"
            r0.zzb(r2, r4)
        L58:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaf.zzp(java.lang.String):java.util.List");
    }

    final void zzq(zzae zzaeVar) {
        this.zzb = zzaeVar;
    }

    public final boolean zzr() {
        Boolean boolZzk = zzk("google_analytics_adid_collection_enabled");
        return boolZzk == null || boolZzk.booleanValue();
    }

    @WorkerThread
    public final boolean zzs(String str, zzek zzekVar) {
        if (str == null) {
            return ((Boolean) zzekVar.zza(null)).booleanValue();
        }
        String strZza = this.zzb.zza(str, zzekVar.zzb());
        return TextUtils.isEmpty(strZza) ? ((Boolean) zzekVar.zza(null)).booleanValue() : ((Boolean) zzekVar.zza(Boolean.valueOf("1".equals(strZza)))).booleanValue();
    }

    public final boolean zzt(String str) {
        return "1".equals(this.zzb.zza(str, "gaia_collection_enabled"));
    }

    public final boolean zzu() {
        Boolean boolZzk = zzk("google_analytics_automatic_screen_reporting_enabled");
        return boolZzk == null || boolZzk.booleanValue();
    }

    public final boolean zzv() {
        this.zzs.zzax();
        Boolean boolZzk = zzk("firebase_analytics_collection_deactivated");
        return boolZzk != null && boolZzk.booleanValue();
    }

    public final boolean zzw(String str) {
        return "1".equals(this.zzb.zza(str, "measurement.event_sampling_enabled"));
    }

    @WorkerThread
    final boolean zzx() {
        if (this.zza == null) {
            Boolean boolZzk = zzk("app_measurement_lite");
            this.zza = boolZzk;
            if (boolZzk == null) {
                this.zza = Boolean.FALSE;
            }
        }
        return this.zza.booleanValue() || !this.zzs.zzN();
    }

    public final boolean zzy() {
        if (this.zzc == null) {
            synchronized (this) {
                if (this.zzc == null) {
                    ApplicationInfo applicationInfo = this.zzs.zzav().getApplicationInfo();
                    String myProcessName = ProcessUtils.getMyProcessName();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        boolean z = false;
                        if (str != null && str.equals(myProcessName)) {
                            z = true;
                        }
                        this.zzc = Boolean.valueOf(z);
                    }
                    if (this.zzc == null) {
                        this.zzc = Boolean.TRUE;
                        this.zzs.zzaz().zzd().zza("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.zzc.booleanValue();
    }
}
