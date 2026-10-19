package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdrh {
    private final Map zza = new HashMap();

    zzdrh() {
    }

    public final synchronized zzdrg zza(String str) {
        return (zzdrg) this.zza.get(str);
    }

    public final zzdrg zzb(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzdrg zzdrgVarZza = zza((String) it.next());
            if (zzdrgVarZza != null) {
                return zzdrgVarZza;
            }
        }
        return null;
    }

    public final String zzc(String str) {
        zzbsd zzbsdVar;
        zzdrg zzdrgVarZza = zza(str);
        return (zzdrgVarZza == null || (zzbsdVar = zzdrgVarZza.zzb) == null) ? "" : zzbsdVar.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0019 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final synchronized void zzd(java.lang.String r7, com.google.android.gms.internal.ads.zzffm r8) {
        /*
            r6 = this;
            monitor-enter(r6)
            java.util.Map r0 = r6.zza     // Catch: java.lang.Throwable -> L44
            boolean r0 = r0.containsKey(r7)     // Catch: java.lang.Throwable -> L44
            if (r0 == 0) goto Lb
            monitor-exit(r6)
            return
        Lb:
            com.google.android.gms.internal.ads.zzdrg r0 = new com.google.android.gms.internal.ads.zzdrg     // Catch: java.lang.Throwable -> L44
            r1 = 0
            if (r8 != 0) goto L12
        L10:
            r2 = r1
            goto L16
        L12:
            com.google.android.gms.internal.ads.zzbsd r2 = r8.zze()     // Catch: com.google.android.gms.internal.ads.zzfev -> L10 java.lang.Throwable -> L44
        L16:
            if (r8 != 0) goto L19
            goto L1d
        L19:
            com.google.android.gms.internal.ads.zzbsd r1 = r8.zzf()     // Catch: com.google.android.gms.internal.ads.zzfev -> L1d java.lang.Throwable -> L44
        L1d:
            com.google.android.gms.internal.ads.zzbcu r3 = com.google.android.gms.internal.ads.zzbdc.zzjg     // Catch: java.lang.Throwable -> L44
            com.google.android.gms.internal.ads.zzbda r4 = com.google.android.gms.ads.internal.client.zzba.zzc()     // Catch: java.lang.Throwable -> L44
            java.lang.Object r3 = r4.zza(r3)     // Catch: java.lang.Throwable -> L44
            java.lang.Boolean r3 = (java.lang.Boolean) r3     // Catch: java.lang.Throwable -> L44
            boolean r3 = r3.booleanValue()     // Catch: java.lang.Throwable -> L44
            r4 = 0
            r5 = 1
            if (r3 != 0) goto L33
        L31:
            r4 = 1
            goto L3a
        L33:
            if (r8 != 0) goto L36
            goto L3a
        L36:
            r8.zzC()     // Catch: com.google.android.gms.internal.ads.zzfev -> L3a java.lang.Throwable -> L44
            goto L31
        L3a:
            r0.<init>(r7, r2, r1, r4)     // Catch: java.lang.Throwable -> L44
            java.util.Map r8 = r6.zza     // Catch: java.lang.Throwable -> L44
            r8.put(r7, r0)     // Catch: java.lang.Throwable -> L44
            monitor-exit(r6)
            return
        L44:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdrh.zzd(java.lang.String, com.google.android.gms.internal.ads.zzffm):void");
    }

    final synchronized void zze(String str, zzbrp zzbrpVar) {
        if (this.zza.containsKey(str)) {
            return;
        }
        try {
            this.zza.put(str, new zzdrg(str, zzbrpVar.zzf(), zzbrpVar.zzg(), true));
        } catch (Throwable unused) {
        }
    }
}
