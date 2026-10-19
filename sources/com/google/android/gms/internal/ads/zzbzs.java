package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.lang.reflect.Method;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbzs {
    private final AtomicReference zzb = new AtomicReference(null);
    private final Object zzc = new Object();

    @Nullable
    private String zzd = null;

    @Nullable
    private String zze = null;

    @VisibleForTesting
    final AtomicBoolean zza = new AtomicBoolean(false);
    private final AtomicInteger zzf = new AtomicInteger(-1);
    private final AtomicReference zzg = new AtomicReference(null);
    private final AtomicReference zzh = new AtomicReference(null);
    private final ConcurrentMap zzi = new ConcurrentHashMap(9);
    private final AtomicReference zzj = new AtomicReference(null);
    private final BlockingQueue zzk = new ArrayBlockingQueue(20);
    private final Object zzl = new Object();

    private final void zzA(Context context, String str, String str2) {
        if (zzE(context, "com.google.android.gms.measurement.AppMeasurement", this.zzg, true)) {
            Method declaredMethod = (Method) this.zzi.get(str2);
            if (declaredMethod == null) {
                try {
                    declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str2, String.class);
                    this.zzi.put(str2, declaredMethod);
                } catch (Exception unused) {
                    zzC(str2, false);
                    declaredMethod = null;
                }
            }
            try {
                declaredMethod.invoke(this.zzg.get(), str);
                com.google.android.gms.ads.internal.util.zze.zza("Invoke Firebase method " + str2 + ", Ad Unit Id: " + str);
            } catch (Exception unused2) {
                zzC(str2, false);
            }
        }
    }

    private final void zzB(Context context, final String str, String str2, @Nullable Bundle bundle) {
        if (zzu(context)) {
            final Bundle bundle2 = new Bundle();
            try {
                bundle2.putLong("_aeid", Long.parseLong(str2));
            } catch (NullPointerException | NumberFormatException e2) {
                zzcbn.zzh("Invalid event ID: ".concat(String.valueOf(str2)), e2);
            }
            if ("_ac".equals(str)) {
                bundle2.putInt("_r", 1);
            }
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            if (zzv(context)) {
                zzD("logEventInternal", new zzbzr() { // from class: com.google.android.gms.internal.ads.zzbzh
                    @Override // com.google.android.gms.internal.ads.zzbzr
                    public final void zza(zzcim zzcimVar) throws RemoteException {
                        zzcimVar.zzo("am", str, bundle2);
                    }
                });
                return;
            }
            if (zzE(context, "com.google.android.gms.measurement.AppMeasurement", this.zzg, true)) {
                Method declaredMethod = (Method) this.zzi.get("logEventInternal");
                if (declaredMethod == null) {
                    try {
                        declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
                        this.zzi.put("logEventInternal", declaredMethod);
                    } catch (Exception unused) {
                        zzC("logEventInternal", true);
                        declaredMethod = null;
                    }
                }
                try {
                    declaredMethod.invoke(this.zzg.get(), "am", str, bundle2);
                } catch (Exception unused2) {
                    zzC("logEventInternal", true);
                }
            }
        }
    }

    private final void zzC(String str, boolean z) {
        if (this.zza.get()) {
            return;
        }
        zzcbn.zzj("Invoke Firebase method " + str + " error.");
        if (z) {
            zzcbn.zzj("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            this.zza.set(true);
        }
    }

    private final void zzD(final String str, final zzbzr zzbzrVar) {
        synchronized (this.zzj) {
            FutureTask futureTask = new FutureTask(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbzj
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzj(zzbzrVar, str);
                }
            }, null);
            if (this.zzj.get() != null) {
                futureTask.run();
            } else {
                this.zzk.offer(futureTask);
            }
        }
    }

    private final boolean zzE(Context context, String str, AtomicReference atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                zzbzb.zza(atomicReference, null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            } catch (Exception unused) {
                zzC("getInstance", z);
                return false;
            }
        }
        return true;
    }

    @VisibleForTesting
    static final boolean zzv(Context context) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzah)).booleanValue()) {
            return false;
        }
        if (DynamiteModule.getLocalVersion(context, ModuleDescriptor.MODULE_ID) < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzai)).intValue()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaj)).booleanValue()) {
            try {
                context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                return false;
            } catch (ClassNotFoundException unused) {
            }
        }
        return true;
    }

    private final Object zzw(String str, @Nullable Object obj, zzbzq zzbzqVar) {
        synchronized (this.zzj) {
            if (((zzcim) this.zzj.get()) != null) {
                try {
                    return zzbzqVar.zza((zzcim) this.zzj.get());
                } catch (Exception unused) {
                    zzC(str, false);
                }
            }
            return obj;
        }
    }

    @Nullable
    private final Object zzx(String str, Context context) {
        if (!zzE(context, "com.google.android.gms.measurement.AppMeasurement", this.zzg, true)) {
            return null;
        }
        try {
            return zzy(context, str).invoke(this.zzg.get(), new Object[0]);
        } catch (Exception unused) {
            zzC(str, true);
            return null;
        }
    }

    @Nullable
    private final Method zzy(Context context, String str) {
        Method method = (Method) this.zzi.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.zzi.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception unused) {
            zzC(str, false);
            return null;
        }
    }

    private final ExecutorService zzz() {
        ExecutorService threadPoolExecutor;
        if (this.zzb.get() == null) {
            if (ClientLibraryUtils.isPackageSide()) {
                threadPoolExecutor = zzfqu.zza().zzc(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzag)).intValue(), new zzbzp(this), 2);
            } else {
                zzbcu zzbcuVar = zzbdc.zzag;
                threadPoolExecutor = new ThreadPoolExecutor(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new zzbzp(this));
            }
            zzbzb.zza(this.zzb, null, threadPoolExecutor);
        }
        return (ExecutorService) this.zzb.get();
    }

    @Nullable
    public final String zza(Context context) {
        if (zzu(context)) {
            if (zzv(context)) {
                Long l = (Long) zzw("getAdEventId", null, new zzbzq() { // from class: com.google.android.gms.internal.ads.zzbzm
                    @Override // com.google.android.gms.internal.ads.zzbzq
                    public final Object zza(zzcim zzcimVar) {
                        return Long.valueOf(zzcimVar.zzc());
                    }
                });
                if (l != null) {
                    return Long.toString(l.longValue());
                }
            } else {
                Object objZzx = zzx("generateEventId", context);
                if (objZzx != null) {
                    return objZzx.toString();
                }
            }
        }
        return null;
    }

    @Nullable
    public final String zzb(Context context) {
        if (!zzu(context)) {
            return null;
        }
        synchronized (this.zzc) {
            String str = this.zze;
            if (str != null) {
                return str;
            }
            if (zzv(context)) {
                this.zze = (String) zzw("getAppIdOrigin", this.zze, new zzbzq() { // from class: com.google.android.gms.internal.ads.zzbzg
                    @Override // com.google.android.gms.internal.ads.zzbzq
                    public final Object zza(zzcim zzcimVar) {
                        return zzcimVar.zze();
                    }
                });
            } else {
                this.zze = "fa";
            }
            return this.zze;
        }
    }

    @Nullable
    public final String zzc(final Context context) {
        if (!zzu(context)) {
            return null;
        }
        long jLongValue = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaf)).longValue();
        try {
            if (zzv(context)) {
                try {
                    return jLongValue < 0 ? (String) zzw("getAppInstanceId", null, zzbzn.zza) : (String) zzz().submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzbze
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.zza.zzf();
                        }
                    }).get(jLongValue, TimeUnit.MILLISECONDS);
                } catch (Exception unused) {
                    return null;
                }
            }
            if (jLongValue < 0) {
                return (String) zzx("getAppInstanceId", context);
            }
            try {
                return (String) zzz().submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzbzf
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.zza.zzg(context);
                    }
                }).get(jLongValue, TimeUnit.MILLISECONDS);
            } catch (Exception unused2) {
                return null;
            }
        } catch (TimeoutException unused3) {
            return "TIME_OUT";
        }
    }

    public final String zzd(Context context) {
        if (zzu(context)) {
            if (zzv(context)) {
                return (String) zzw("getCurrentScreenNameOrScreenClass", "", new zzbzq() { // from class: com.google.android.gms.internal.ads.zzbzd
                    @Override // com.google.android.gms.internal.ads.zzbzq
                    public final Object zza(zzcim zzcimVar) throws RemoteException {
                        String strZzh = zzcimVar.zzh();
                        return (strZzh == null && (strZzh = zzcimVar.zzg()) == null) ? "" : strZzh;
                    }
                });
            }
            if (zzE(context, "com.google.android.gms.measurement.AppMeasurement", this.zzg, true)) {
                try {
                    String str = (String) zzy(context, "getCurrentScreenName").invoke(this.zzg.get(), new Object[0]);
                    if (str == null) {
                        str = (String) zzy(context, "getCurrentScreenClass").invoke(this.zzg.get(), new Object[0]);
                    }
                    return str == null ? "" : str;
                } catch (Exception unused) {
                    zzC("getCurrentScreenName", false);
                }
            }
        }
        return "";
    }

    @Nullable
    public final String zze(Context context) {
        if (!zzu(context)) {
            return null;
        }
        synchronized (this.zzc) {
            String str = this.zzd;
            if (str != null) {
                return str;
            }
            if (zzv(context)) {
                this.zzd = (String) zzw("getGmpAppId", this.zzd, new zzbzq() { // from class: com.google.android.gms.internal.ads.zzbzl
                    @Override // com.google.android.gms.internal.ads.zzbzq
                    public final Object zza(zzcim zzcimVar) {
                        return zzcimVar.zzi();
                    }
                });
            } else {
                this.zzd = (String) zzx("getGmpAppId", context);
            }
            return this.zzd;
        }
    }

    final /* synthetic */ String zzf() throws Exception {
        return (String) zzw("getAppInstanceId", null, zzbzn.zza);
    }

    final /* synthetic */ String zzg(Context context) throws Exception {
        return (String) zzx("getAppInstanceId", context);
    }

    public final void zzh(Context context, final String str) {
        if (zzu(context)) {
            if (zzv(context)) {
                zzD("beginAdUnitExposure", new zzbzr() { // from class: com.google.android.gms.internal.ads.zzbzc
                    @Override // com.google.android.gms.internal.ads.zzbzr
                    public final void zza(zzcim zzcimVar) throws RemoteException {
                        zzcimVar.zzl(str);
                    }
                });
            } else {
                zzA(context, str, "beginAdUnitExposure");
            }
        }
    }

    public final void zzi(Context context, final String str) {
        if (zzu(context)) {
            if (zzv(context)) {
                zzD("endAdUnitExposure", new zzbzr() { // from class: com.google.android.gms.internal.ads.zzbzk
                    @Override // com.google.android.gms.internal.ads.zzbzr
                    public final void zza(zzcim zzcimVar) throws RemoteException {
                        zzcimVar.zzn(str);
                    }
                });
            } else {
                zzA(context, str, "endAdUnitExposure");
            }
        }
    }

    final /* synthetic */ void zzj(zzbzr zzbzrVar, String str) {
        if (((zzcim) this.zzj.get()) != null) {
            try {
                zzbzrVar.zza((zzcim) this.zzj.get());
            } catch (Exception unused) {
                zzC(str, false);
            }
        }
    }

    public final void zzk(Context context, String str) {
        zzB(context, "_aa", str, null);
    }

    public final void zzl(Context context, String str) {
        zzB(context, "_aq", str, null);
    }

    public final void zzm(Context context, String str) {
        zzB(context, "_ac", str, null);
    }

    public final void zzn(Context context, String str) {
        zzB(context, "_ai", str, null);
    }

    public final void zzo(Context context, String str, String str2, String str3, int i) {
        if (zzu(context)) {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str2);
            bundle.putString("reward_type", str3);
            bundle.putInt("reward_value", i);
            zzB(context, "_ar", str, bundle);
            com.google.android.gms.ads.internal.util.zze.zza("Log a Firebase reward video event, reward type: " + str3 + ", reward value: " + i);
        }
    }

    public final void zzp(Context context, com.google.android.gms.ads.internal.client.zzl zzlVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzam)).booleanValue() && zzu(context) && zzv(context)) {
            synchronized (this.zzl) {
            }
        }
    }

    public final void zzq(Context context, com.google.android.gms.ads.internal.client.zzff zzffVar) {
        zzbzt.zzd(context).zzb().zzd(zzffVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzam)).booleanValue() && zzu(context) && zzv(context)) {
            synchronized (this.zzl) {
            }
        }
    }

    public final void zzr(final Bundle bundle) {
        zzD("setConsent", new zzbzr() { // from class: com.google.android.gms.internal.ads.zzbzo
            @Override // com.google.android.gms.internal.ads.zzbzr
            public final void zza(zzcim zzcimVar) throws RemoteException {
                zzcimVar.zzr(bundle);
            }
        });
    }

    @Deprecated
    public final void zzs(final Context context, final String str) {
        if (zzu(context) && (context instanceof Activity)) {
            if (zzv(context)) {
                zzD("setScreenName", new zzbzr() { // from class: com.google.android.gms.internal.ads.zzbzi
                    @Override // com.google.android.gms.internal.ads.zzbzr
                    public final void zza(zzcim zzcimVar) throws RemoteException {
                        Context context2 = context;
                        zzcimVar.zzs(ObjectWrapper.wrap(context2), str, context2.getPackageName());
                    }
                });
                return;
            }
            if (zzE(context, "com.google.firebase.analytics.FirebaseAnalytics", this.zzh, false)) {
                Method declaredMethod = (Method) this.zzi.get("setCurrentScreen");
                if (declaredMethod == null) {
                    try {
                        declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("setCurrentScreen", Activity.class, String.class, String.class);
                        this.zzi.put("setCurrentScreen", declaredMethod);
                    } catch (Exception unused) {
                        zzC("setCurrentScreen", false);
                        declaredMethod = null;
                    }
                }
                try {
                    declaredMethod.invoke(this.zzh.get(), (Activity) context, str, context.getPackageName());
                } catch (Exception unused2) {
                    zzC("setCurrentScreen", false);
                }
            }
        }
    }

    public final boolean zzt() {
        synchronized (this.zzl) {
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzu(android.content.Context r5) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzbcu r0 = com.google.android.gms.internal.ads.zzbdc.zzaa
            com.google.android.gms.internal.ads.zzbda r1 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r0 = r1.zza(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 0
            if (r0 == 0) goto L67
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.zza
            boolean r0 = r0.get()
            if (r0 == 0) goto L1c
            goto L67
        L1c:
            com.google.android.gms.internal.ads.zzbcu r0 = com.google.android.gms.internal.ads.zzbdc.zzak
            com.google.android.gms.internal.ads.zzbda r2 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r0 = r2.zza(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r2 = 1
            if (r0 == 0) goto L30
            return r2
        L30:
            java.util.concurrent.atomic.AtomicInteger r0 = r4.zzf
            int r0 = r0.get()
            r3 = -1
            if (r0 != r3) goto L5e
            com.google.android.gms.ads.internal.client.zzay.zzb()
            r0 = 12451000(0xbdfcb8, float:1.7447567E-38)
            boolean r0 = com.google.android.gms.internal.ads.zzcbg.zzs(r5, r0)
            if (r0 != 0) goto L59
            com.google.android.gms.ads.internal.client.zzay.zzb()
            boolean r5 = com.google.android.gms.internal.ads.zzcbg.zzt(r5)
            if (r5 == 0) goto L59
            java.lang.String r5 = "Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service."
            com.google.android.gms.internal.ads.zzcbn.zzj(r5)
            java.util.concurrent.atomic.AtomicInteger r5 = r4.zzf
            r5.set(r1)
            goto L5e
        L59:
            java.util.concurrent.atomic.AtomicInteger r5 = r4.zzf
            r5.set(r2)
        L5e:
            java.util.concurrent.atomic.AtomicInteger r5 = r4.zzf
            int r5 = r5.get()
            if (r5 != r2) goto L67
            return r2
        L67:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbzs.zzu(android.content.Context):boolean");
    }
}
