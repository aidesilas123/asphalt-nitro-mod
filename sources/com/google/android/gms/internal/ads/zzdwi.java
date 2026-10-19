package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdwi {
    private final zzdvs zza;
    private final zzdrh zzb;
    private final Object zzc = new Object();

    @GuardedBy("lock")
    private final List zzd = new ArrayList();

    @GuardedBy("lock")
    private boolean zze;

    zzdwi(zzdvs zzdvsVar, zzdrh zzdrhVar) {
        this.zza = zzdvsVar;
        this.zzb = zzdrhVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(List list) {
        zzdrg zzdrgVarZza;
        zzdrg zzdrgVarZza2;
        zzbsd zzbsdVar;
        synchronized (this.zzc) {
            if (this.zze) {
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzbma zzbmaVar = (zzbma) it.next();
                String string = (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjf)).booleanValue() || (zzdrgVarZza2 = this.zzb.zza(zzbmaVar.zza)) == null || (zzbsdVar = zzdrgVarZza2.zzc) == null) ? "" : zzbsdVar.toString();
                String str = string;
                boolean z = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjg)).booleanValue() && (zzdrgVarZza = this.zzb.zza(zzbmaVar.zza)) != null && zzdrgVarZza.zzd;
                List list2 = this.zzd;
                String str2 = zzbmaVar.zza;
                list2.add(new zzdwh(str2, str, this.zzb.zzc(str2), zzbmaVar.zzb ? 1 : 0, zzbmaVar.zzd, zzbmaVar.zzc, z));
            }
            this.zze = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f A[Catch: all -> 0x003f, LOOP:0: B:13:0x0029->B:15:0x002f, LOOP_END, TryCatch #0 {, blocks: (B:4:0x0008, B:6:0x000c, B:8:0x0014, B:9:0x001e, B:10:0x0021, B:12:0x0023, B:13:0x0029, B:15:0x002f, B:16:0x003d), top: B:21:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final org.json.JSONArray zza() throws org.json.JSONException {
        /*
            r4 = this;
            org.json.JSONArray r0 = new org.json.JSONArray
            r0.<init>()
            java.lang.Object r1 = r4.zzc
            monitor-enter(r1)
            boolean r2 = r4.zze     // Catch: java.lang.Throwable -> L3f
            if (r2 != 0) goto L23
            com.google.android.gms.internal.ads.zzdvs r2 = r4.zza     // Catch: java.lang.Throwable -> L3f
            boolean r2 = r2.zzt()     // Catch: java.lang.Throwable -> L3f
            if (r2 == 0) goto L1e
            com.google.android.gms.internal.ads.zzdvs r2 = r4.zza     // Catch: java.lang.Throwable -> L3f
            java.util.List r2 = r2.zzg()     // Catch: java.lang.Throwable -> L3f
            r4.zzd(r2)     // Catch: java.lang.Throwable -> L3f
            goto L23
        L1e:
            r4.zzc()     // Catch: java.lang.Throwable -> L3f
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L3f
            goto L3e
        L23:
            java.util.List r2 = r4.zzd     // Catch: java.lang.Throwable -> L3f
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L3f
        L29:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L3f
            if (r3 == 0) goto L3d
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L3f
            com.google.android.gms.internal.ads.zzdwh r3 = (com.google.android.gms.internal.ads.zzdwh) r3     // Catch: java.lang.Throwable -> L3f
            org.json.JSONObject r3 = r3.zza()     // Catch: java.lang.Throwable -> L3f
            r0.put(r3)     // Catch: java.lang.Throwable -> L3f
            goto L29
        L3d:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L3f
        L3e:
            return r0
        L3f:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L3f
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdwi.zza():org.json.JSONArray");
    }

    public final void zzc() {
        this.zza.zzs(new zzdwg(this));
    }
}
