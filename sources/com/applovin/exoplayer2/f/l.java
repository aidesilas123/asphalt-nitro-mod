package com.applovin.exoplayer2.f;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"InlinedApi"})
public final class l {
    private static final Pattern IS = Pattern.compile("^\\D?(\\d+)$");

    @GuardedBy("MediaCodecUtil.class")
    private static final HashMap<a, List<i>> IT = new HashMap<>();
    private static int IU = -1;

    private static final class a {
        public final boolean Hu;
        public final String eg;
        public final boolean hi;

        public a(String str, boolean z, boolean z2) {
            this.eg = str;
            this.Hu = z;
            this.hi = z2;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != a.class) {
                return false;
            }
            a aVar = (a) obj;
            return TextUtils.equals(this.eg, aVar.eg) && this.Hu == aVar.Hu && this.hi == aVar.hi;
        }

        public int hashCode() {
            return ((((this.eg.hashCode() + 31) * 31) + (this.Hu ? 1231 : 1237)) * 31) + (this.hi ? 1231 : 1237);
        }
    }

    public static class b extends Exception {
        private b(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    private interface c {
        boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        MediaCodecInfo dd(int i);

        int kA();

        boolean kB();
    }

    private static final class d implements c {
        private d() {
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public MediaCodecInfo dd(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public int kA() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public boolean kB() {
            return false;
        }
    }

    @RequiresApi(21)
    private static final class e implements c {
        private final int IV;

        @Nullable
        private MediaCodecInfo[] IW;

        public e(boolean z, boolean z2) {
            this.IV = (z || z2) ? 1 : 0;
        }

        private void kC() {
            if (this.IW == null) {
                this.IW = new MediaCodecList(this.IV).getCodecInfos();
            }
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public MediaCodecInfo dd(int i) {
            kC();
            return this.IW[i];
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public int kA() {
            kC();
            return this.IW.length;
        }

        @Override // com.applovin.exoplayer2.f.l.c
        public boolean kB() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface f<T> {
        int getScore(T t);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Nullable
    private static Integer W(@Nullable String str) {
        if (str == null) {
            return null;
        }
        byte b2 = -1;
        switch (str.hashCode()) {
            case 70821:
                if (str.equals("H30")) {
                    b2 = 0;
                }
                break;
            case 70914:
                if (str.equals("H60")) {
                    b2 = 1;
                }
                break;
            case 70917:
                if (str.equals("H63")) {
                    b2 = 2;
                }
                break;
            case 71007:
                if (str.equals("H90")) {
                    b2 = 3;
                }
                break;
            case 71010:
                if (str.equals("H93")) {
                    b2 = 4;
                }
                break;
            case 74665:
                if (str.equals("L30")) {
                    b2 = 5;
                }
                break;
            case 74758:
                if (str.equals("L60")) {
                    b2 = 6;
                }
                break;
            case 74761:
                if (str.equals("L63")) {
                    b2 = 7;
                }
                break;
            case 74851:
                if (str.equals("L90")) {
                    b2 = 8;
                }
                break;
            case 74854:
                if (str.equals("L93")) {
                    b2 = 9;
                }
                break;
            case 2193639:
                if (str.equals("H120")) {
                    b2 = 10;
                }
                break;
            case 2193642:
                if (str.equals("H123")) {
                    b2 = Ascii.VT;
                }
                break;
            case 2193732:
                if (str.equals("H150")) {
                    b2 = Ascii.FF;
                }
                break;
            case 2193735:
                if (str.equals("H153")) {
                    b2 = Ascii.CR;
                }
                break;
            case 2193738:
                if (str.equals("H156")) {
                    b2 = Ascii.SO;
                }
                break;
            case 2193825:
                if (str.equals("H180")) {
                    b2 = Ascii.SI;
                }
                break;
            case 2193828:
                if (str.equals("H183")) {
                    b2 = Ascii.DLE;
                }
                break;
            case 2193831:
                if (str.equals("H186")) {
                    b2 = 17;
                }
                break;
            case 2312803:
                if (str.equals("L120")) {
                    b2 = Ascii.DC2;
                }
                break;
            case 2312806:
                if (str.equals("L123")) {
                    b2 = 19;
                }
                break;
            case 2312896:
                if (str.equals("L150")) {
                    b2 = Ascii.DC4;
                }
                break;
            case 2312899:
                if (str.equals("L153")) {
                    b2 = Ascii.NAK;
                }
                break;
            case 2312902:
                if (str.equals("L156")) {
                    b2 = Ascii.SYN;
                }
                break;
            case 2312989:
                if (str.equals("L180")) {
                    b2 = Ascii.ETB;
                }
                break;
            case 2312992:
                if (str.equals("L183")) {
                    b2 = Ascii.CAN;
                }
                break;
            case 2312995:
                if (str.equals("L186")) {
                    b2 = Ascii.EM;
                }
                break;
        }
        switch (b2) {
        }
        return null;
    }

    @Nullable
    private static Integer X(@Nullable String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
        }
        return null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Nullable
    private static Integer Y(@Nullable String str) {
        if (str == null) {
            return null;
        }
        byte b2 = -1;
        switch (str.hashCode()) {
            case 1537:
                if (str.equals("01")) {
                    b2 = 0;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    b2 = 1;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    b2 = 2;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    b2 = 3;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    b2 = 4;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    b2 = 5;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    b2 = 6;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    b2 = 7;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    b2 = 8;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    b2 = 9;
                }
                break;
            case 1568:
                if (str.equals("11")) {
                    b2 = 10;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    b2 = Ascii.VT;
                }
                break;
            case 1570:
                if (str.equals("13")) {
                    b2 = Ascii.FF;
                }
                break;
        }
        switch (b2) {
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(f fVar, Object obj, Object obj2) {
        return fVar.getScore(obj2) - fVar.getScore(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(com.applovin.exoplayer2.v vVar, i iVar) {
        try {
            return iVar.l(vVar) ? 1 : 0;
        } catch (b unused) {
            return -1;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> a(String str, String[] strArr) {
        if (strArr.length < 3) {
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = IS.matcher(strArr[1]);
        if (!matcher.matches()) {
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        Integer numX = X(strGroup);
        if (numX == null) {
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Unknown Dolby Vision profile string: " + strGroup);
            return null;
        }
        String str2 = strArr[2];
        Integer numY = Y(str2);
        if (numY != null) {
            return new Pair<>(numX, numY);
        }
        com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Unknown Dolby Vision level string: " + str2);
        return null;
    }

    @Nullable
    private static Pair<Integer, Integer> a(String str, String[] strArr, @Nullable com.applovin.exoplayer2.m.b bVar) {
        int i;
        if (strArr.length < 4) {
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
        try {
            int i2 = Integer.parseInt(strArr[1]);
            int i3 = Integer.parseInt(strArr[2].substring(0, 2));
            int i4 = Integer.parseInt(strArr[3]);
            if (i2 != 0) {
                com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Unknown AV1 profile: " + i2);
                return null;
            }
            if (i4 != 8 && i4 != 10) {
                com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Unknown AV1 bit depth: " + i4);
                return null;
            }
            int i5 = i4 != 8 ? (bVar == null || !(bVar.adl != null || (i = bVar.yk) == 7 || i == 6)) ? 2 : 4096 : 1;
            int iDb = db(i3);
            if (iDb != -1) {
                return new Pair<>(Integer.valueOf(i5), Integer.valueOf(iDb));
            }
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Unknown AV1 level: " + i3);
            return null;
        } catch (NumberFormatException unused) {
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
    }

    @Nullable
    public static i a(String str, boolean z, boolean z2) throws b {
        List<i> decoderInfos = getDecoderInfos(str, z, z2);
        if (decoderInfos.isEmpty()) {
            return null;
        }
        return decoderInfos.get(0);
    }

    @Nullable
    private static String a(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals(MimeTypes.AUDIO_ALAC) && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals(MimeTypes.AUDIO_FLAC) && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0101 A[Catch: Exception -> 0x014f, TRY_ENTER, TryCatch #1 {Exception -> 0x014f, blocks: (B:3:0x0008, B:5:0x001b, B:60:0x0120, B:8:0x002d, B:11:0x0038, B:54:0x00f9, B:57:0x0101, B:59:0x0107, B:61:0x012a, B:62:0x014d), top: B:69:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x012a A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.util.ArrayList<com.applovin.exoplayer2.f.i> a(com.applovin.exoplayer2.f.l.a r24, com.applovin.exoplayer2.f.l.c r25) throws com.applovin.exoplayer2.f.l.b {
        /*
            Method dump skipped, instruction units count: 343
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.f.l.a(com.applovin.exoplayer2.f.l$a, com.applovin.exoplayer2.f.l$c):java.util.ArrayList");
    }

    @CheckResult
    public static List<i> a(List<i> list, final com.applovin.exoplayer2.v vVar) {
        ArrayList arrayList = new ArrayList(list);
        a(arrayList, new f() { // from class: com.applovin.exoplayer2.f.s
            @Override // com.applovin.exoplayer2.f.l.f
            public final int getScore(Object obj) {
                return l.a(vVar, (i) obj);
            }
        });
        return arrayList;
    }

    private static void a(String str, List<i> list) {
        if (MimeTypes.AUDIO_RAW.equals(str)) {
            if (ai.acV < 26 && ai.acW.equals("R9") && list.size() == 1 && list.get(0).name.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(i.a("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, MimeTypes.AUDIO_RAW, null, false, true, false, false, false));
            }
            a(list, new f() { // from class: com.applovin.exoplayer2.f.t
                @Override // com.applovin.exoplayer2.f.l.f
                public final int getScore(Object obj) {
                    return l.d((i) obj);
                }
            });
        }
        int i = ai.acV;
        if (i < 21 && list.size() > 1) {
            String str2 = list.get(0).name;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                a(list, new f() { // from class: com.applovin.exoplayer2.f.u
                    @Override // com.applovin.exoplayer2.f.l.f
                    public final int getScore(Object obj) {
                        return l.c((i) obj);
                    }
                });
            }
        }
        if (i >= 32 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(list.get(0).name)) {
            return;
        }
        list.add(list.remove(0));
    }

    private static <T> void a(List<T> list, final f<T> fVar) {
        Collections.sort(list, new Comparator() { // from class: com.applovin.exoplayer2.f.v
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return l.a(fVar, obj, obj2);
            }
        });
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo) {
        return ai.acV >= 29 && b(mediaCodecInfo);
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z && str.endsWith(".secure"))) {
            return false;
        }
        int i = ai.acV;
        if (i < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (i < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            String str3 = ai.acW;
            if ("a70".equals(str3) || ("Xiaomi".equals(ai.acX) && str3.startsWith("HM"))) {
                return false;
            }
        }
        if (i == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
            String str4 = ai.acW;
            if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                return false;
            }
        }
        if (i == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
            String str5 = ai.acW;
            if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                return false;
            }
        }
        if (i < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(ai.acX))) {
            String str6 = ai.acW;
            if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                return false;
            }
        }
        if (i <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(ai.acX)) {
            String str7 = ai.acW;
            if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                return false;
            }
        }
        if (i <= 19 && ai.acW.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        return (MimeTypes.AUDIO_E_AC3_JOC.equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }

    @Nullable
    private static Pair<Integer, Integer> b(String str, String[] strArr) {
        if (strArr.length < 4) {
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i = 1;
        Matcher matcher = IS.matcher(strArr[1]);
        if (!matcher.matches()) {
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        if (!"1".equals(strGroup)) {
            if (!MBridgeConstans.API_REUQEST_CATEGORY_APP.equals(strGroup)) {
                com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Unknown HEVC profile string: " + strGroup);
                return null;
            }
            i = 2;
        }
        String str2 = strArr[3];
        Integer numW = W(str2);
        if (numW != null) {
            return new Pair<>(Integer.valueOf(i), numW);
        }
        com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Unknown HEVC level string: " + str2);
        return null;
    }

    @RequiresApi(29)
    private static boolean b(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int c(i iVar) {
        return iVar.name.startsWith("OMX.google") ? 1 : 0;
    }

    @Nullable
    private static Pair<Integer, Integer> c(String str, String[] strArr) {
        int i;
        int i2;
        if (strArr.length < 2) {
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i2 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i = Integer.parseInt(strArr[1].substring(4), 16);
            } else {
                if (strArr.length < 3) {
                    com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
                    return null;
                }
                int i3 = Integer.parseInt(strArr[1]);
                i = Integer.parseInt(strArr[2]);
                i2 = i3;
            }
            int iCX = cX(i2);
            if (iCX == -1) {
                com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Unknown AVC profile: " + i2);
                return null;
            }
            int iCY = cY(i);
            if (iCY != -1) {
                return new Pair<>(Integer.valueOf(iCX), Integer.valueOf(iCY));
            }
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Unknown AVC level: " + i);
            return null;
        } catch (NumberFormatException unused) {
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    private static boolean c(MediaCodecInfo mediaCodecInfo) {
        return ai.acV >= 29 ? d(mediaCodecInfo) : !e(mediaCodecInfo);
    }

    private static int cW(int i) {
        if (i == 1 || i == 2) {
            return 25344;
        }
        switch (i) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            case 131072:
            case 262144:
            case 524288:
                return 35651584;
            default:
                return -1;
        }
    }

    private static int cX(int i) {
        if (i == 66) {
            return 1;
        }
        if (i == 77) {
            return 2;
        }
        if (i == 88) {
            return 4;
        }
        if (i == 100) {
            return 8;
        }
        if (i == 110) {
            return 16;
        }
        if (i != 122) {
            return i != 244 ? -1 : 64;
        }
        return 32;
    }

    private static int cY(int i) {
        switch (i) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i) {
                            case 30:
                                return 256;
                            case 31:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i) {
                                            case 50:
                                                return 16384;
                                            case 51:
                                                return 32768;
                                            case 52:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    private static int cZ(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? -1 : 8;
        }
        return 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int d(i iVar) {
        String str = iVar.name;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (ai.acV >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    @Nullable
    private static Pair<Integer, Integer> d(String str, String[] strArr) {
        if (strArr.length < 3) {
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
        try {
            int i = Integer.parseInt(strArr[1]);
            int i2 = Integer.parseInt(strArr[2]);
            int iCZ = cZ(i);
            if (iCZ == -1) {
                com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Unknown VP9 profile: " + i);
                return null;
            }
            int iDa = da(i2);
            if (iDa != -1) {
                return new Pair<>(Integer.valueOf(iCZ), Integer.valueOf(iDa));
            }
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Unknown VP9 level: " + i2);
            return null;
        } catch (NumberFormatException unused) {
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
    }

    @RequiresApi(29)
    private static boolean d(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    private static int da(int i) {
        if (i == 10) {
            return 1;
        }
        if (i == 11) {
            return 2;
        }
        if (i == 20) {
            return 4;
        }
        if (i == 21) {
            return 8;
        }
        if (i == 30) {
            return 16;
        }
        if (i == 31) {
            return 32;
        }
        if (i == 40) {
            return 64;
        }
        if (i == 41) {
            return 128;
        }
        if (i == 50) {
            return 256;
        }
        if (i == 51) {
            return 512;
        }
        switch (i) {
            case 60:
                return 2048;
            case 61:
                return 4096;
            case 62:
                return 8192;
            default:
                return -1;
        }
    }

    private static int db(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    private static int dc(int i) {
        int i2 = 17;
        if (i != 17) {
            i2 = 20;
            if (i != 20) {
                i2 = 23;
                if (i != 23) {
                    i2 = 29;
                    if (i != 29) {
                        i2 = 39;
                        if (i != 39) {
                            i2 = 42;
                            if (i != 42) {
                                switch (i) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i2;
    }

    @Nullable
    private static Pair<Integer, Integer> e(String str, String[] strArr) {
        int iDc;
        if (strArr.length != 3) {
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if (MimeTypes.AUDIO_AAC.equals(com.applovin.exoplayer2.l.u.fv(Integer.parseInt(strArr[1], 16))) && (iDc = dc(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair<>(Integer.valueOf(iDc), 0);
            }
        } catch (NumberFormatException unused) {
            com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    private static boolean e(MediaCodecInfo mediaCodecInfo) {
        if (ai.acV >= 29) {
            return f(mediaCodecInfo);
        }
        String lowerCase = Ascii.toLowerCase(mediaCodecInfo.getName());
        if (lowerCase.startsWith("arc.")) {
            return false;
        }
        return lowerCase.startsWith("omx.google.") || lowerCase.startsWith("omx.ffmpeg.") || (lowerCase.startsWith("omx.sec.") && lowerCase.contains(".sw.")) || lowerCase.equals("omx.qcom.video.decoder.hevcswvdec") || lowerCase.startsWith("c2.android.") || lowerCase.startsWith("c2.google.") || !(lowerCase.startsWith("omx.") || lowerCase.startsWith("c2."));
    }

    @RequiresApi(29)
    private static boolean f(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    private static boolean g(MediaCodecInfo mediaCodecInfo) {
        if (ai.acV >= 29) {
            return h(mediaCodecInfo);
        }
        String lowerCase = Ascii.toLowerCase(mediaCodecInfo.getName());
        return (lowerCase.startsWith("omx.google.") || lowerCase.startsWith("c2.android.") || lowerCase.startsWith("c2.google.")) ? false : true;
    }

    public static synchronized List<i> getDecoderInfos(String str, boolean z, boolean z2) throws b {
        a aVar = new a(str, z, z2);
        HashMap<a, List<i>> map = IT;
        List<i> list = map.get(aVar);
        if (list != null) {
            return list;
        }
        int i = ai.acV;
        ArrayList<i> arrayListA = a(aVar, i >= 21 ? new e(z, z2) : new d());
        if (z && arrayListA.isEmpty() && 21 <= i && i <= 23) {
            arrayListA = a(aVar, new d());
            if (!arrayListA.isEmpty()) {
                com.applovin.exoplayer2.l.q.h("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + arrayListA.get(0).name);
            }
        }
        a(str, arrayListA);
        List<i> listUnmodifiableList = Collections.unmodifiableList(arrayListA);
        map.put(aVar, listUnmodifiableList);
        return listUnmodifiableList;
    }

    @RequiresApi(29)
    private static boolean h(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }

    @Nullable
    public static i ky() throws b {
        return a(MimeTypes.AUDIO_RAW, false, false);
    }

    public static int kz() throws b {
        if (IU == -1) {
            int iMax = 0;
            i iVarA = a("video/avc", false, false);
            if (iVarA != null) {
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrJV = iVarA.jV();
                int length = codecProfileLevelArrJV.length;
                int iMax2 = 0;
                while (iMax < length) {
                    iMax2 = Math.max(cW(codecProfileLevelArrJV[iMax].level), iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, ai.acV >= 21 ? 345600 : 172800);
            }
            IU = iMax;
        }
        return IU;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> r(com.applovin.exoplayer2.v r6) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.f.l.r(com.applovin.exoplayer2.v):android.util.Pair");
    }
}
