package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.common.util.concurrent.h0;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzecg extends zzbvp {
    private final Context zza;
    private final zzewm zzb;
    private final zzewk zzc;
    private final zzeco zzd;
    private final zzgbl zze;
    private final zzecl zzf;
    private final zzbwm zzg;

    zzecg(Context context, zzewm zzewmVar, zzewk zzewkVar, zzecl zzeclVar, zzeco zzecoVar, zzgbl zzgblVar, zzbwm zzbwmVar) {
        this.zza = context;
        this.zzb = zzewmVar;
        this.zzc = zzewkVar;
        this.zzf = zzeclVar;
        this.zzd = zzecoVar;
        this.zze = zzgblVar;
        this.zzg = zzbwmVar;
    }

    private final void zzc(h0 h0Var, zzbvt zzbvtVar) {
        zzgbb.zzr(zzgbb.zzn(zzgas.zzu(h0Var), new zzgai() { // from class: com.google.android.gms.internal.ads.zzecd
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzgbb.zzh(zzffq.zza((InputStream) obj));
            }
        }, zzcca.zza), new zzecf(this, zzbvtVar), zzcca.zzf);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.common.util.concurrent.h0 zzb(com.google.android.gms.internal.ads.zzbvi r9, int r10) {
        /*
            Method dump skipped, instruction units count: 207
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzecg.zzb(com.google.android.gms.internal.ads.zzbvi, int):com.google.common.util.concurrent.h0");
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zze(zzbvi zzbviVar, zzbvt zzbvtVar) {
        zzc(zzb(zzbviVar, Binder.getCallingUid()), zzbvtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zzf(zzbve zzbveVar, zzbvt zzbvtVar) {
        zzewb zzewbVar = new zzewb(zzbveVar, Binder.getCallingUid());
        zzewm zzewmVar = this.zzb;
        zzewmVar.zza(zzewbVar);
        final zzewn zzewnVarZzb = zzewmVar.zzb();
        zzfiu zzfiuVarZzb = zzewnVarZzb.zzb();
        zzfhz zzfhzVarZza = zzfiuVarZzb.zzb(zzfio.GMS_SIGNALS, zzgbb.zzi()).zzf(new zzgai() { // from class: com.google.android.gms.internal.ads.zzecc
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzewnVarZzb.zza().zza(new JSONObject());
            }
        }).zze(new zzfhx() { // from class: com.google.android.gms.internal.ads.zzecb
            @Override // com.google.android.gms.internal.ads.zzfhx
            public final Object zza(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                com.google.android.gms.ads.internal.util.zze.zza("GMS AdRequest Signals: ");
                com.google.android.gms.ads.internal.util.zze.zza(jSONObject.toString(2));
                return jSONObject;
            }
        }).zzf(new zzgai() { // from class: com.google.android.gms.internal.ads.zzeca
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzgbb.zzh(new ByteArrayInputStream(((JSONObject) obj).toString().getBytes(StandardCharsets.UTF_8)));
            }
        }).zza();
        zzc(zzfhzVarZza, zzbvtVar);
        if (((Boolean) zzbev.zzd.zze()).booleanValue()) {
            final zzeco zzecoVar = this.zzd;
            zzecoVar.getClass();
            zzfhzVarZza.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzece
                @Override // java.lang.Runnable
                public final void run() {
                    zzecoVar.zzb();
                }
            }, this.zze);
        }
    }
}
