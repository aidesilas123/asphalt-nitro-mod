package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public final class zzbdu {
    private final List zza = new LinkedList();
    private final Map zzb;
    private final Object zzc;

    public zzbdu(boolean z, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzb = linkedHashMap;
        this.zzc = new Object();
        linkedHashMap.put("action", "make_wv");
        linkedHashMap.put("ad_format", str2);
    }

    public static final zzbdr zzf() {
        return new zzbdr(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime(), null, null);
    }

    public final zzbdt zza() {
        zzbdt zzbdtVar;
        boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbO)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap map = new HashMap();
        synchronized (this.zzc) {
            for (zzbdr zzbdrVar : this.zza) {
                long jZza = zzbdrVar.zza();
                String strZzc = zzbdrVar.zzc();
                zzbdr zzbdrVarZzb = zzbdrVar.zzb();
                if (zzbdrVarZzb != null && jZza > 0) {
                    long jZza2 = jZza - zzbdrVarZzb.zza();
                    sb.append(strZzc);
                    sb.append('.');
                    sb.append(jZza2);
                    sb.append(',');
                    if (zBooleanValue) {
                        if (map.containsKey(Long.valueOf(zzbdrVarZzb.zza()))) {
                            StringBuilder sb2 = (StringBuilder) map.get(Long.valueOf(zzbdrVarZzb.zza()));
                            sb2.append('+');
                            sb2.append(strZzc);
                        } else {
                            map.put(Long.valueOf(zzbdrVarZzb.zza()), new StringBuilder(strZzc));
                        }
                    }
                }
            }
            this.zza.clear();
            String string = null;
            if (!TextUtils.isEmpty(null)) {
                sb.append((String) null);
            } else if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            StringBuilder sb3 = new StringBuilder();
            if (zBooleanValue) {
                for (Map.Entry entry : map.entrySet()) {
                    sb3.append((CharSequence) entry.getValue());
                    sb3.append('.');
                    sb3.append(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() + (((Long) entry.getKey()).longValue() - com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime()));
                    sb3.append(',');
                }
                if (sb3.length() > 0) {
                    sb3.setLength(sb3.length() - 1);
                }
                string = sb3.toString();
            }
            zzbdtVar = new zzbdt(sb.toString(), string);
        }
        return zzbdtVar;
    }

    @VisibleForTesting
    public final Map zzb() {
        Map map;
        synchronized (this.zzc) {
            com.google.android.gms.ads.internal.zzt.zzo().zzg();
            map = this.zzb;
        }
        return map;
    }

    public final void zzc(@Nullable zzbdu zzbduVar) {
        synchronized (this.zzc) {
        }
    }

    public final void zzd(String str, String str2) {
        zzbdk zzbdkVarZzg;
        if (TextUtils.isEmpty(str2) || (zzbdkVarZzg = com.google.android.gms.ads.internal.zzt.zzo().zzg()) == null) {
            return;
        }
        synchronized (this.zzc) {
            zzbdq zzbdqVarZza = zzbdkVarZzg.zza(str);
            Map map = this.zzb;
            map.put(str, zzbdqVarZza.zza((String) map.get(str), str2));
        }
    }

    public final boolean zze(zzbdr zzbdrVar, long j, String... strArr) {
        synchronized (this.zzc) {
            for (int i = 0; i <= 0; i++) {
                this.zza.add(new zzbdr(j, strArr[i], zzbdrVar));
            }
        }
        return true;
    }
}
