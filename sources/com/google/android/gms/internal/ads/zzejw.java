package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzejw implements zzgai {
    private final zzfiu zza;
    private final zzcyj zzb;
    private final zzfkw zzc;
    private final zzfla zzd;
    private final Executor zze;
    private final ScheduledExecutorService zzf;
    private final zzctu zzg;
    private final zzejp zzh;
    private final zzega zzi;
    private final Context zzj;
    private final zzfkh zzk;
    private final zzeiz zzl;

    zzejw(Context context, zzfiu zzfiuVar, zzejp zzejpVar, zzcyj zzcyjVar, zzfkw zzfkwVar, zzfla zzflaVar, zzctu zzctuVar, Executor executor, ScheduledExecutorService scheduledExecutorService, zzega zzegaVar, zzfkh zzfkhVar, zzeiz zzeizVar) {
        this.zzj = context;
        this.zza = zzfiuVar;
        this.zzh = zzejpVar;
        this.zzb = zzcyjVar;
        this.zzc = zzfkwVar;
        this.zzd = zzflaVar;
        this.zzg = zzctuVar;
        this.zze = executor;
        this.zzf = scheduledExecutorService;
        this.zzi = zzegaVar;
        this.zzk = zzfkhVar;
        this.zzl = zzeizVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static java.lang.String zzc(com.google.android.gms.internal.ads.zzfeh r5) {
        /*
            com.google.android.gms.internal.ads.zzbcu r0 = com.google.android.gms.internal.ads.zzbdc.zzft
            com.google.android.gms.internal.ads.zzbda r1 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r0 = r1.zza(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            java.lang.String r1 = "No fill."
            r2 = 1
            if (r2 == r0) goto L18
            java.lang.String r0 = "No ad config."
            goto L19
        L18:
            r0 = r1
        L19:
            com.google.android.gms.internal.ads.zzfeg r2 = r5.zzb
            com.google.android.gms.internal.ads.zzfdy r2 = r2.zzb
            int r2 = r2.zze
            if (r2 == 0) goto L57
            r3 = 200(0xc8, float:2.8E-43)
            r4 = 300(0x12c, float:4.2E-43)
            if (r2 < r3) goto L3c
            if (r2 >= r4) goto L3c
            com.google.android.gms.internal.ads.zzbcu r2 = com.google.android.gms.internal.ads.zzbdc.zzfs
            com.google.android.gms.internal.ads.zzbda r3 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r2 = r3.zza(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 != 0) goto L57
            goto L58
        L3c:
            if (r2 < r4) goto L45
            r0 = 400(0x190, float:5.6E-43)
            if (r2 >= r0) goto L45
            java.lang.String r1 = "No location header to follow redirect or too many redirects."
            goto L58
        L45:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Received error HTTP response code: "
            r0.append(r1)
            r0.append(r2)
            java.lang.String r1 = r0.toString()
            goto L58
        L57:
            r1 = r0
        L58:
            com.google.android.gms.internal.ads.zzfeg r5 = r5.zzb
            com.google.android.gms.internal.ads.zzfdy r5 = r5.zzb
            com.google.android.gms.internal.ads.zzfdw r5 = r5.zzi
            if (r5 == 0) goto L65
            java.lang.String r5 = r5.zza()
            return r5
        L65:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzejw.zzc(com.google.android.gms.internal.ads.zzfeh):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0066  */
    @Override // com.google.android.gms.internal.ads.zzgai
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final /* synthetic */ com.google.common.util.concurrent.h0 zza(java.lang.Object r9) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 364
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzejw.zza(java.lang.Object):com.google.common.util.concurrent.h0");
    }

    final /* synthetic */ h0 zzb(zzfdu zzfduVar, zzfeh zzfehVar, zzefv zzefvVar, Throwable th) throws Exception {
        zzfjw zzfjwVarZza = zzfjv.zza(this.zzj, 12);
        zzfjwVarZza.zzd(zzfduVar.zzF);
        zzfjwVarZza.zzh();
        h0 h0VarZzo = zzgbb.zzo(zzefvVar.zza(zzfehVar, zzfduVar), zzfduVar.zzS, TimeUnit.MILLISECONDS, this.zzf);
        this.zzh.zzf(zzfehVar, zzfduVar, h0VarZzo, this.zzc);
        zzfkg.zza(h0VarZzo, this.zzk, zzfjwVarZza);
        return h0VarZzo;
    }
}
