package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzhy {
    public static final /* synthetic */ int zzc = 0;
    private static volatile zzhw zze;
    private static volatile boolean zzf;
    final zzhv zza;
    final String zzb;
    private final Object zzj;
    private volatile int zzk = -1;
    private volatile Object zzl;
    private final boolean zzm;
    private static final Object zzd = new Object();
    private static final AtomicReference zzg = new AtomicReference();
    private static final zzia zzh = new zzia(zzhp.zza, null);
    private static final AtomicInteger zzi = new AtomicInteger();

    /* synthetic */ zzhy(zzhv zzhvVar, String str, Object obj, boolean z, zzhx zzhxVar) {
        if (zzhvVar.zzb == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.zza = zzhvVar;
        this.zzb = str;
        this.zzj = obj;
        this.zzm = true;
    }

    static void zzd() {
        zzi.incrementAndGet();
    }

    public static void zze(final Context context) {
        if (zze == null) {
            Object obj = zzd;
            synchronized (obj) {
                if (zze == null) {
                    synchronized (obj) {
                        zzhw zzhwVar = zze;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            context = applicationContext;
                        }
                        if (zzhwVar == null || zzhwVar.zza() != context) {
                            zzhe.zze();
                            zzhz.zzc();
                            zzhm.zze();
                            zze = new zzhb(context, zzij.zza(new zzif() { // from class: com.google.android.gms.internal.measurement.zzhq
                                @Override // com.google.android.gms.internal.measurement.zzif
                                public final Object zza() {
                                    zzid zzidVarZzc;
                                    zzid zzidVarZzc2;
                                    Context contextCreateDeviceProtectedStorageContext = context;
                                    int i = zzhy.zzc;
                                    String str = Build.TYPE;
                                    String str2 = Build.TAGS;
                                    if ((!str.equals("eng") && !str.equals("userdebug")) || (!str2.contains("dev-keys") && !str2.contains("test-keys"))) {
                                        return zzid.zzc();
                                    }
                                    if (zzha.zza() && !contextCreateDeviceProtectedStorageContext.isDeviceProtectedStorage()) {
                                        contextCreateDeviceProtectedStorageContext = contextCreateDeviceProtectedStorageContext.createDeviceProtectedStorageContext();
                                    }
                                    StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                                    try {
                                        StrictMode.allowThreadDiskWrites();
                                        try {
                                            File file = new File(contextCreateDeviceProtectedStorageContext.getDir("phenotype_hermetic", 0), "overrides.txt");
                                            zzidVarZzc = file.exists() ? zzid.zzd(file) : zzid.zzc();
                                        } catch (RuntimeException e2) {
                                            Log.e("HermeticFileOverrides", "no data dir", e2);
                                            zzidVarZzc = zzid.zzc();
                                        }
                                        if (zzidVarZzc.zzb()) {
                                            File file2 = (File) zzidVarZzc.zza();
                                            try {
                                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2)));
                                                try {
                                                    HashMap map = new HashMap();
                                                    HashMap map2 = new HashMap();
                                                    while (true) {
                                                        String line = bufferedReader.readLine();
                                                        if (line == null) {
                                                            break;
                                                        }
                                                        String[] strArrSplit = line.split(" ", 3);
                                                        if (strArrSplit.length != 3) {
                                                            Log.e("HermeticFileOverrides", "Invalid: " + line);
                                                        } else {
                                                            String str3 = new String(strArrSplit[0]);
                                                            String strDecode = Uri.decode(new String(strArrSplit[1]));
                                                            String strDecode2 = (String) map2.get(strArrSplit[2]);
                                                            if (strDecode2 == null) {
                                                                String str4 = new String(strArrSplit[2]);
                                                                strDecode2 = Uri.decode(str4);
                                                                if (strDecode2.length() < 1024 || strDecode2 == str4) {
                                                                    map2.put(str4, strDecode2);
                                                                }
                                                            }
                                                            if (!map.containsKey(str3)) {
                                                                map.put(str3, new HashMap());
                                                            }
                                                            ((Map) map.get(str3)).put(strDecode, strDecode2);
                                                        }
                                                    }
                                                    Log.i("HermeticFileOverrides", "Parsed " + file2.toString());
                                                    zzhg zzhgVar = new zzhg(map);
                                                    bufferedReader.close();
                                                    zzidVarZzc2 = zzid.zzd(zzhgVar);
                                                } catch (Throwable th) {
                                                    try {
                                                        bufferedReader.close();
                                                    } catch (Throwable th2) {
                                                        try {
                                                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                                                        } catch (Exception unused) {
                                                        }
                                                    }
                                                    throw th;
                                                }
                                            } catch (IOException e3) {
                                                throw new RuntimeException(e3);
                                            }
                                        } else {
                                            zzidVarZzc2 = zzid.zzc();
                                        }
                                        return zzidVarZzc2;
                                    } finally {
                                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                                    }
                                }
                            }));
                            zzi.incrementAndGet();
                        }
                    }
                }
            }
        }
    }

    abstract Object zza(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:34:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ae A[Catch: all -> 0x010e, TryCatch #0 {, blocks: (B:8:0x0016, B:10:0x001a, B:12:0x0020, B:14:0x0029, B:16:0x0039, B:18:0x0045, B:20:0x004e, B:47:0x00d6, B:49:0x00e6, B:51:0x00fa, B:52:0x00fd, B:53:0x0101, B:35:0x00ae, B:37:0x00b4, B:41:0x00c6, B:43:0x00cc, B:46:0x00d4, B:40:0x00c4, B:21:0x0062, B:23:0x0068, B:25:0x0076, B:29:0x009b, B:31:0x00a5, B:27:0x008d, B:54:0x0106, B:55:0x010b, B:56:0x010c), top: B:63:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e6 A[Catch: all -> 0x010e, TryCatch #0 {, blocks: (B:8:0x0016, B:10:0x001a, B:12:0x0020, B:14:0x0029, B:16:0x0039, B:18:0x0045, B:20:0x004e, B:47:0x00d6, B:49:0x00e6, B:51:0x00fa, B:52:0x00fd, B:53:0x0101, B:35:0x00ae, B:37:0x00b4, B:41:0x00c6, B:43:0x00cc, B:46:0x00d4, B:40:0x00c4, B:21:0x0062, B:23:0x0068, B:25:0x0076, B:29:0x009b, B:31:0x00a5, B:27:0x008d, B:54:0x0106, B:55:0x010b, B:56:0x010c), top: B:63:0x0016 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object zzb() {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhy.zzb():java.lang.Object");
    }

    public final String zzc() {
        String str = this.zza.zzd;
        return this.zzb;
    }
}
