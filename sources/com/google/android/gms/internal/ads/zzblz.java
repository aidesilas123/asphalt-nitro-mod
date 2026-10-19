package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzblz implements zzamt {
    private volatile zzblm zza;
    private final Context zzb;

    public zzblz(Context context) {
        this.zzb = context;
    }

    static /* bridge */ /* synthetic */ void zzc(zzblz zzblzVar) {
        if (zzblzVar.zza == null) {
            return;
        }
        zzblzVar.zza.disconnect();
        Binder.flushPendingCommands();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzamt
    @Nullable
    public final zzamw zza(zzana zzanaVar) throws zzanj {
        Parcelable.Creator<zzbln> creator = zzbln.CREATOR;
        Map mapZzl = zzanaVar.zzl();
        int size = mapZzl.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        int i2 = 0;
        for (Map.Entry entry : mapZzl.entrySet()) {
            strArr[i2] = (String) entry.getKey();
            strArr2[i2] = (String) entry.getValue();
            i2++;
        }
        zzbln zzblnVar = new zzbln(zzanaVar.zzk(), strArr, strArr2);
        long jElapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
        try {
            zzccf zzccfVar = new zzccf();
            this.zza = new zzblm(this.zzb, com.google.android.gms.ads.internal.zzt.zzt().zzb(), new zzblx(this, zzccfVar), new zzbly(this, zzccfVar));
            this.zza.checkAvailabilityAndConnect();
            zzblv zzblvVar = new zzblv(this, zzblnVar);
            zzgbl zzgblVar = zzcca.zza;
            h0 h0VarZzo = zzgbb.zzo(zzgbb.zzn(zzccfVar, zzblvVar, zzgblVar), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzeq)).intValue(), TimeUnit.MILLISECONDS, zzcca.zzd);
            h0VarZzo.addListener(new zzblw(this), zzgblVar);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) h0VarZzo.get();
            com.google.android.gms.ads.internal.util.zze.zza("Http assets remote cache took " + (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - jElapsedRealtime) + "ms");
            zzblp zzblpVar = (zzblp) new zzbvy(parcelFileDescriptor).zza(zzblp.CREATOR);
            if (zzblpVar == null) {
                return null;
            }
            if (zzblpVar.zza) {
                throw new zzanj(zzblpVar.zzb);
            }
            if (zzblpVar.zze.length != zzblpVar.zzf.length) {
                return null;
            }
            HashMap map = new HashMap();
            while (true) {
                String[] strArr3 = zzblpVar.zze;
                if (i >= strArr3.length) {
                    return new zzamw(zzblpVar.zzc, zzblpVar.zzd, map, zzblpVar.zzg, zzblpVar.zzh);
                }
                map.put(strArr3[i], zzblpVar.zzf[i]);
                i++;
            }
        } catch (InterruptedException | ExecutionException unused) {
            com.google.android.gms.ads.internal.util.zze.zza("Http assets remote cache took " + (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - jElapsedRealtime) + "ms");
            return null;
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.zze.zza("Http assets remote cache took " + (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - jElapsedRealtime) + "ms");
            throw th;
        }
    }
}
