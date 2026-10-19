package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzega {
    private final String zzc;
    private zzfdy zzd = null;
    private zzfdu zze = null;
    private com.google.android.gms.ads.internal.client.zzu zzf = null;
    private final Map zzb = Collections.synchronizedMap(new HashMap());
    private final List zza = Collections.synchronizedList(new ArrayList());

    public zzega(String str) {
        this.zzc = str;
    }

    private static String zzj(zzfdu zzfduVar) {
        return ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdq)).booleanValue() ? zzfduVar.zzaq : zzfduVar.zzx;
    }

    private final synchronized void zzk(zzfdu zzfduVar, int i) {
        String str;
        String str2;
        String str3;
        String str4;
        Map map = this.zzb;
        String strZzj = zzj(zzfduVar);
        if (map.containsKey(strZzj)) {
            return;
        }
        Bundle bundle = new Bundle();
        Iterator<String> itKeys = zzfduVar.zzw.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                bundle.putString(next, zzfduVar.zzw.getString(next));
            } catch (JSONException unused) {
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgN)).booleanValue()) {
            str = zzfduVar.zzG;
            str2 = zzfduVar.zzH;
            str3 = zzfduVar.zzI;
            str4 = zzfduVar.zzJ;
        } else {
            str = "";
            str2 = "";
            str3 = "";
            str4 = "";
        }
        com.google.android.gms.ads.internal.client.zzu zzuVar = new com.google.android.gms.ads.internal.client.zzu(zzfduVar.zzF, 0L, null, bundle, str, str2, str3, str4);
        try {
            this.zza.add(i, zzuVar);
        } catch (IndexOutOfBoundsException e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "AdapterResponseInfoCollector.addAdapterResponseInfoEntryAtLocation");
        }
        this.zzb.put(strZzj, zzuVar);
    }

    private final void zzl(zzfdu zzfduVar, long j, @Nullable com.google.android.gms.ads.internal.client.zze zzeVar, boolean z) {
        Map map = this.zzb;
        String strZzj = zzj(zzfduVar);
        if (map.containsKey(strZzj)) {
            if (this.zze == null) {
                this.zze = zzfduVar;
            }
            com.google.android.gms.ads.internal.client.zzu zzuVar = (com.google.android.gms.ads.internal.client.zzu) this.zzb.get(strZzj);
            zzuVar.zzb = j;
            zzuVar.zzc = zzeVar;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgO)).booleanValue() && z) {
                this.zzf = zzuVar;
            }
        }
    }

    @Nullable
    public final com.google.android.gms.ads.internal.client.zzu zza() {
        return this.zzf;
    }

    public final zzcya zzb() {
        return new zzcya(this.zze, "", this, this.zzd, this.zzc);
    }

    public final List zzc() {
        return this.zza;
    }

    public final void zzd(zzfdu zzfduVar) {
        zzk(zzfduVar, this.zza.size());
    }

    public final void zze(zzfdu zzfduVar) {
        int iIndexOf = this.zza.indexOf(this.zzb.get(zzj(zzfduVar)));
        if (iIndexOf < 0 || iIndexOf >= this.zzb.size()) {
            iIndexOf = this.zza.indexOf(this.zzf);
        }
        if (iIndexOf < 0 || iIndexOf >= this.zzb.size()) {
            return;
        }
        this.zzf = (com.google.android.gms.ads.internal.client.zzu) this.zza.get(iIndexOf);
        while (true) {
            iIndexOf++;
            if (iIndexOf >= this.zza.size()) {
                return;
            }
            com.google.android.gms.ads.internal.client.zzu zzuVar = (com.google.android.gms.ads.internal.client.zzu) this.zza.get(iIndexOf);
            zzuVar.zzb = 0L;
            zzuVar.zzc = null;
        }
    }

    public final void zzf(zzfdu zzfduVar, long j, @Nullable com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzl(zzfduVar, j, zzeVar, false);
    }

    public final void zzg(zzfdu zzfduVar, long j, @Nullable com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzl(zzfduVar, j, null, true);
    }

    public final synchronized void zzh(String str, List list) {
        if (this.zzb.containsKey(str)) {
            int iIndexOf = this.zza.indexOf((com.google.android.gms.ads.internal.client.zzu) this.zzb.get(str));
            try {
                this.zza.remove(iIndexOf);
            } catch (IndexOutOfBoundsException e2) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "AdapterResponseInfoCollector.replaceAdapterResponseInfoEntry");
            }
            this.zzb.remove(str);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzk((zzfdu) it.next(), iIndexOf);
                iIndexOf++;
            }
        }
    }

    public final void zzi(zzfdy zzfdyVar) {
        this.zzd = zzfdyVar;
    }
}
