package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzecn implements zzfhx {
    private static final Pattern zza = Pattern.compile("([^;]+=[^;]+)(;\\s|$)", 2);
    private final String zzb;
    private final zzfjw zzc;
    private final zzfkh zzd;

    public zzecn(String str, zzfkh zzfkhVar, zzfjw zzfjwVar) {
        this.zzb = str;
        this.zzd = zzfkhVar;
        this.zzc = zzfjwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfhx
    public final /* bridge */ /* synthetic */ Object zza(Object obj) throws Exception {
        zzdxn zzdxnVar;
        String strConcat;
        zzecm zzecmVar = (zzecm) obj;
        int iOptInt = zzecmVar.zza.optInt("http_timeout_millis", 60000);
        zzbwd zzbwdVar = zzecmVar.zzb;
        String strJoin = "";
        if (zzbwdVar.zza() != -2) {
            if (zzbwdVar.zza() == 1) {
                if (zzbwdVar.zzf() != null) {
                    strJoin = TextUtils.join(", ", zzbwdVar.zzf());
                    zzcbn.zzg(strJoin);
                }
                zzdxnVar = new zzdxn(2, "Error building request URL: ".concat(String.valueOf(strJoin)));
            } else {
                zzdxnVar = new zzdxn(1);
            }
            zzfkh zzfkhVar = this.zzd;
            zzfjw zzfjwVar = this.zzc;
            zzfjwVar.zzg(zzdxnVar);
            zzfjwVar.zzf(false);
            zzfkhVar.zza(zzfjwVar);
            throw zzdxnVar;
        }
        HashMap map = new HashMap();
        if (zzecmVar.zzb.zzh() && !TextUtils.isEmpty(this.zzb)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaN)).booleanValue()) {
                String str = this.zzb;
                if (TextUtils.isEmpty(str)) {
                    strConcat = "";
                } else {
                    Matcher matcher = zza.matcher(str);
                    strConcat = "";
                    while (matcher.find()) {
                        String strGroup = matcher.group(1);
                        if (strGroup != null) {
                            Locale locale = Locale.ROOT;
                            if (strGroup.toLowerCase(locale).startsWith("id=") || strGroup.toLowerCase(locale).startsWith("ide=")) {
                                if (!TextUtils.isEmpty(strConcat)) {
                                    strConcat = strConcat.concat("; ");
                                }
                                strConcat = strConcat.concat(strGroup);
                            }
                        }
                    }
                }
                if (!TextUtils.isEmpty(strConcat)) {
                    map.put("Cookie", strConcat);
                }
            } else {
                map.put("Cookie", this.zzb);
            }
        }
        if (zzecmVar.zzb.zzi()) {
            zzeco.zza(map, zzecmVar.zza);
        }
        if (zzecmVar.zzb != null && !TextUtils.isEmpty(zzecmVar.zzb.zzd())) {
            strJoin = zzecmVar.zzb.zzd();
        }
        zzfkh zzfkhVar2 = this.zzd;
        zzfjw zzfjwVar2 = this.zzc;
        zzfjwVar2.zzf(true);
        zzfkhVar2.zza(zzfjwVar2);
        return new zzeci(zzecmVar.zzb.zze(), iOptInt, map, strJoin.getBytes(zzftl.zzc), "", zzecmVar.zzb.zzi());
    }
}
