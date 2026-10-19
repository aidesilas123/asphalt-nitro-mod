package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"InlinedApi"})
public final class zzth {
    public static final /* synthetic */ int zza = 0;
    private static final Pattern zzb = Pattern.compile("^\\D?(\\d+)$");

    @GuardedBy("MediaCodecUtil.class")
    private static final HashMap zzc = new HashMap();
    private static int zzd = -1;

    public static int zza() throws zztb {
        int i;
        int iMax = zzd;
        if (iMax == -1) {
            zzsn zzsnVarZzc = zzc("video/avc", false, false);
            if (zzsnVarZzc != null) {
                int iMax2 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : zzsnVarZzc.zzh()) {
                    int i2 = codecProfileLevel.level;
                    if (i2 != 1 && i2 != 2) {
                        switch (i2) {
                            case 8:
                            case 16:
                            case 32:
                                i = 101376;
                                break;
                            case 64:
                                i = 202752;
                                break;
                            case 128:
                            case 256:
                                i = 414720;
                                break;
                            case 512:
                                i = 921600;
                                break;
                            case 1024:
                                i = 1310720;
                                break;
                            case 2048:
                            case 4096:
                                i = 2097152;
                                break;
                            case 8192:
                                i = 2228224;
                                break;
                            case 16384:
                                i = 5652480;
                                break;
                            case 32768:
                            case 65536:
                                i = 9437184;
                                break;
                            case 131072:
                            case 262144:
                            case 524288:
                                i = 35651584;
                                break;
                            default:
                                i = -1;
                                break;
                        }
                    } else {
                        i = 25344;
                    }
                    iMax2 = Math.max(i, iMax2);
                }
                iMax = Math.max(iMax2, zzfs.zza >= 21 ? 345600 : 172800);
            } else {
                iMax = 0;
            }
            zzd = iMax;
        }
        return iMax;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02c3 A[Catch: NumberFormatException -> 0x02d3, TRY_LEAVE, TryCatch #1 {NumberFormatException -> 0x02d3, blocks: (B:144:0x0268, B:146:0x027a, B:157:0x0296, B:173:0x02c3), top: B:482:0x0268 }] */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0565  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x061b  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x062a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0121  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.util.Pair zzb(com.google.android.gms.internal.ads.zzam r17) {
        /*
            Method dump skipped, instruction units count: 2546
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzth.zzb(com.google.android.gms.internal.ads.zzam):android.util.Pair");
    }

    @Nullable
    public static zzsn zzc(String str, boolean z, boolean z2) throws zztb {
        List listZzg = zzg(str, false, false);
        if (listZzg.isEmpty()) {
            return null;
        }
        return (zzsn) listZzg.get(0);
    }

    @Nullable
    public static zzsn zzd() throws zztb {
        return zzc(MimeTypes.AUDIO_RAW, false, false);
    }

    @Nullable
    public static String zze(zzam zzamVar) {
        Pair pairZzb;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(zzamVar.zzm)) {
            return MimeTypes.AUDIO_E_AC3;
        }
        if (!"video/dolby-vision".equals(zzamVar.zzm) || (pairZzb = zzb(zzamVar)) == null) {
            return null;
        }
        int iIntValue = ((Integer) pairZzb.first).intValue();
        if (iIntValue == 16 || iIntValue == 256) {
            return "video/hevc";
        }
        if (iIntValue == 512) {
            return "video/avc";
        }
        return null;
    }

    public static List zzf(zzsu zzsuVar, zzam zzamVar, boolean z, boolean z2) throws zztb {
        String strZze = zze(zzamVar);
        return strZze == null ? zzfwu.zzl() : zzg(strZze, z, z2);
    }

    public static synchronized List zzg(String str, boolean z, boolean z2) throws zztb {
        zzsz zzszVar = new zzsz(str, z, z2);
        HashMap map = zzc;
        List list = (List) map.get(zzszVar);
        if (list != null) {
            return list;
        }
        int i = zzfs.zza;
        ArrayList arrayListZzj = zzj(zzszVar, i >= 21 ? new zztf(z, z2) : new zzte(null));
        if (z && arrayListZzj.isEmpty() && i >= 21 && i <= 23) {
            arrayListZzj = zzj(zzszVar, new zzte(null));
            if (!arrayListZzj.isEmpty()) {
                zzez.zzf("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((zzsn) arrayListZzj.get(0)).zza);
            }
        }
        if (MimeTypes.AUDIO_RAW.equals(str)) {
            if (i < 26 && zzfs.zzb.equals("R9") && arrayListZzj.size() == 1 && ((zzsn) arrayListZzj.get(0)).zza.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                arrayListZzj.add(zzsn.zzc("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, MimeTypes.AUDIO_RAW, null, false, true, false, false, false));
            }
            zzk(arrayListZzj, new zztg() { // from class: com.google.android.gms.internal.ads.zzsw
                @Override // com.google.android.gms.internal.ads.zztg
                public final int zza(Object obj) {
                    int i2 = zzth.zza;
                    String str2 = ((zzsn) obj).zza;
                    if (str2.startsWith("OMX.google") || str2.startsWith("c2.android")) {
                        return 1;
                    }
                    return (zzfs.zza >= 26 || !str2.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
                }
            });
        }
        if (i < 21 && arrayListZzj.size() > 1) {
            String str2 = ((zzsn) arrayListZzj.get(0)).zza;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                zzk(arrayListZzj, new zztg() { // from class: com.google.android.gms.internal.ads.zzsx
                    @Override // com.google.android.gms.internal.ads.zztg
                    public final int zza(Object obj) {
                        int i2 = zzth.zza;
                        return ((zzsn) obj).zza.startsWith("OMX.google") ? 1 : 0;
                    }
                });
            }
        }
        if (i < 32 && arrayListZzj.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((zzsn) arrayListZzj.get(0)).zza)) {
            arrayListZzj.add((zzsn) arrayListZzj.remove(0));
        }
        zzfwu zzfwuVarZzj = zzfwu.zzj(arrayListZzj);
        map.put(zzszVar, zzfwuVarZzj);
        return zzfwuVarZzj;
    }

    public static List zzh(zzsu zzsuVar, zzam zzamVar, boolean z, boolean z2) throws zztb {
        List listZzg = zzg(zzamVar.zzm, z, z2);
        List listZzf = zzf(zzsuVar, zzamVar, z, z2);
        zzfwr zzfwrVar = new zzfwr();
        zzfwrVar.zzh(listZzg);
        zzfwrVar.zzh(listZzf);
        return zzfwrVar.zzi();
    }

    @CheckResult
    public static List zzi(List list, final zzam zzamVar) {
        ArrayList arrayList = new ArrayList(list);
        zzk(arrayList, new zztg() { // from class: com.google.android.gms.internal.ads.zzsy
            @Override // com.google.android.gms.internal.ads.zztg
            public final int zza(Object obj) {
                int i = zzth.zza;
                return ((zzsn) obj).zzd(zzamVar) ? 1 : 0;
            }
        });
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01e7 A[Catch: Exception -> 0x029e, TryCatch #1 {Exception -> 0x029e, blocks: (B:115:0x01b6, B:121:0x01cd, B:127:0x01e1, B:129:0x01e7, B:134:0x01f9, B:136:0x0201, B:146:0x022b, B:137:0x0206, B:139:0x0216, B:141:0x021e, B:130:0x01ee), top: B:187:0x01b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01ee A[Catch: Exception -> 0x029e, TryCatch #1 {Exception -> 0x029e, blocks: (B:115:0x01b6, B:121:0x01cd, B:127:0x01e1, B:129:0x01e7, B:134:0x01f9, B:136:0x0201, B:146:0x022b, B:137:0x0206, B:139:0x0216, B:141:0x021e, B:130:0x01ee), top: B:187:0x01b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0201 A[Catch: Exception -> 0x029e, TryCatch #1 {Exception -> 0x029e, blocks: (B:115:0x01b6, B:121:0x01cd, B:127:0x01e1, B:129:0x01e7, B:134:0x01f9, B:136:0x0201, B:146:0x022b, B:137:0x0206, B:139:0x0216, B:141:0x021e, B:130:0x01ee), top: B:187:0x01b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0206 A[Catch: Exception -> 0x029e, TryCatch #1 {Exception -> 0x029e, blocks: (B:115:0x01b6, B:121:0x01cd, B:127:0x01e1, B:129:0x01e7, B:134:0x01f9, B:136:0x0201, B:146:0x022b, B:137:0x0206, B:139:0x0216, B:141:0x021e, B:130:0x01ee), top: B:187:0x01b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02b0 A[Catch: Exception -> 0x02ff, TRY_ENTER, TryCatch #0 {Exception -> 0x02ff, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:10:0x0034, B:14:0x0042, B:18:0x004c, B:20:0x0054, B:22:0x005c, B:24:0x0064, B:26:0x006c, B:28:0x0074, B:32:0x0082, B:34:0x008a, B:36:0x0092, B:38:0x009a, B:40:0x00a4, B:42:0x00ac, B:44:0x00b4, B:46:0x00bc, B:48:0x00c4, B:50:0x00cc, B:52:0x00d4, B:56:0x00e2, B:58:0x00ea, B:60:0x00f2, B:62:0x00fc, B:64:0x0104, B:66:0x010a, B:68:0x0112, B:71:0x011c, B:73:0x0124, B:77:0x0130, B:79:0x0138, B:81:0x0140, B:83:0x0148, B:172:0x02a8, B:175:0x02b0, B:177:0x02b6, B:178:0x02d0, B:179:0x02f3, B:86:0x0151, B:87:0x0154, B:89:0x015c, B:92:0x0167, B:94:0x016f, B:97:0x017a, B:99:0x0182, B:102:0x018d, B:104:0x0195, B:107:0x01a0, B:109:0x01a8), top: B:185:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0231 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x02d0 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.util.ArrayList zzj(com.google.android.gms.internal.ads.zzsz r27, com.google.android.gms.internal.ads.zztc r28) throws com.google.android.gms.internal.ads.zztb {
        /*
            Method dump skipped, instruction units count: 775
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzth.zzj(com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zztc):java.util.ArrayList");
    }

    private static void zzk(List list, final zztg zztgVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzsv
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i = zzth.zza;
                zztg zztgVar2 = zztgVar;
                return zztgVar2.zza(obj2) - zztgVar2.zza(obj);
            }
        });
    }

    private static boolean zzl(MediaCodecInfo mediaCodecInfo, String str) {
        if (zzfs.zza >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if (zzce.zzf(str)) {
            return true;
        }
        String strZza = zzftf.zza(mediaCodecInfo.getName());
        if (strZza.startsWith("arc.")) {
            return false;
        }
        if (strZza.startsWith("omx.google.") || strZza.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((strZza.startsWith("omx.sec.") && strZza.contains(".sw.")) || strZza.equals("omx.qcom.video.decoder.hevcswvdec") || strZza.startsWith("c2.android.") || strZza.startsWith("c2.google.")) {
            return true;
        }
        return (strZza.startsWith("omx.") || strZza.startsWith("c2.")) ? false : true;
    }
}
