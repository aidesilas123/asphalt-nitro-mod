package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfpg implements zzfnw {
    private final Object zza;
    private final zzfph zzb;
    private final zzfps zzc;
    private final zzfnt zzd;

    zzfpg(@NonNull Object obj, @NonNull zzfph zzfphVar, @NonNull zzfps zzfpsVar, @NonNull zzfnt zzfntVar) {
        this.zza = obj;
        this.zzb = zzfphVar;
        this.zzc = zzfpsVar;
        this.zzd = zzfntVar;
    }

    @Nullable
    private static String zzi(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        zzaqp zzaqpVarZza = zzaqq.zza();
        zzaqpVarZza.zzc(5);
        zzaqpVarZza.zza(zzgve.zzv(bArr, 0, bArr.length));
        return Base64.encodeToString(((zzaqq) zzaqpVarZza.zzal()).zzax(), 11);
    }

    @Nullable
    private final synchronized byte[] zzj(Map map, Map map2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
        } catch (Exception e2) {
            this.zzd.zzc(2007, System.currentTimeMillis() - jCurrentTimeMillis, e2);
            return null;
        }
        return (byte[]) this.zza.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.zza, null, map2);
    }

    @Override // com.google.android.gms.internal.ads.zzfnw
    @Nullable
    public final synchronized String zza(Context context, String str, String str2, View view, Activity activity) {
        Map mapZza;
        mapZza = this.zzc.zza();
        mapZza.put(InneractiveMediationDefs.GENDER_FEMALE, "c");
        mapZza.put("ctx", context);
        mapZza.put("cs", str2);
        mapZza.put("aid", null);
        mapZza.put("view", view);
        mapZza.put("act", activity);
        return zzi(zzj(null, mapZza));
    }

    @Override // com.google.android.gms.internal.ads.zzfnw
    @Nullable
    public final synchronized String zzb(Context context, String str, View view, Activity activity) {
        Map mapZzc;
        mapZzc = this.zzc.zzc();
        mapZzc.put(InneractiveMediationDefs.GENDER_FEMALE, "v");
        mapZzc.put("ctx", context);
        mapZzc.put("aid", null);
        mapZzc.put("view", view);
        mapZzc.put("act", activity);
        return zzi(zzj(null, mapZzc));
    }

    @Override // com.google.android.gms.internal.ads.zzfnw
    @Nullable
    public final synchronized String zzc(Context context, String str) {
        Map mapZzb;
        mapZzb = this.zzc.zzb();
        mapZzb.put(InneractiveMediationDefs.GENDER_FEMALE, CampaignEx.JSON_KEY_AD_Q);
        mapZzb.put("ctx", context);
        mapZzb.put("aid", null);
        return zzi(zzj(null, mapZzb));
    }

    @Override // com.google.android.gms.internal.ads.zzfnw
    public final synchronized void zzd(String str, MotionEvent motionEvent) throws zzfpq {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            HashMap map = new HashMap();
            map.put("t", new Throwable());
            map.put("aid", null);
            map.put("evt", motionEvent);
            this.zza.getClass().getDeclaredMethod("he", Map.class).invoke(this.zza, map);
            this.zzd.zzd(3003, System.currentTimeMillis() - jCurrentTimeMillis);
        } catch (Exception e2) {
            throw new zzfpq(2005, e2);
        }
    }

    public final synchronized int zze() throws zzfpq {
        try {
        } catch (Exception e2) {
            throw new zzfpq(2006, e2);
        }
        return ((Integer) this.zza.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.zza, new Object[0])).intValue();
    }

    final zzfph zzf() {
        return this.zzb;
    }

    public final synchronized void zzg() throws zzfpq {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.zza.getClass().getDeclaredMethod("close", new Class[0]).invoke(this.zza, new Object[0]);
            this.zzd.zzd(3001, System.currentTimeMillis() - jCurrentTimeMillis);
        } catch (Exception e2) {
            throw new zzfpq(2003, e2);
        }
    }

    final synchronized boolean zzh() throws zzfpq {
        try {
        } catch (Exception e2) {
            throw new zzfpq(2001, e2);
        }
        return ((Boolean) this.zza.getClass().getDeclaredMethod(o2.a.f6463e, new Class[0]).invoke(this.zza, new Object[0])).booleanValue();
    }
}
