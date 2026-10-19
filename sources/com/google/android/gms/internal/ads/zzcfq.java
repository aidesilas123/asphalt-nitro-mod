package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.util.Clock;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcfq extends zzcfh implements zzcdm {
    public static final /* synthetic */ int zzd = 0;
    private zzcdn zze;
    private String zzf;
    private boolean zzg;
    private boolean zzh;
    private zzcez zzi;
    private long zzj;
    private long zzk;

    public zzcfq(zzcdw zzcdwVar, zzcdv zzcdvVar) {
        super(zzcdwVar);
        zzcgi zzcgiVar = new zzcgi(zzcdwVar.getContext(), zzcdvVar, (zzcdw) this.zzc.get(), null);
        zzcbn.zzi("ExoPlayerAdapter initialized.");
        this.zze = zzcgiVar;
        zzcgiVar.zzL(this);
    }

    protected static final String zzc(String str) {
        return "cache:".concat(String.valueOf(zzcbg.zze(str)));
    }

    private static String zzd(String str, Exception exc) {
        return str + "/" + exc.getClass().getCanonicalName() + CertificateUtil.DELIMITER + exc.getMessage();
    }

    private final void zzx(long j) {
        com.google.android.gms.ads.internal.util.zzt.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfp
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.zza.zzb();
            }
        }, j);
    }

    @Override // com.google.android.gms.internal.ads.zzcfh, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzcdn zzcdnVar = this.zze;
        if (zzcdnVar != null) {
            zzcdnVar.zzL(null);
            this.zze.zzH();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zzD(int i, int i2) {
    }

    public final zzcdn zza() {
        synchronized (this) {
            this.zzh = true;
            notify();
        }
        this.zze.zzL(null);
        zzcdn zzcdnVar = this.zze;
        this.zze = null;
        return zzcdnVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22, types: [com.google.android.gms.internal.ads.zzcfh, com.google.android.gms.internal.ads.zzcfq] */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26, types: [com.google.android.gms.internal.ads.zzcfq] */
    /* JADX WARN: Type inference failed for: r2v31 */
    final /* synthetic */ void zzb() throws Throwable {
        String str;
        zzcfq zzcfqVarBooleanValue;
        zzcfq zzcfqVar;
        zzbda zzbdaVarZzc;
        long jLongValue;
        long jIntValue;
        zzcfq zzcfqVar2;
        long j;
        long j2;
        String str2;
        long j3;
        String strZzc = zzc(this.zzf);
        Object obj = "error";
        try {
            zzbcu zzbcuVar = zzbdc.zzx;
            zzbdaVarZzc = com.google.android.gms.ads.internal.client.zzba.zzc();
            jLongValue = ((Long) zzbdaVarZzc.zza(zzbcuVar)).longValue() * 1000;
            jIntValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzw)).intValue();
            zzcfqVarBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbO)).booleanValue();
            try {
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e2) {
            e = e2;
            str = strZzc;
            zzcfqVarBooleanValue = this;
        }
        synchronized (this) {
            try {
                int i = ((com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - this.zzj) > jLongValue ? 1 : ((com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - this.zzj) == jLongValue ? 0 : -1));
                if (i <= 0) {
                    try {
                        if (this.zzg) {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                        if (!this.zzh) {
                            if (!this.zze.zzV()) {
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            long jZzz = this.zze.zzz();
                            if (jZzz > 0) {
                                long jZzv = this.zze.zzv();
                                if (jZzv != this.zzk) {
                                    try {
                                        j2 = jIntValue;
                                        str2 = strZzc;
                                        try {
                                            zzo(this.zzf, strZzc, jZzv, jZzz, jZzv > 0, zzcfqVarBooleanValue != 0 ? this.zze.zzA() : -1L, zzcfqVarBooleanValue != 0 ? this.zze.zzx() : -1L, zzcfqVarBooleanValue != 0 ? this.zze.zzB() : -1L, zzcdn.zzs(), zzcdn.zzu());
                                            zzcfqVarBooleanValue = this;
                                            j = jZzv;
                                            try {
                                                zzcfqVarBooleanValue.zzk = j;
                                                j3 = jZzz;
                                                zzcfqVarBooleanValue = zzcfqVarBooleanValue;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                str = str2;
                                                throw th;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            zzcfqVarBooleanValue = this;
                                            str = str2;
                                            throw th;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        zzcfqVarBooleanValue = this;
                                        str = strZzc;
                                        throw th;
                                    }
                                } else {
                                    j = jZzv;
                                    j2 = jIntValue;
                                    str2 = strZzc;
                                    zzcfqVarBooleanValue = this;
                                    j3 = jZzz;
                                }
                                if (j >= j3) {
                                    zzcfqVarBooleanValue.zzj(zzcfqVarBooleanValue.zzf, str2, j3);
                                    zzcfqVar = zzcfqVarBooleanValue;
                                } else {
                                    long jZzw = zzcfqVarBooleanValue.zze.zzw();
                                    zzcfqVar2 = zzcfqVarBooleanValue;
                                    if (jZzw >= j2) {
                                        zzcfqVar2 = zzcfqVarBooleanValue;
                                        if (j > 0) {
                                            zzcfqVar = zzcfqVarBooleanValue;
                                        }
                                    }
                                }
                            } else {
                                zzcfqVar2 = this;
                            }
                            zzcfqVar2.zzx(((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzy)).longValue());
                            return;
                        }
                        zzcfqVar = this;
                        com.google.android.gms.ads.internal.zzt.zzy().zzc(zzcfqVar.zzi);
                    } catch (Throwable th5) {
                        th = th5;
                        obj = zzbdaVarZzc;
                        str = i;
                    }
                } else {
                    str = strZzc;
                    zzcfqVarBooleanValue = this;
                    try {
                        throw new IOException("Timeout reached. Limit: " + jLongValue + " ms");
                    } catch (Throwable th6) {
                        th = th6;
                        obj = "downloadTimeout";
                    }
                }
            } catch (Throwable th7) {
                th = th7;
                str = strZzc;
                zzcfqVarBooleanValue = this;
            }
            try {
                throw th;
            } catch (Exception e3) {
                e = e3;
                String str3 = obj;
                zzcbn.zzj("Failed to preload url " + zzcfqVarBooleanValue.zzf + " Exception: " + e.getMessage());
                com.google.android.gms.ads.internal.zzt.zzo().zzv(e, "VideoStreamExoPlayerCache.preload");
                release();
                zzcfqVarBooleanValue.zzg(zzcfqVarBooleanValue.zzf, str, str3, zzd(str3, e));
                zzcfqVar = zzcfqVarBooleanValue;
                com.google.android.gms.ads.internal.zzt.zzy().zzc(zzcfqVar.zzi);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfh
    public final void zzf() {
        synchronized (this) {
            this.zzg = true;
            notify();
            release();
        }
        String str = this.zzf;
        if (str != null) {
            zzg(this.zzf, zzc(str), "externalAbort", "Programmatic precache abort.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zzi(final boolean z, final long j) {
        final zzcdw zzcdwVar = (zzcdw) this.zzc.get();
        if (zzcdwVar != null) {
            zzcca.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfo
                @Override // java.lang.Runnable
                public final void run() {
                    zzcdwVar.zzv(z, j);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zzk(String str, Exception exc) {
        zzcbn.zzk("Precache error", exc);
        com.google.android.gms.ads.internal.zzt.zzo().zzv(exc, "VideoStreamExoPlayerCache.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zzl(String str, Exception exc) {
        zzcbn.zzk("Precache exception", exc);
        com.google.android.gms.ads.internal.zzt.zzo().zzv(exc, "VideoStreamExoPlayerCache.onException");
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zzm(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcfh
    public final void zzp(int i) {
        this.zze.zzJ(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcfh
    public final void zzq(int i) {
        this.zze.zzK(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcfh
    public final void zzr(int i) {
        this.zze.zzM(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcfh
    public final void zzs(int i) {
        this.zze.zzN(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcfh
    public final boolean zzt(String str) {
        return zzu(str, new String[]{str});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.zzcdw] */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r15v0, types: [com.google.android.gms.internal.ads.zzcfh, com.google.android.gms.internal.ads.zzcfq] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [com.google.android.gms.internal.ads.zzcfq] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r17v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18, types: [long] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.gms.internal.ads.zzcfh] */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v11, types: [int] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // com.google.android.gms.internal.ads.zzcfh
    public final boolean zzu(String str, String[] strArr) throws Throwable {
        ?? r6;
        String str2;
        ?? r5;
        long j;
        long j2;
        long j3;
        ?? r1;
        long j4;
        long j5;
        String str3;
        long j6;
        ?? r12;
        long j7;
        ?? r15 = this;
        ?? r13 = str;
        r15.zzf = r13;
        ?? r17 = "error";
        String strZzc = zzc(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            r15.zze.zzF(uriArr, r15.zzb);
            ?? r0 = (zzcdw) r15.zzc.get();
            if (r0 != 0) {
                r0.zzt(strZzc, r15);
            }
            Clock clockZzB = com.google.android.gms.ads.internal.zzt.zzB();
            long jCurrentTimeMillis = clockZzB.currentTimeMillis();
            long jLongValue = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzy)).longValue();
            long jLongValue2 = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzx)).longValue() * 1000;
            long jIntValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzw)).intValue();
            boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbO)).booleanValue();
            ?? r14 = -1;
            long j8 = jIntValue;
            r13 = r13;
            r15 = r15;
            while (true) {
                synchronized (this) {
                    try {
                        if (clockZzB.currentTimeMillis() - jCurrentTimeMillis > jLongValue2) {
                            throw new IOException("Timeout reached. Limit: " + jLongValue2 + " ms");
                        }
                        if (r15.zzg) {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                        if (r15.zzh) {
                            break;
                        }
                        if (!r15.zze.zzV()) {
                            throw new IOException("ExoPlayer was released during preloading.");
                        }
                        long jZzz = r15.zze.zzz();
                        if (jZzz > 0) {
                            long jZzv = r15.zze.zzv();
                            if (jZzv != r14) {
                                try {
                                    j4 = j8;
                                    j7 = jZzz;
                                    j2 = jLongValue2;
                                    j5 = jLongValue;
                                    str3 = strZzc;
                                } catch (Throwable th) {
                                    th = th;
                                    r5 = this;
                                    r6 = str;
                                    str2 = strZzc;
                                }
                                try {
                                    zzo(str, strZzc, jZzv, j7, jZzv > 0, zBooleanValue ? r15.zze.zzA() : -1L, zBooleanValue ? r15.zze.zzx() : -1L, zBooleanValue ? r15.zze.zzB() : -1L, zzcdn.zzs(), zzcdn.zzu());
                                    r12 = jZzv;
                                    j6 = jZzz;
                                    r6 = j7;
                                } catch (Throwable th2) {
                                    th = th2;
                                    r5 = this;
                                    r6 = str;
                                    str2 = str3;
                                    try {
                                        throw th;
                                    } catch (Exception e2) {
                                        e = e2;
                                        ?? r16 = r17;
                                        zzcbn.zzj("Failed to preload url " + r6 + " Exception: " + e.getMessage());
                                        com.google.android.gms.ads.internal.zzt.zzo().zzv(e, "VideoStreamExoPlayerCache.preload");
                                        release();
                                        r5.zzg(r6, str2, r16, zzd(r16, e));
                                        return false;
                                    }
                                }
                            } else {
                                j4 = j8;
                                j2 = jLongValue2;
                                j5 = jLongValue;
                                str3 = strZzc;
                                j6 = jZzz;
                                r12 = r14;
                                r6 = j8;
                            }
                            r5 = (jZzv > j6 ? 1 : (jZzv == j6 ? 0 : -1));
                            if (r5 >= 0) {
                                zzj(str, str3, j6);
                            } else {
                                try {
                                    zzcfq zzcfqVar = this;
                                    r6 = str;
                                    str2 = str3;
                                    if (zzcfqVar.zze.zzw() < j4 || jZzv <= 0) {
                                        j3 = j5;
                                        r1 = r12;
                                        r5 = zzcfqVar;
                                        j = j4;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    throw th;
                                }
                            }
                        } else {
                            j = j8;
                            j2 = jLongValue2;
                            r6 = r13;
                            str2 = strZzc;
                            r5 = r15;
                            j3 = jLongValue;
                            r1 = r14;
                        }
                        try {
                            try {
                                r5.wait(j3);
                            } catch (InterruptedException unused) {
                                throw new IOException("Wait interrupted.");
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            r17 = r1;
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        r6 = r13;
                        str2 = strZzc;
                        r5 = r15;
                    }
                }
                jLongValue = j3;
                r15 = r5;
                r13 = r6;
                strZzc = str2;
                j8 = j;
                jLongValue2 = j2;
                r14 = r1;
            }
            return true;
        } catch (Exception e3) {
            e = e3;
            r6 = r13;
            str2 = strZzc;
            r5 = r15;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zzv() {
        zzcbn.zzj("Precache onRenderedFirstFrame");
    }

    @Override // com.google.android.gms.internal.ads.zzcfh
    public final boolean zzw(String str, String[] strArr, zzcez zzcezVar) {
        this.zzf = str;
        this.zzi = zzcezVar;
        String strZzc = zzc(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.zze.zzF(uriArr, this.zzb);
            zzcdw zzcdwVar = (zzcdw) this.zzc.get();
            if (zzcdwVar != null) {
                zzcdwVar.zzt(strZzc, this);
            }
            this.zzj = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
            this.zzk = -1L;
            zzx(0L);
            return true;
        } catch (Exception e2) {
            zzcbn.zzj("Failed to preload url " + str + " Exception: " + e2.getMessage());
            com.google.android.gms.ads.internal.zzt.zzo().zzv(e2, "VideoStreamExoPlayerCache.preload");
            release();
            zzg(str, strZzc, "error", zzd("error", e2));
            return false;
        }
    }
}
