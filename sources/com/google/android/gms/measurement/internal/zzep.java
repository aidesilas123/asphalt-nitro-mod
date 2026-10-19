package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzof;
import com.google.android.gms.internal.measurement.zzpp;
import com.google.android.gms.internal.measurement.zzpv;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzep extends zzf {
    private String zza;
    private String zzb;
    private int zzc;
    private String zzd;
    private String zze;
    private long zzf;
    private final long zzg;
    private List zzh;
    private String zzi;
    private int zzj;
    private String zzk;
    private String zzl;
    private String zzm;
    private long zzn;
    private String zzo;

    zzep(zzgi zzgiVar, long j) {
        super(zzgiVar);
        this.zzn = 0L;
        this.zzo = null;
        this.zzg = j;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:0|2|(1:4)(21:87|6|(1:10)(2:11|(1:13))|83|14|(4:16|(1:18)(1:20)|85|21)|26|(1:31)(1:30)|32|SW:33|43|(1:45)|89|46|(1:48)|49|(3:51|(1:53)(1:54)|55)|(3:57|(1:59)(1:60)|61)|65|(2:68|(1:70)(4:71|(3:74|(1:92)(1:93)|72)|91|77))(1:77)|(2:79|80)(2:81|82))|5|26|(2:28|31)(0)|32|SW:33|43|(0)|89|46|(0)|49|(0)|(0)|65|(0)(0)|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01db, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01dc, code lost:
    
        r11.zzs.zzaz().zzd().zzc("Fetching Google App Id failed with exception. appId", com.google.android.gms.measurement.internal.zzey.zzn(r0), r2);
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0194 A[Catch: IllegalStateException -> 0x01db, TryCatch #3 {IllegalStateException -> 0x01db, blocks: (B:46:0x0173, B:49:0x018c, B:51:0x0194, B:55:0x01b2, B:54:0x01ae, B:57:0x01bc, B:59:0x01d2, B:61:0x01d7, B:60:0x01d5), top: B:89:0x0173 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01bc A[Catch: IllegalStateException -> 0x01db, TryCatch #3 {IllegalStateException -> 0x01db, blocks: (B:46:0x0173, B:49:0x018c, B:51:0x0194, B:55:0x01b2, B:54:0x01ae, B:57:0x01bc, B:59:0x01d2, B:61:0x01d7, B:60:0x01d5), top: B:89:0x0173 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x024c  */
    @Override // com.google.android.gms.measurement.internal.zzf
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void zzd() {
        /*
            Method dump skipped, instruction units count: 612
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzep.zzd():void");
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzf() {
        return true;
    }

    @WorkerThread
    final int zzh() {
        zza();
        return this.zzj;
    }

    @WorkerThread
    final int zzi() {
        zza();
        return this.zzc;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v38, types: [com.google.android.gms.measurement.internal.zzhb, com.google.android.gms.measurement.internal.zzlp] */
    /* JADX WARN: Type inference failed for: r9v39, types: [com.google.android.gms.measurement.internal.zzhb] */
    /* JADX WARN: Type inference failed for: r9v43 */
    /* JADX WARN: Type inference failed for: r9v48 */
    /* JADX WARN: Type inference failed for: r9v49 */
    /* JADX WARN: Type inference failed for: r9v50 */
    @WorkerThread
    final zzp zzj(String str) {
        String str2;
        Class<?> clsLoadClass;
        Object objInvoke;
        String str3;
        long jMin;
        String str4;
        long j;
        String str5;
        String str6;
        long j2;
        zzg();
        String strZzl = zzl();
        String strZzm = zzm();
        zza();
        String str7 = this.zzb;
        zza();
        long j3 = this.zzc;
        zza();
        Preconditions.checkNotNull(this.zzd);
        String str8 = this.zzd;
        this.zzs.zzf().zzh();
        zza();
        zzg();
        long j4 = this.zzf;
        long j5 = j4;
        if (j4 == 0) {
            ?? Zzv = this.zzs.zzv();
            Context contextZzav = this.zzs.zzav();
            String packageName = this.zzs.zzav().getPackageName();
            Zzv.zzg();
            Preconditions.checkNotNull(contextZzav);
            Preconditions.checkNotEmpty(packageName);
            PackageManager packageManager = contextZzav.getPackageManager();
            MessageDigest messageDigestZzF = zzlp.zzF();
            long j6 = -1;
            j6 = -1;
            if (messageDigestZzF == null) {
                Zzv.zzs.zzaz().zzd().zza("Could not get MD5 instance");
            } else {
                if (packageManager != null) {
                    try {
                        if (Zzv.zzag(contextZzav, packageName)) {
                            j6 = 0;
                            Zzv = Zzv;
                        } else {
                            Signature[] signatureArr = Wrappers.packageManager(contextZzav).getPackageInfo(Zzv.zzs.zzav().getPackageName(), 64).signatures;
                            if (signatureArr == null || signatureArr.length <= 0) {
                                Zzv.zzs.zzaz().zzk().zza("Could not get signatures");
                                Zzv = Zzv;
                            } else {
                                long jZzp = zzlp.zzp(messageDigestZzF.digest(signatureArr[0].toByteArray()));
                                j6 = jZzp;
                                Zzv = jZzp;
                            }
                        }
                    } catch (PackageManager.NameNotFoundException e2) {
                        Zzv.zzs.zzaz().zzd().zzb("Package name not found", e2);
                        j2 = 0;
                    }
                }
                j2 = 0;
                this.zzf = j2;
                j5 = j2;
            }
            j2 = j6;
            this.zzf = j2;
            j5 = j2;
        }
        long j7 = j5;
        boolean zZzJ = this.zzs.zzJ();
        boolean z = !this.zzs.zzm().zzk;
        zzg();
        if (this.zzs.zzJ()) {
            zzpv.zzc();
            if (this.zzs.zzf().zzs(null, zzel.zzab)) {
                this.zzs.zzaz().zzj().zza("Disabled IID for tests.");
            } else {
                try {
                    clsLoadClass = this.zzs.zzav().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                } catch (ClassNotFoundException unused) {
                }
                if (clsLoadClass != null) {
                    try {
                        objInvoke = clsLoadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, this.zzs.zzav());
                    } catch (Exception unused2) {
                        this.zzs.zzaz().zzm().zza("Failed to obtain Firebase Analytics instance");
                    }
                    if (objInvoke == null) {
                        str2 = null;
                    } else {
                        try {
                            str2 = (String) clsLoadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(objInvoke, new Object[0]);
                        } catch (Exception unused3) {
                            this.zzs.zzaz().zzl().zza("Failed to retrieve Firebase Instance Id");
                            str2 = null;
                        }
                    }
                }
            }
            str2 = null;
        } else {
            str2 = null;
        }
        zzgi zzgiVar = this.zzs;
        long jZza = zzgiVar.zzm().zzc.zza();
        if (jZza == 0) {
            str3 = strZzl;
            jMin = zzgiVar.zzc;
        } else {
            str3 = strZzl;
            jMin = Math.min(zzgiVar.zzc, jZza);
        }
        zza();
        int i = this.zzj;
        boolean zZzr = this.zzs.zzf().zzr();
        zzfn zzfnVarZzm = this.zzs.zzm();
        zzfnVarZzm.zzg();
        boolean z2 = zzfnVarZzm.zza().getBoolean("deferred_analytics_collection", false);
        zza();
        String str9 = this.zzl;
        Boolean boolValueOf = this.zzs.zzf().zzk("google_analytics_default_allow_ad_personalization_signals") == null ? null : Boolean.valueOf(!r2.booleanValue());
        long j8 = this.zzg;
        List list = this.zzh;
        String strZzh = this.zzs.zzm().zzc().zzh();
        if (this.zzi == null) {
            str4 = str9;
            j = j8;
            if (this.zzs.zzf().zzs(null, zzel.zzaN)) {
                this.zzi = this.zzs.zzv().zzC();
            } else {
                this.zzi = "";
            }
        } else {
            str4 = str9;
            j = j8;
        }
        String str10 = this.zzi;
        zzpp.zzc();
        if (this.zzs.zzf().zzs(null, zzel.zzaI)) {
            zzg();
            if (this.zzn == 0) {
                str5 = str10;
            } else {
                str5 = str10;
                long jCurrentTimeMillis = this.zzs.zzaw().currentTimeMillis() - this.zzn;
                if (this.zzm != null && jCurrentTimeMillis > 86400000 && this.zzo == null) {
                    zzo();
                }
            }
            if (this.zzm == null) {
                zzo();
            }
            str6 = this.zzm;
        } else {
            str5 = str10;
            str6 = null;
        }
        return new zzp(str3, strZzm, str7, j3, str8, 61000L, j7, str, zZzJ, z, str2, 0L, jMin, i, zZzr, z2, str4, boolValueOf, j, list, (String) null, strZzh, str5, str6);
    }

    @WorkerThread
    final String zzk() {
        zza();
        return this.zzl;
    }

    @WorkerThread
    final String zzl() {
        zza();
        Preconditions.checkNotNull(this.zza);
        return this.zza;
    }

    @WorkerThread
    final String zzm() {
        zzof.zzc();
        if (this.zzs.zzf().zzs(null, zzel.zzal)) {
            zzg();
        }
        zza();
        Preconditions.checkNotNull(this.zzk);
        return this.zzk;
    }

    @WorkerThread
    final List zzn() {
        return this.zzh;
    }

    @WorkerThread
    final void zzo() {
        String str;
        zzg();
        if (this.zzs.zzm().zzc().zzi(zzag.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            this.zzs.zzv().zzG().nextBytes(bArr);
            str = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            this.zzs.zzaz().zzc().zza("Analytics Storage consent is not granted");
            str = null;
        }
        zzew zzewVarZzc = this.zzs.zzaz().zzc();
        Object[] objArr = new Object[1];
        objArr[0] = str == null ? "null" : "not null";
        zzewVarZzc.zza(String.format("Resetting session stitching token to %s", objArr));
        this.zzm = str;
        this.zzn = this.zzs.zzaw().currentTimeMillis();
    }

    final boolean zzp(String str) {
        String str2 = this.zzo;
        boolean z = false;
        if (str2 != null && !str2.equals(str)) {
            z = true;
        }
        this.zzo = str;
        return z;
    }
}
