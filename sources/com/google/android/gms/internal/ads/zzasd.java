package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ConditionVariable;
import androidx.annotation.VisibleForTesting;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzasd {

    @VisibleForTesting
    protected volatile Boolean zzb;
    private final zzatj zze;
    private static final ConditionVariable zzc = new ConditionVariable();

    @VisibleForTesting
    protected static volatile zzfpv zza = null;
    private static volatile Random zzd = null;

    public zzasd(zzatj zzatjVar) {
        this.zze = zzatjVar;
        zzatjVar.zzk().execute(new zzasc(this));
    }

    public static final int zzd() {
        try {
            return Build.VERSION.SDK_INT >= 21 ? ThreadLocalRandom.current().nextInt() : zze().nextInt();
        } catch (RuntimeException unused) {
            return zze().nextInt();
        }
    }

    private static Random zze() {
        if (zzd == null) {
            synchronized (zzasd.class) {
                if (zzd == null) {
                    zzd = new Random();
                }
            }
        }
        return zzd;
    }

    public final void zzc(int i, int i2, long j, String str, Exception exc) {
        try {
            zzc.block();
            if (!this.zzb.booleanValue() || zza == null) {
                return;
            }
            zzaos zzaosVarZza = zzaow.zza();
            zzaosVarZza.zza(this.zze.zza.getPackageName());
            zzaosVarZza.zze(j);
            if (str != null) {
                zzaosVarZza.zzb(str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                exc.printStackTrace(new PrintWriter(stringWriter));
                zzaosVarZza.zzf(stringWriter.toString());
                zzaosVarZza.zzd(exc.getClass().getName());
            }
            zzfpu zzfpuVarZza = zza.zza(((zzaow) zzaosVarZza.zzal()).zzax());
            zzfpuVarZza.zza(i);
            if (i2 != -1) {
                zzfpuVarZza.zzb(i2);
            }
            zzfpuVarZza.zzc();
        } catch (Exception unused) {
        }
    }
}
