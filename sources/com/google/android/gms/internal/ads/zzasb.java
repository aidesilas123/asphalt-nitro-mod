package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzasb implements zzase {

    @Nullable
    private static zzasb zzb;
    private final Context zzc;
    private final zzfpi zzd;
    private final zzfpp zze;
    private final zzfpr zzf;
    private final zzatd zzg;
    private final zzfnt zzh;
    private final Executor zzi;
    private final zzfpo zzj;
    private final zzats zzl;

    @Nullable
    private final zzatk zzm;

    @Nullable
    private final zzatb zzn;
    private volatile boolean zzp;
    private volatile boolean zzq;
    private final int zzr;

    @VisibleForTesting
    volatile long zza = 0;
    private final Object zzo = new Object();
    private final CountDownLatch zzk = new CountDownLatch(1);

    @VisibleForTesting
    zzasb(@NonNull Context context, @NonNull zzfnt zzfntVar, @NonNull zzfpi zzfpiVar, @NonNull zzfpp zzfppVar, @NonNull zzfpr zzfprVar, @NonNull zzatd zzatdVar, @NonNull Executor executor, @NonNull zzfno zzfnoVar, int i, @Nullable zzats zzatsVar, @Nullable zzatk zzatkVar, @Nullable zzatb zzatbVar) {
        this.zzq = false;
        this.zzc = context;
        this.zzh = zzfntVar;
        this.zzd = zzfpiVar;
        this.zze = zzfppVar;
        this.zzf = zzfprVar;
        this.zzg = zzatdVar;
        this.zzi = executor;
        this.zzr = i;
        this.zzl = zzatsVar;
        this.zzm = zzatkVar;
        this.zzn = zzatbVar;
        this.zzq = false;
        this.zzj = new zzarz(this, zzfnoVar);
    }

    public static synchronized zzasb zza(@NonNull String str, @NonNull Context context, boolean z, boolean z2) {
        return zzb(str, context, Executors.newCachedThreadPool(), z, z2);
    }

    @Deprecated
    public static synchronized zzasb zzb(@NonNull String str, @NonNull Context context, @NonNull Executor executor, boolean z, boolean z2) {
        if (zzb == null) {
            zzfnu zzfnuVarZza = zzfnv.zza();
            zzfnuVarZza.zza(str);
            zzfnuVarZza.zzc(z);
            zzfnv zzfnvVarZzd = zzfnuVarZza.zzd();
            zzfnt zzfntVarZza = zzfnt.zza(context, executor, z2);
            zzasm zzasmVarZzc = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdg)).booleanValue() ? zzasm.zzc(context) : null;
            zzats zzatsVarZzd = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdh)).booleanValue() ? zzats.zzd(context, executor) : null;
            zzatk zzatkVar = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcv)).booleanValue() ? new zzatk() : null;
            zzatb zzatbVar = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcx)).booleanValue() ? new zzatb() : null;
            zzfom zzfomVarZze = zzfom.zze(context, executor, zzfntVarZza, zzfnvVarZzd);
            zzatc zzatcVar = new zzatc(context);
            zzatd zzatdVar = new zzatd(zzfnvVarZzd, zzfomVarZze, new zzatq(context, zzatcVar), zzatcVar, zzasmVarZzc, zzatsVarZzd, zzatkVar, zzatbVar);
            int iZzb = zzfov.zzb(context, zzfntVarZza);
            zzfno zzfnoVar = new zzfno();
            zzasb zzasbVar = new zzasb(context, zzfntVarZza, new zzfpi(context, iZzb), new zzfpp(context, iZzb, new zzary(zzfntVarZza), ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzce)).booleanValue()), new zzfpr(context, zzatdVar, zzfntVarZza, zzfnoVar), zzatdVar, executor, zzfnoVar, iZzb, zzatsVarZzd, zzatkVar, zzatbVar);
            zzb = zzasbVar;
            zzasbVar.zzm();
            zzb.zzp();
        }
        return zzb;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00f5 A[Catch: all -> 0x011c, zzgwy -> 0x011e, TryCatch #1 {zzgwy -> 0x011e, blocks: (B:6:0x0021, B:8:0x0032, B:12:0x0038, B:13:0x0044, B:15:0x0052, B:17:0x0060, B:20:0x006d, B:27:0x009c, B:31:0x00b5, B:37:0x00ce, B:38:0x00db, B:40:0x00e1, B:42:0x00e9, B:43:0x00eb, B:34:0x00bf, B:35:0x00c6, B:23:0x0074, B:25:0x008a, B:44:0x00f5, B:45:0x0102, B:46:0x010f), top: B:58:0x0021, outer: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* bridge */ /* synthetic */ void zzj(com.google.android.gms.internal.ads.zzasb r12) {
        /*
            Method dump skipped, instruction units count: 311
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzasb.zzj(com.google.android.gms.internal.ads.zzasb):void");
    }

    private final void zzs() {
        zzats zzatsVar = this.zzl;
        if (zzatsVar != null) {
            zzatsVar.zzh();
        }
    }

    private final zzfph zzt(int i) {
        if (zzfov.zza(this.zzr)) {
            return ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcc)).booleanValue() ? this.zze.zzc(1) : this.zzd.zzc(1);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzase
    public final String zze(Context context, @Nullable String str, @Nullable View view) {
        return zzf(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzase
    public final String zzf(Context context, String str, @Nullable View view, @Nullable Activity activity) {
        zzs();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcv)).booleanValue()) {
            this.zzm.zzi();
        }
        zzp();
        zzfnw zzfnwVarZza = this.zzf.zza();
        if (zzfnwVarZza == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strZza = zzfnwVarZza.zza(context, null, str, view, activity);
        this.zzh.zzf(5000, System.currentTimeMillis() - jCurrentTimeMillis, strZza, null);
        return strZza;
    }

    @Override // com.google.android.gms.internal.ads.zzase
    public final String zzg(Context context) {
        zzs();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcv)).booleanValue()) {
            this.zzm.zzj();
        }
        zzp();
        zzfnw zzfnwVarZza = this.zzf.zza();
        if (zzfnwVarZza == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strZzc = zzfnwVarZza.zzc(context, null);
        this.zzh.zzf(IronSourceConstants.errorCode_biddingDataException, System.currentTimeMillis() - jCurrentTimeMillis, strZzc, null);
        return strZzc;
    }

    @Override // com.google.android.gms.internal.ads.zzase
    public final String zzh(Context context, @Nullable View view, @Nullable Activity activity) {
        zzs();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcv)).booleanValue()) {
            this.zzm.zzk(context, view);
        }
        zzp();
        zzfnw zzfnwVarZza = this.zzf.zza();
        if (zzfnwVarZza == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strZzb = zzfnwVarZza.zzb(context, null, view, activity);
        this.zzh.zzf(IronSourceConstants.errorCode_isReadyException, System.currentTimeMillis() - jCurrentTimeMillis, strZzb, null);
        return strZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzase
    public final void zzk(@Nullable MotionEvent motionEvent) {
        zzfnw zzfnwVarZza = this.zzf.zza();
        if (zzfnwVarZza != null) {
            try {
                zzfnwVarZza.zzd(null, motionEvent);
            } catch (zzfpq e2) {
                this.zzh.zzc(e2.zza(), -1L, e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzase
    public final void zzl(int i, int i2, int i3) {
    }

    final synchronized void zzm() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        zzfph zzfphVarZzt = zzt(1);
        if (zzfphVarZzt == null) {
            this.zzh.zzd(4013, System.currentTimeMillis() - jCurrentTimeMillis);
        } else if (this.zzf.zzc(zzfphVarZzt)) {
            this.zzq = true;
            this.zzk.countDown();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzase
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zzatb zzatbVar = this.zzn;
        if (zzatbVar != null) {
            zzatbVar.zzb(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzase
    public final void zzo(@Nullable View view) {
        this.zzg.zzd(view);
    }

    public final void zzp() {
        if (this.zzp) {
            return;
        }
        synchronized (this.zzo) {
            if (!this.zzp) {
                if ((System.currentTimeMillis() / 1000) - this.zza < 3600) {
                    return;
                }
                zzfph zzfphVarZzb = this.zzf.zzb();
                if ((zzfphVarZzb == null || zzfphVarZzb.zzd(3600L)) && zzfov.zza(this.zzr)) {
                    this.zzi.execute(new zzasa(this));
                }
            }
        }
    }

    public final synchronized boolean zzr() {
        return this.zzq;
    }
}
