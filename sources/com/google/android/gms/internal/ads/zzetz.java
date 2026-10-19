package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.h0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzetz implements zzeuy {
    final String zza;
    private final zzgbl zzb;
    private final ScheduledExecutorService zzc;
    private final zzemi zzd;
    private final Context zze;
    private final zzfeq zzf;
    private final zzeme zzg;
    private final zzdrk zzh;
    private final zzdvu zzi;

    zzetz(zzgbl zzgblVar, ScheduledExecutorService scheduledExecutorService, String str, zzemi zzemiVar, Context context, zzfeq zzfeqVar, zzeme zzemeVar, zzdrk zzdrkVar, zzdvu zzdvuVar) {
        this.zzb = zzgblVar;
        this.zzc = scheduledExecutorService;
        this.zza = str;
        this.zzd = zzemiVar;
        this.zze = context;
        this.zzf = zzfeqVar;
        this.zzg = zzemeVar;
        this.zzh = zzdrkVar;
        this.zzi = zzdvuVar;
    }

    public static /* synthetic */ h0 zzc(zzetz zzetzVar) {
        String lowerCase = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzke)).booleanValue() ? zzetzVar.zzf.zzf.toLowerCase(Locale.ROOT) : zzetzVar.zzf.zzf;
        final Bundle bundleZzg = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbB)).booleanValue() ? zzetzVar.zzi.zzg() : new Bundle();
        final ArrayList arrayList = new ArrayList();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbK)).booleanValue()) {
            zzetzVar.zzi(arrayList, zzetzVar.zzd.zza(zzetzVar.zza, lowerCase));
        } else {
            for (Map.Entry entry : ((zzfwx) zzetzVar.zzd.zzb(zzetzVar.zza, lowerCase)).entrySet()) {
                String str = (String) entry.getKey();
                arrayList.add(zzetzVar.zzg(str, (List) entry.getValue(), zzetzVar.zzf(str), true, true));
            }
            zzetzVar.zzi(arrayList, zzetzVar.zzd.zzc());
        }
        return zzgbb.zzb(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzetu
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                JSONArray jSONArray = new JSONArray();
                for (h0 h0Var : arrayList) {
                    if (((JSONObject) h0Var.get()) != null) {
                        jSONArray.put(h0Var.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new zzeua(jSONArray.toString(), bundleZzg);
            }
        }, zzetzVar.zzb);
    }

    @Nullable
    private final Bundle zzf(String str) {
        Bundle bundle = this.zzf.zzd.zzm;
        if (bundle != null) {
            return bundle.getBundle(str);
        }
        return null;
    }

    private final zzgas zzg(final String str, final List list, final Bundle bundle, final boolean z, final boolean z2) {
        zzgas zzgasVarZzu = zzgas.zzu(zzgbb.zzk(new zzgah() { // from class: com.google.android.gms.internal.ads.zzetw
            @Override // com.google.android.gms.internal.ads.zzgah
            public final h0 zza() {
                return this.zza.zzd(str, list, bundle, z, z2);
            }
        }, this.zzb));
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbx)).booleanValue()) {
            zzgasVarZzu = (zzgas) zzgbb.zzo(zzgasVarZzu, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbq)).longValue(), TimeUnit.MILLISECONDS, this.zzc);
        }
        return (zzgas) zzgbb.zze(zzgasVarZzu, Throwable.class, new zzftn() { // from class: com.google.android.gms.internal.ads.zzetx
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                zzcbn.zzg("Error calling adapter: ".concat(String.valueOf(str)));
                return null;
            }
        }, this.zzb);
    }

    private final void zzh(zzbrp zzbrpVar, Bundle bundle, @NonNull List list, zzeml zzemlVar) throws RemoteException {
        zzbrpVar.zzh(ObjectWrapper.wrap(this.zze), this.zza, bundle, (Bundle) list.get(0), this.zzf.zze, zzemlVar);
    }

    private final void zzi(List list, Map map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            zzemm zzemmVar = (zzemm) ((Map.Entry) it.next()).getValue();
            String str = zzemmVar.zza;
            list.add(zzg(str, Collections.singletonList(zzemmVar.zze), zzf(str), zzemmVar.zzb, zzemmVar.zzc));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 32;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        zzfeq zzfeqVar = this.zzf;
        if (zzfeqVar.zzq) {
            if (!Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbD)).split(",")).contains(com.google.android.gms.ads.nonagon.signalgeneration.zzf.zza(com.google.android.gms.ads.nonagon.signalgeneration.zzf.zzb(zzfeqVar.zzd)))) {
                return zzgbb.zzh(new zzeua(new JSONArray().toString(), new Bundle()));
            }
        }
        return zzgbb.zzk(new zzgah() { // from class: com.google.android.gms.internal.ads.zzett
            @Override // com.google.android.gms.internal.ads.zzgah
            public final h0 zza() {
                return zzetz.zzc(this.zza);
            }
        }, this.zzb);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final /* synthetic */ com.google.common.util.concurrent.h0 zzd(java.lang.String r9, final java.util.List r10, final android.os.Bundle r11, boolean r12, boolean r13) throws java.lang.Exception {
        /*
            r8 = this;
            com.google.android.gms.internal.ads.zzccf r7 = new com.google.android.gms.internal.ads.zzccf
            r7.<init>()
            r0 = 0
            if (r13 == 0) goto L26
            com.google.android.gms.internal.ads.zzbcu r13 = com.google.android.gms.internal.ads.zzbdc.zzbC
            com.google.android.gms.internal.ads.zzbda r1 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r13 = r1.zza(r13)
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            if (r13 != 0) goto L26
            com.google.android.gms.internal.ads.zzeme r13 = r8.zzg
            r13.zzb(r9)
            com.google.android.gms.internal.ads.zzeme r13 = r8.zzg
            com.google.android.gms.internal.ads.zzbrp r13 = r13.zza(r9)
            goto L34
        L26:
            com.google.android.gms.internal.ads.zzdrk r13 = r8.zzh     // Catch: android.os.RemoteException -> L2d
            com.google.android.gms.internal.ads.zzbrp r13 = r13.zzb(r9)     // Catch: android.os.RemoteException -> L2d
            goto L34
        L2d:
            r13 = move-exception
            java.lang.String r1 = "Couldn't create RTB adapter : "
            com.google.android.gms.internal.ads.zzcbn.zzh(r1, r13)
            r13 = r0
        L34:
            if (r13 != 0) goto L4e
            com.google.android.gms.internal.ads.zzbcu r10 = com.google.android.gms.internal.ads.zzbdc.zzbs
            com.google.android.gms.internal.ads.zzbda r11 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r10 = r11.zza(r10)
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L4d
            com.google.android.gms.internal.ads.zzeml.zzb(r9, r7)
            goto Lba
        L4d:
            throw r0
        L4e:
            com.google.android.gms.internal.ads.zzeml r6 = new com.google.android.gms.internal.ads.zzeml
            com.google.android.gms.common.util.Clock r0 = com.google.android.gms.ads.internal.zzt.zzB()
            long r4 = r0.elapsedRealtime()
            r0 = r6
            r1 = r9
            r2 = r13
            r3 = r7
            r0.<init>(r1, r2, r3, r4)
            com.google.android.gms.internal.ads.zzbcu r9 = com.google.android.gms.internal.ads.zzbdc.zzbx
            com.google.android.gms.internal.ads.zzbda r0 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r9 = r0.zza(r9)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L8d
            java.util.concurrent.ScheduledExecutorService r9 = r8.zzc
            com.google.android.gms.internal.ads.zzety r0 = new com.google.android.gms.internal.ads.zzety
            r0.<init>()
            com.google.android.gms.internal.ads.zzbcu r1 = com.google.android.gms.internal.ads.zzbdc.zzbq
            com.google.android.gms.internal.ads.zzbda r2 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r1 = r2.zza(r1)
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS
            r9.schedule(r0, r1, r3)
        L8d:
            if (r12 == 0) goto Lb7
            com.google.android.gms.internal.ads.zzbcu r9 = com.google.android.gms.internal.ads.zzbdc.zzbE
            com.google.android.gms.internal.ads.zzbda r12 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r9 = r12.zza(r9)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto Lb3
            com.google.android.gms.internal.ads.zzgbl r9 = r8.zzb
            com.google.android.gms.internal.ads.zzetv r12 = new com.google.android.gms.internal.ads.zzetv
            r0 = r12
            r1 = r8
            r2 = r13
            r3 = r11
            r4 = r10
            r5 = r6
            r6 = r7
            r0.<init>()
            r9.zza(r12)
            goto Lba
        Lb3:
            r8.zzh(r13, r11, r10, r6)
            goto Lba
        Lb7:
            r6.zzd()
        Lba:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzetz.zzd(java.lang.String, java.util.List, android.os.Bundle, boolean, boolean):com.google.common.util.concurrent.h0");
    }

    final /* synthetic */ void zze(zzbrp zzbrpVar, Bundle bundle, List list, zzeml zzemlVar, zzccf zzccfVar) {
        try {
            zzh(zzbrpVar, bundle, list, zzemlVar);
        } catch (RemoteException e2) {
            zzccfVar.zzd(e2);
        }
    }
}
