package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.facebook.internal.AnalyticsEvents;
import com.json.mediationsdk.l;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.o2;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfdu {
    public final String zzA;
    public final zzbyl zzB;
    public final String zzC;
    public final JSONObject zzD;
    public final JSONObject zzE;
    public final String zzF;
    public final String zzG;
    public final String zzH;
    public final String zzI;
    public final String zzJ;
    public final boolean zzK;
    public final boolean zzL;
    public final boolean zzM;
    public final boolean zzN;
    public final boolean zzO;
    public final boolean zzP;
    public final boolean zzQ;
    public final int zzR;
    public final int zzS;
    public final boolean zzT;
    public final boolean zzU;
    public final String zzV;
    public final zzfet zzW;
    public final boolean zzX;
    public final boolean zzY;
    public final int zzZ;
    public final List zza;
    public final String zzaa;
    public final int zzab;
    public final String zzac;
    public final boolean zzad;
    public final zzbtv zzae;

    @Nullable
    public final com.google.android.gms.ads.internal.client.zzs zzaf;
    public final String zzag;
    public final boolean zzah;
    public final JSONObject zzai;
    public final boolean zzaj;
    public final JSONObject zzak;
    public final boolean zzal;

    @Nullable
    public final String zzam;
    public final boolean zzan;
    public final String zzao;
    public final String zzap;
    public final String zzaq;
    public final boolean zzar;
    public final int zzas;
    public final String zzat;
    public final List zzau;
    public final int zzb;
    public final List zzc;
    public final List zzd;
    public final List zze;
    public final int zzf;
    public final List zzg;
    public final List zzh;
    public final List zzi;
    public final List zzj;
    public final String zzk;
    public final String zzl;

    @Nullable
    public final zzbxc zzm;
    public final List zzn;
    public final List zzo;
    public final List zzp;
    public final List zzq;
    public final int zzr;
    public final List zzs;

    @Nullable
    public final zzfea zzt;
    public final List zzu;
    public final List zzv;
    public final JSONObject zzw;
    public final String zzx;
    public final String zzy;
    public final String zzz;

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:234:0x062d A[PHI: r22 r79
      0x062d: PHI (r22v80 java.util.List) = 
      (r22v5 java.util.List)
      (r22v6 java.util.List)
      (r22v7 java.util.List)
      (r22v8 java.util.List)
      (r22v9 java.util.List)
      (r22v10 java.util.List)
      (r22v11 java.util.List)
      (r22v12 java.util.List)
      (r22v13 java.util.List)
      (r22v14 java.util.List)
      (r22v15 java.util.List)
      (r22v16 java.util.List)
      (r22v17 java.util.List)
      (r22v18 java.util.List)
      (r22v19 java.util.List)
      (r22v20 java.util.List)
      (r22v21 java.util.List)
      (r22v22 java.util.List)
      (r22v23 java.util.List)
      (r22v24 java.util.List)
      (r22v25 java.util.List)
      (r22v26 java.util.List)
      (r22v27 java.util.List)
      (r22v28 java.util.List)
      (r22v29 java.util.List)
      (r22v30 java.util.List)
      (r22v31 java.util.List)
      (r22v32 java.util.List)
      (r22v33 java.util.List)
      (r22v34 java.util.List)
      (r22v35 java.util.List)
      (r22v36 java.util.List)
      (r22v37 java.util.List)
      (r22v38 java.util.List)
      (r22v39 java.util.List)
      (r22v40 java.util.List)
      (r22v41 java.util.List)
      (r22v42 java.util.List)
      (r22v43 java.util.List)
      (r22v44 java.util.List)
      (r22v45 java.util.List)
      (r22v46 java.util.List)
      (r22v47 java.util.List)
      (r22v48 java.util.List)
      (r22v49 java.util.List)
      (r22v50 java.util.List)
      (r22v51 java.util.List)
      (r22v52 java.util.List)
      (r22v53 java.util.List)
      (r22v54 java.util.List)
      (r22v55 java.util.List)
      (r22v56 java.util.List)
      (r22v57 java.util.List)
      (r22v58 java.util.List)
      (r22v59 java.util.List)
      (r22v60 java.util.List)
      (r22v61 java.util.List)
      (r22v62 java.util.List)
      (r22v63 java.util.List)
      (r22v64 java.util.List)
      (r22v65 java.util.List)
      (r22v66 java.util.List)
      (r22v67 java.util.List)
      (r22v68 java.util.List)
      (r22v69 java.util.List)
      (r22v70 java.util.List)
      (r22v71 java.util.List)
      (r22v72 java.util.List)
      (r22v73 java.util.List)
      (r22v74 java.util.List)
      (r22v75 java.util.List)
      (r22v76 java.util.List)
      (r22v77 java.util.List)
      (r22v78 java.util.List)
      (r22v81 java.util.List)
     binds: [B:232:0x0628, B:229:0x0617, B:226:0x0606, B:223:0x05f5, B:220:0x05e4, B:217:0x05d3, B:214:0x05c1, B:211:0x05af, B:208:0x059d, B:205:0x058b, B:202:0x0579, B:199:0x0567, B:196:0x0555, B:193:0x0543, B:190:0x0531, B:187:0x051f, B:184:0x050d, B:181:0x04fb, B:178:0x04e9, B:175:0x04d7, B:172:0x04c5, B:169:0x04b3, B:166:0x04a1, B:163:0x048f, B:160:0x047e, B:157:0x046c, B:154:0x045a, B:151:0x0448, B:148:0x0436, B:145:0x0424, B:142:0x0412, B:139:0x0400, B:136:0x03ef, B:133:0x03dd, B:130:0x03cb, B:127:0x03ba, B:124:0x03a8, B:121:0x0396, B:118:0x0384, B:115:0x0372, B:112:0x0360, B:109:0x034e, B:106:0x033c, B:103:0x032a, B:100:0x0318, B:97:0x0306, B:94:0x02f4, B:91:0x02e2, B:88:0x02d0, B:85:0x02be, B:82:0x02ac, B:79:0x029a, B:76:0x0289, B:73:0x0277, B:70:0x0265, B:67:0x0253, B:64:0x0241, B:61:0x022f, B:58:0x021e, B:55:0x020c, B:52:0x01fa, B:49:0x01e8, B:46:0x01d6, B:43:0x01c4, B:40:0x01b2, B:37:0x01a0, B:34:0x018f, B:31:0x017d, B:28:0x016c, B:25:0x015a, B:22:0x0149, B:19:0x0137, B:16:0x0125, B:13:0x0113, B:11:0x0101] A[DONT_GENERATE, DONT_INLINE]
      0x062d: PHI (r79v76 java.util.List) = 
      (r79v1 java.util.List)
      (r79v2 java.util.List)
      (r79v3 java.util.List)
      (r79v4 java.util.List)
      (r79v5 java.util.List)
      (r79v6 java.util.List)
      (r79v7 java.util.List)
      (r79v8 java.util.List)
      (r79v9 java.util.List)
      (r79v10 java.util.List)
      (r79v11 java.util.List)
      (r79v12 java.util.List)
      (r79v13 java.util.List)
      (r79v14 java.util.List)
      (r79v15 java.util.List)
      (r79v16 java.util.List)
      (r79v17 java.util.List)
      (r79v18 java.util.List)
      (r79v19 java.util.List)
      (r79v20 java.util.List)
      (r79v21 java.util.List)
      (r79v22 java.util.List)
      (r79v23 java.util.List)
      (r79v24 java.util.List)
      (r79v25 java.util.List)
      (r79v26 java.util.List)
      (r79v27 java.util.List)
      (r79v28 java.util.List)
      (r79v29 java.util.List)
      (r79v30 java.util.List)
      (r79v31 java.util.List)
      (r79v32 java.util.List)
      (r79v33 java.util.List)
      (r79v34 java.util.List)
      (r79v35 java.util.List)
      (r79v36 java.util.List)
      (r79v37 java.util.List)
      (r79v38 java.util.List)
      (r79v39 java.util.List)
      (r79v40 java.util.List)
      (r79v41 java.util.List)
      (r79v42 java.util.List)
      (r79v43 java.util.List)
      (r79v44 java.util.List)
      (r79v45 java.util.List)
      (r79v46 java.util.List)
      (r79v47 java.util.List)
      (r79v48 java.util.List)
      (r79v49 java.util.List)
      (r79v50 java.util.List)
      (r79v51 java.util.List)
      (r79v52 java.util.List)
      (r79v53 java.util.List)
      (r79v54 java.util.List)
      (r79v55 java.util.List)
      (r79v56 java.util.List)
      (r79v57 java.util.List)
      (r79v58 java.util.List)
      (r79v59 java.util.List)
      (r79v60 java.util.List)
      (r79v61 java.util.List)
      (r79v62 java.util.List)
      (r79v63 java.util.List)
      (r79v64 java.util.List)
      (r79v65 java.util.List)
      (r79v66 java.util.List)
      (r79v67 java.util.List)
      (r79v68 java.util.List)
      (r79v69 java.util.List)
      (r79v70 java.util.List)
      (r79v71 java.util.List)
      (r79v72 java.util.List)
      (r79v73 java.util.List)
      (r79v74 java.util.List)
      (r79v77 java.util.List)
     binds: [B:232:0x0628, B:229:0x0617, B:226:0x0606, B:223:0x05f5, B:220:0x05e4, B:217:0x05d3, B:214:0x05c1, B:211:0x05af, B:208:0x059d, B:205:0x058b, B:202:0x0579, B:199:0x0567, B:196:0x0555, B:193:0x0543, B:190:0x0531, B:187:0x051f, B:184:0x050d, B:181:0x04fb, B:178:0x04e9, B:175:0x04d7, B:172:0x04c5, B:169:0x04b3, B:166:0x04a1, B:163:0x048f, B:160:0x047e, B:157:0x046c, B:154:0x045a, B:151:0x0448, B:148:0x0436, B:145:0x0424, B:142:0x0412, B:139:0x0400, B:136:0x03ef, B:133:0x03dd, B:130:0x03cb, B:127:0x03ba, B:124:0x03a8, B:121:0x0396, B:118:0x0384, B:115:0x0372, B:112:0x0360, B:109:0x034e, B:106:0x033c, B:103:0x032a, B:100:0x0318, B:97:0x0306, B:94:0x02f4, B:91:0x02e2, B:88:0x02d0, B:85:0x02be, B:82:0x02ac, B:79:0x029a, B:76:0x0289, B:73:0x0277, B:70:0x0265, B:67:0x0253, B:64:0x0241, B:61:0x022f, B:58:0x021e, B:55:0x020c, B:52:0x01fa, B:49:0x01e8, B:46:0x01d6, B:43:0x01c4, B:40:0x01b2, B:37:0x01a0, B:34:0x018f, B:31:0x017d, B:28:0x016c, B:25:0x015a, B:22:0x0149, B:19:0x0137, B:16:0x0125, B:13:0x0113, B:11:0x0101] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    zzfdu(android.util.JsonReader r81) throws java.lang.IllegalStateException, org.json.JSONException, java.io.IOException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instruction units count: 2908
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfdu.<init>(android.util.JsonReader):void");
    }

    public static String zza(int i) {
        switch (i) {
            case 1:
                return l.a;
            case 2:
                return "INTERSTITIAL";
            case 3:
                return "NATIVE_EXPRESS";
            case 4:
                return "NATIVE";
            case 5:
                return "REWARDED";
            case 6:
                return "APP_OPEN_AD";
            case 7:
                return "REWARDED_INTERSTITIAL";
            default:
                return "UNKNOWN";
        }
    }

    private static int zzb(String str) {
        if ("banner".equals(str)) {
            return 1;
        }
        if (IronSourceConstants.AD_UNIT_IS_MEDIATION_STATE.equals(str)) {
            return 2;
        }
        if ("native_express".equals(str)) {
            return 3;
        }
        if (AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE.equals(str)) {
            return 4;
        }
        if ("rewarded".equals(str)) {
            return 5;
        }
        if ("app_open_ad".equals(str)) {
            return 6;
        }
        return "rewarded_interstitial".equals(str) ? 7 : 0;
    }

    private static int zzc(int i) {
        if (i == 0 || i == 1 || i == 3) {
            return i;
        }
        return 0;
    }

    private static final int zzd(String str) {
        if (o2.h.C.equalsIgnoreCase(str)) {
            return 6;
        }
        return o2.h.D.equalsIgnoreCase(str) ? 7 : -1;
    }
}
