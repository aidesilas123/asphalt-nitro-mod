package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.common.util.concurrent.h0;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbkc {
    public static final zzbkd zza = new zzbkd() { // from class: com.google.android.gms.internal.ads.zzbja
        @Override // com.google.android.gms.internal.ads.zzbkd
        public final void zza(Object obj, Map map) {
            zzchw zzchwVar = (zzchw) obj;
            zzbkd zzbkdVar = zzbkc.zza;
            String str = (String) map.get("urls");
            if (TextUtils.isEmpty(str)) {
                zzcbn.zzj("URLs missing in canOpenURLs GMSG.");
                return;
            }
            String[] strArrSplit = str.split(",");
            HashMap map2 = new HashMap();
            PackageManager packageManager = zzchwVar.getContext().getPackageManager();
            for (String str2 : strArrSplit) {
                String[] strArrSplit2 = str2.split(";", 2);
                boolean z = true;
                if (packageManager.resolveActivity(new Intent(strArrSplit2.length > 1 ? strArrSplit2[1].trim() : "android.intent.action.VIEW", Uri.parse(strArrSplit2[0].trim())), 65536) == null) {
                    z = false;
                }
                Boolean boolValueOf = Boolean.valueOf(z);
                map2.put(str2, boolValueOf);
                com.google.android.gms.ads.internal.util.zze.zza("/canOpenURLs;" + str2 + ";" + boolValueOf);
            }
            ((zzbmx) zzchwVar).zzd("openableURLs", map2);
        }
    };
    public static final zzbkd zzb = new zzbkd() { // from class: com.google.android.gms.internal.ads.zzbjc
        @Override // com.google.android.gms.internal.ads.zzbkd
        public final void zza(Object obj, Map map) {
            zzchw zzchwVar = (zzchw) obj;
            zzbkd zzbkdVar = zzbkc.zza;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzic)).booleanValue()) {
                zzcbn.zzj("canOpenAppGmsgHandler disabled.");
                return;
            }
            String str = (String) map.get("package_name");
            if (TextUtils.isEmpty(str)) {
                zzcbn.zzj("Package name missing in canOpenApp GMSG.");
                return;
            }
            HashMap map2 = new HashMap();
            Boolean boolValueOf = Boolean.valueOf(zzchwVar.getContext().getPackageManager().getLaunchIntentForPackage(str) != null);
            map2.put(str, boolValueOf);
            com.google.android.gms.ads.internal.util.zze.zza("/canOpenApp;" + str + ";" + boolValueOf);
            ((zzbmx) zzchwVar).zzd("openableApp", map2);
        }
    };
    public static final zzbkd zzc = new zzbkd() { // from class: com.google.android.gms.internal.ads.zzbjf
        @Override // com.google.android.gms.internal.ads.zzbkd
        public final void zza(Object obj, Map map) {
            zzbkc.zzb((zzchw) obj, map);
        }
    };
    public static final zzbkd zzd = new zzbju();
    public static final zzbkd zze = new zzbjv();
    public static final zzbkd zzf = new zzbkd() { // from class: com.google.android.gms.internal.ads.zzbjg
        @Override // com.google.android.gms.internal.ads.zzbkd
        public final void zza(Object obj, Map map) {
            zzchw zzchwVar = (zzchw) obj;
            zzbkd zzbkdVar = zzbkc.zza;
            String str = (String) map.get("u");
            if (str == null) {
                zzcbn.zzj("URL missing from httpTrack GMSG.");
            } else {
                new com.google.android.gms.ads.internal.util.zzca(zzchwVar.getContext(), ((zzcie) zzchwVar).zzn().zza, str).zzb();
            }
        }
    };
    public static final zzbkd zzg = new zzbjw();
    public static final zzbkd zzh = new zzbjx();
    public static final zzbkd zzi = new zzbkd() { // from class: com.google.android.gms.internal.ads.zzbje
        @Override // com.google.android.gms.internal.ads.zzbkd
        public final void zza(Object obj, Map map) {
            zzcid zzcidVar = (zzcid) obj;
            zzbkd zzbkdVar = zzbkc.zza;
            String str = (String) map.get("tx");
            String str2 = (String) map.get("ty");
            String str3 = (String) map.get("td");
            try {
                int i = Integer.parseInt(str);
                int i2 = Integer.parseInt(str2);
                int i3 = Integer.parseInt(str3);
                zzasi zzasiVarZzI = zzcidVar.zzI();
                if (zzasiVarZzI != null) {
                    zzasiVarZzI.zzc().zzl(i, i2, i3);
                }
            } catch (NumberFormatException unused) {
                zzcbn.zzj("Could not parse touch parameters from gmsg.");
            }
        }
    };
    public static final zzbkd zzj = new zzbjy();
    public static final zzbkd zzk = new zzbjz();
    public static final zzbkd zzl = new zzcev();
    public static final zzbkd zzm = new zzcew();
    public static final zzbkd zzn = new zzbiw();
    public static final zzbks zzo = new zzbks();
    public static final zzbkd zzp = new zzbka();
    public static final zzbkd zzq = new zzbkb();
    public static final zzbkd zzr = new zzbjh();
    public static final zzbkd zzs = new zzbji();
    public static final zzbkd zzt = new zzbjj();
    public static final zzbkd zzu = new zzbjk();
    public static final zzbkd zzv = new zzbjl();
    public static final zzbkd zzw = new zzbjm();
    public static final zzbkd zzx = new zzbjn();
    public static final zzbkd zzy = new zzbjo();
    public static final zzbkd zzz = new zzbjp();
    public static final zzbkd zzA = new zzbjq();
    public static final zzbkd zzB = new zzbjs();
    public static final zzbkd zzC = new zzbjt();

    public static h0 zza(zzcgv zzcgvVar, String str) {
        Uri uriZza = Uri.parse(str);
        try {
            zzasi zzasiVarZzI = zzcgvVar.zzI();
            if (zzasiVarZzI != null && zzasiVarZzI.zzf(uriZza)) {
                uriZza = zzasiVarZzI.zza(uriZza, zzcgvVar.getContext(), zzcgvVar.zzF(), zzcgvVar.zzi());
            }
        } catch (zzasj unused) {
            zzcbn.zzj("Unable to append parameter to URL: ".concat(str));
        }
        final String strZzb = zzbzu.zzb(uriZza, zzcgvVar.getContext());
        long jLongValue = ((Long) zzbeu.zze.zze()).longValue();
        if (jLongValue <= 0 || jLongValue > 234310600) {
            return zzgbb.zzh(strZzb);
        }
        zzgas zzgasVarZzu = zzgas.zzu(zzcgvVar.zzR());
        zzbix zzbixVar = new zzftn() { // from class: com.google.android.gms.internal.ads.zzbix
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                zzbkd zzbkdVar = zzbkc.zza;
                if (!((Boolean) zzbeu.zzk.zze()).booleanValue()) {
                    return "failure_click_attok";
                }
                com.google.android.gms.ads.internal.zzt.zzo().zzw(th, "prepareClickUrl.attestation1");
                return "failure_click_attok";
            }
        };
        zzgbl zzgblVar = zzcca.zzf;
        return zzgbb.zze(zzgbb.zzm(zzgbb.zze(zzgasVarZzu, Throwable.class, zzbixVar, zzgblVar), new zzftn() { // from class: com.google.android.gms.internal.ads.zzbiy
            /* JADX WARN: Removed duplicated region for block: B:16:0x004f  */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
            @Override // com.google.android.gms.internal.ads.zzftn
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object apply(java.lang.Object r6) {
                /*
                    r5 = this;
                    java.lang.String r6 = (java.lang.String) r6
                    com.google.android.gms.internal.ads.zzbkd r0 = com.google.android.gms.internal.ads.zzbkc.zza
                    java.lang.String r0 = r1
                    if (r6 != 0) goto L9
                    goto L74
                L9:
                    com.google.android.gms.internal.ads.zzbeh r1 = com.google.android.gms.internal.ads.zzbeu.zzf
                    java.lang.Object r1 = r1.zze()
                    java.lang.Boolean r1 = (java.lang.Boolean) r1
                    boolean r1 = r1.booleanValue()
                    if (r1 != 0) goto L18
                    goto L39
                L18:
                    java.lang.String r1 = ".doubleclick.net"
                    java.lang.String r2 = ".googleadservices.com"
                    java.lang.String r3 = ".googlesyndication.com"
                    java.lang.String[] r1 = new java.lang.String[]{r1, r2, r3}
                    android.net.Uri r2 = android.net.Uri.parse(r0)
                    java.lang.String r2 = r2.getHost()
                    r3 = 0
                L2b:
                    r4 = 3
                    if (r3 >= r4) goto L74
                    r4 = r1[r3]
                    boolean r4 = r2.endsWith(r4)
                    if (r4 != 0) goto L39
                    int r3 = r3 + 1
                    goto L2b
                L39:
                    com.google.android.gms.internal.ads.zzbeh r1 = com.google.android.gms.internal.ads.zzbeu.zza
                    java.lang.Object r1 = r1.zze()
                    java.lang.String r1 = (java.lang.String) r1
                    com.google.android.gms.internal.ads.zzbeh r2 = com.google.android.gms.internal.ads.zzbeu.zzb
                    java.lang.Object r2 = r2.zze()
                    java.lang.String r2 = (java.lang.String) r2
                    boolean r3 = android.text.TextUtils.isEmpty(r1)
                    if (r3 != 0) goto L53
                    java.lang.String r0 = r0.replace(r1, r6)
                L53:
                    boolean r1 = android.text.TextUtils.isEmpty(r2)
                    if (r1 != 0) goto L74
                    android.net.Uri r1 = android.net.Uri.parse(r0)
                    java.lang.String r3 = r1.getQueryParameter(r2)
                    boolean r3 = android.text.TextUtils.isEmpty(r3)
                    if (r3 == 0) goto L74
                    android.net.Uri$Builder r0 = r1.buildUpon()
                    android.net.Uri$Builder r6 = r0.appendQueryParameter(r2, r6)
                    java.lang.String r6 = r6.toString()
                    return r6
                L74:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbiy.apply(java.lang.Object):java.lang.Object");
            }
        }, zzgblVar), Throwable.class, new zzftn() { // from class: com.google.android.gms.internal.ads.zzbiz
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                zzbkd zzbkdVar = zzbkc.zza;
                if (((Boolean) zzbeu.zzk.zze()).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(th, "prepareClickUrl.attestation2");
                }
                return strZzb;
            }
        }, zzgblVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ void zzb(com.google.android.gms.internal.ads.zzchw r16, java.util.Map r17) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbkc.zzb(com.google.android.gms.internal.ads.zzchw, java.util.Map):void");
    }

    public static void zzc(Map map, zzdge zzdgeVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzka)).booleanValue() && map.containsKey("sc") && ((String) map.get("sc")).equals("1") && zzdgeVar != null) {
            zzdgeVar.zzbL();
        }
    }
}
