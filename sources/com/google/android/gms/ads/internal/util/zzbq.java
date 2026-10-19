package com.google.android.gms.ads.internal.util;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzami;
import com.google.android.gms.internal.ads.zzand;
import com.google.android.gms.internal.ads.zzcbm;
import com.google.android.gms.internal.ads.zzcbn;
import com.google.android.gms.internal.ads.zzccf;
import com.google.common.util.concurrent.h0;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbq {
    private static zzand zzb;
    private static final Object zzc = new Object();

    @Deprecated
    public static final zzbl zza = new zzbi();

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034 A[Catch: all -> 0x003d, TryCatch #0 {, blocks: (B:7:0x0010, B:9:0x0014, B:11:0x001d, B:13:0x002f, B:15:0x0039, B:14:0x0034, B:16:0x003b), top: B:21:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public zzbq(android.content.Context r4) {
        /*
            r3 = this;
            r3.<init>()
            android.content.Context r0 = r4.getApplicationContext()
            if (r0 == 0) goto Ld
            android.content.Context r4 = r4.getApplicationContext()
        Ld:
            java.lang.Object r0 = com.google.android.gms.ads.internal.util.zzbq.zzc
            monitor-enter(r0)
            com.google.android.gms.internal.ads.zzand r1 = com.google.android.gms.ads.internal.util.zzbq.zzb     // Catch: java.lang.Throwable -> L3d
            if (r1 != 0) goto L3b
            com.google.android.gms.internal.ads.zzbdc.zza(r4)     // Catch: java.lang.Throwable -> L3d
            boolean r1 = com.google.android.gms.common.util.ClientLibraryUtils.isPackageSide()     // Catch: java.lang.Throwable -> L3d
            if (r1 != 0) goto L34
            com.google.android.gms.internal.ads.zzbcu r1 = com.google.android.gms.internal.ads.zzbdc.zzeo     // Catch: java.lang.Throwable -> L3d
            com.google.android.gms.internal.ads.zzbda r2 = com.google.android.gms.ads.internal.client.zzba.zzc()     // Catch: java.lang.Throwable -> L3d
            java.lang.Object r1 = r2.zza(r1)     // Catch: java.lang.Throwable -> L3d
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L3d
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L3d
            if (r1 == 0) goto L34
            com.google.android.gms.internal.ads.zzand r4 = com.google.android.gms.ads.internal.util.zzaz.zzb(r4)     // Catch: java.lang.Throwable -> L3d
            goto L39
        L34:
            r1 = 0
            com.google.android.gms.internal.ads.zzand r4 = com.google.android.gms.internal.ads.zzaog.zza(r4, r1)     // Catch: java.lang.Throwable -> L3d
        L39:
            com.google.android.gms.ads.internal.util.zzbq.zzb = r4     // Catch: java.lang.Throwable -> L3d
        L3b:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3d
            return
        L3d:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3d
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzbq.<init>(android.content.Context):void");
    }

    public final h0 zza(String str) {
        zzccf zzccfVar = new zzccf();
        zzb.zza(new zzbp(str, null, zzccfVar));
        return zzccfVar;
    }

    public final h0 zzb(int i, String str, @Nullable Map map, @Nullable byte[] bArr) {
        zzbn zzbnVar = new zzbn(null);
        zzbj zzbjVar = new zzbj(this, str, zzbnVar);
        zzcbm zzcbmVar = new zzcbm(null);
        zzbk zzbkVar = new zzbk(this, i, str, zzbnVar, zzbjVar, bArr, map, zzcbmVar);
        if (zzcbm.zzk()) {
            try {
                zzcbmVar.zzd(str, "GET", zzbkVar.zzl(), zzbkVar.zzx());
            } catch (zzami e2) {
                zzcbn.zzj(e2.getMessage());
            }
        }
        zzb.zza(zzbkVar);
        return zzbnVar;
    }
}
