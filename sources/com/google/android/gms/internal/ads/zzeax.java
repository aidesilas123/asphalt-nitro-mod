package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.google.common.util.concurrent.h0;
import com.json.b4;
import com.mbridge.msdk.foundation.download.Command;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeax {

    @VisibleForTesting
    public h0 zza;
    private final zzdba zzb;
    private final zzeaf zzc;
    private final zzfiu zzd;
    private final zzfeq zze;
    private final zzcbt zzf;
    private final zzfkk zzg;
    private final zzfkh zzh;
    private final Context zzi;
    private final zzgbl zzj;

    zzeax(zzdba zzdbaVar, zzeaf zzeafVar, zzfiu zzfiuVar, zzfeq zzfeqVar, zzcbt zzcbtVar, zzfkk zzfkkVar, zzfkh zzfkhVar, Context context, zzgbl zzgblVar) {
        this.zzb = zzdbaVar;
        this.zzc = zzeafVar;
        this.zzd = zzfiuVar;
        this.zze = zzfeqVar;
        this.zzf = zzcbtVar;
        this.zzg = zzfkkVar;
        this.zzh = zzfkhVar;
        this.zzi = context;
        this.zzj = zzgblVar;
    }

    final /* synthetic */ zzbvi zza(zzbwa zzbwaVar, zzeci zzeciVar) {
        zzeciVar.zzc.put(b4.I, zzeciVar.zze);
        zzeciVar.zzc.put(Command.HTTP_HEADER_USER_AGENT, com.google.android.gms.ads.internal.zzt.zzp().zzc(this.zzi, zzbwaVar.zzb.zza));
        Bundle bundle = new Bundle();
        for (Map.Entry entry : zzeciVar.zzc.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        return new zzbvi(zzeciVar.zza, zzeciVar.zzb, bundle, zzeciVar.zzd, zzeciVar.zzf, zzbwaVar.zzd, zzbwaVar.zzh);
    }

    public final h0 zzc(final zzbwa zzbwaVar, final JSONObject jSONObject, final zzbwd zzbwdVar) {
        this.zzb.zzbs(zzbwaVar);
        zzfil zzfilVarZzb = this.zzd.zzb(zzfio.PROXY, zzgbb.zzm(this.zzd.zzb(zzfio.PREPARE_HTTP_REQUEST, zzgbb.zzh(new zzecm(jSONObject, zzbwdVar))).zze(new zzecn(zzbwaVar.zzg, this.zzh, zzfjv.zza(this.zzi, 9))).zza(), new zzftn() { // from class: com.google.android.gms.internal.ads.zzeat
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                return this.zza.zza(zzbwaVar, (zzeci) obj);
            }
        }, this.zzj));
        final zzeaf zzeafVar = this.zzc;
        zzfhz zzfhzVarZza = zzfilVarZzb.zzf(new zzgai() { // from class: com.google.android.gms.internal.ads.zzeau
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzeafVar.zzc((zzbvi) obj);
            }
        }).zza();
        this.zza = zzfhzVarZza;
        h0 h0VarZzn = zzgbb.zzn(this.zzd.zzb(zzfio.PRE_PROCESS, zzfhzVarZza).zze(new zzfhx() { // from class: com.google.android.gms.internal.ads.zzeas
            @Override // com.google.android.gms.internal.ads.zzfhx
            public final Object zza(Object obj) {
                return new zzebv(zzecj.zza(new InputStreamReader((InputStream) obj)), jSONObject, zzbwdVar);
            }
        }).zzf(com.google.android.gms.ads.internal.zzt.zzf().zza(this.zzi, this.zzf, this.zzg).zza("google.afma.response.normalize", zzebv.zza, zzbor.zzb)).zza(), new zzgai() { // from class: com.google.android.gms.internal.ads.zzeav
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzd((InputStream) obj);
            }
        }, this.zzj);
        zzgbb.zzr(h0VarZzn, new zzeaw(this), this.zzj);
        return h0VarZzn;
    }

    final /* synthetic */ h0 zzd(InputStream inputStream) throws Exception {
        return zzgbb.zzh(new zzfeh(new zzfee(this.zze), zzfeg.zza(new InputStreamReader(inputStream))));
    }
}
