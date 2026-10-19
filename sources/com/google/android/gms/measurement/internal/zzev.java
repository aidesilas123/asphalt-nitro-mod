package com.google.android.gms.measurement.internal;

import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import com.mbridge.msdk.MBridgeConstans;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzev implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Object zzc;
    final /* synthetic */ Object zzd;
    final /* synthetic */ Object zze;
    final /* synthetic */ zzey zzf;

    zzev(zzey zzeyVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.zzf = zzeyVar;
        this.zza = i;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zze = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfn zzfnVarZzm = this.zzf.zzs.zzm();
        if (!zzfnVarZzm.zzx()) {
            Log.println(6, this.zzf.zzq(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        zzey zzeyVar = this.zzf;
        if (zzeyVar.zza == 0) {
            if (zzeyVar.zzs.zzf().zzy()) {
                zzey zzeyVar2 = this.zzf;
                zzeyVar2.zzs.zzax();
                zzeyVar2.zza = 'C';
            } else {
                zzey zzeyVar3 = this.zzf;
                zzeyVar3.zzs.zzax();
                zzeyVar3.zza = 'c';
            }
        }
        zzey zzeyVar4 = this.zzf;
        if (zzeyVar4.zzb < 0) {
            zzeyVar4.zzs.zzf().zzh();
            zzeyVar4.zzb = 61000L;
        }
        char cCharAt = "01VDIWEA?".charAt(this.zza);
        zzey zzeyVar5 = this.zzf;
        String strSubstring = MBridgeConstans.API_REUQEST_CATEGORY_APP + cCharAt + zzeyVar5.zza + zzeyVar5.zzb + CertificateUtil.DELIMITER + zzey.zzo(true, this.zzb, this.zzc, this.zzd, this.zze);
        if (strSubstring.length() > 1024) {
            strSubstring = this.zzb.substring(0, 1024);
        }
        zzfl zzflVar = zzfnVarZzm.zzb;
        if (zzflVar != null) {
            zzflVar.zzb(strSubstring, 1L);
        }
    }
}
