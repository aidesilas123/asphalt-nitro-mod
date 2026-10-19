package com.applovin.exoplayer2.l;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class u {
    private static final ArrayList<a> acl = new ArrayList<>();
    private static final Pattern acm = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    private static final class a {
        public final int V;
        public final String acn;
        public final String eg;
    }

    @VisibleForTesting
    static final class b {
        public final int aco;
        public final int acp;

        public b(int i, int i2) {
            this.aco = i;
            this.acp = i2;
        }

        public int pb() {
            int i = this.acp;
            if (i == 2) {
                return 10;
            }
            if (i == 5) {
                return 11;
            }
            if (i == 29) {
                return 12;
            }
            if (i == 42) {
                return 16;
            }
            if (i != 22) {
                return i != 23 ? 0 : 15;
            }
            return 1073741824;
        }
    }

    public static boolean aW(@Nullable String str) {
        return "audio".equals(bc(str));
    }

    public static boolean aX(@Nullable String str) {
        return "video".equals(bc(str));
    }

    public static boolean aY(@Nullable String str) {
        return "text".equals(bc(str)) || MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str) || MimeTypes.APPLICATION_MP4CEA608.equals(str) || MimeTypes.APPLICATION_SUBRIP.equals(str) || MimeTypes.APPLICATION_TTML.equals(str) || MimeTypes.APPLICATION_TX3G.equals(str) || MimeTypes.APPLICATION_MP4VTT.equals(str) || MimeTypes.APPLICATION_RAWCC.equals(str) || MimeTypes.APPLICATION_VOBSUB.equals(str) || MimeTypes.APPLICATION_PGS.equals(str) || MimeTypes.APPLICATION_DVBSUBS.equals(str);
    }

    @Nullable
    public static String aZ(@Nullable String str) {
        b bVarBf;
        String strFv = null;
        if (str == null) {
            return null;
        }
        String lowerCase = Ascii.toLowerCase(str.trim());
        if (lowerCase.startsWith("avc1") || lowerCase.startsWith("avc3")) {
            return "video/avc";
        }
        if (lowerCase.startsWith("hev1") || lowerCase.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (lowerCase.startsWith("dvav") || lowerCase.startsWith("dva1") || lowerCase.startsWith("dvhe") || lowerCase.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (lowerCase.startsWith("av01")) {
            return com.unity3d.services.core.device.MimeTypes.VIDEO_AV1;
        }
        if (lowerCase.startsWith("vp9") || lowerCase.startsWith("vp09")) {
            return MimeTypes.VIDEO_VP9;
        }
        if (lowerCase.startsWith("vp8") || lowerCase.startsWith("vp08")) {
            return MimeTypes.VIDEO_VP8;
        }
        if (!lowerCase.startsWith("mp4a")) {
            return lowerCase.startsWith("mha1") ? "audio/mha1" : lowerCase.startsWith("mhm1") ? "audio/mhm1" : (lowerCase.startsWith("ac-3") || lowerCase.startsWith("dac3")) ? MimeTypes.AUDIO_AC3 : (lowerCase.startsWith("ec-3") || lowerCase.startsWith("dec3")) ? MimeTypes.AUDIO_E_AC3 : lowerCase.startsWith("ec+3") ? MimeTypes.AUDIO_E_AC3_JOC : (lowerCase.startsWith("ac-4") || lowerCase.startsWith("dac4")) ? "audio/ac4" : lowerCase.startsWith("dtsc") ? MimeTypes.AUDIO_DTS : lowerCase.startsWith("dtse") ? MimeTypes.AUDIO_DTS_EXPRESS : (lowerCase.startsWith("dtsh") || lowerCase.startsWith("dtsl")) ? MimeTypes.AUDIO_DTS_HD : lowerCase.startsWith("dtsx") ? "audio/vnd.dts.uhd;profile=p2" : lowerCase.startsWith("opus") ? MimeTypes.AUDIO_OPUS : lowerCase.startsWith("vorbis") ? MimeTypes.AUDIO_VORBIS : lowerCase.startsWith("flac") ? MimeTypes.AUDIO_FLAC : lowerCase.startsWith("stpp") ? MimeTypes.APPLICATION_TTML : lowerCase.startsWith("wvtt") ? MimeTypes.TEXT_VTT : lowerCase.contains("cea708") ? MimeTypes.APPLICATION_CEA708 : (lowerCase.contains("eia608") || lowerCase.contains("cea608")) ? MimeTypes.APPLICATION_CEA608 : bd(lowerCase);
        }
        if (lowerCase.startsWith("mp4a.") && (bVarBf = bf(lowerCase)) != null) {
            strFv = fv(bVarBf.aco);
        }
        return strFv == null ? MimeTypes.AUDIO_AAC : strFv;
    }

    public static int ba(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (aW(str)) {
            return 1;
        }
        if (aX(str)) {
            return 2;
        }
        if (aY(str)) {
            return 3;
        }
        if (MimeTypes.APPLICATION_ID3.equals(str) || MimeTypes.APPLICATION_EMSG.equals(str) || MimeTypes.APPLICATION_SCTE35.equals(str)) {
            return 5;
        }
        if (MimeTypes.APPLICATION_CAMERA_MOTION.equals(str)) {
            return 6;
        }
        return be(str);
    }

    public static String bb(String str) {
        str.hashCode();
        switch (str) {
            case "audio/x-flac":
                return MimeTypes.AUDIO_FLAC;
            case "audio/x-wav":
                return "audio/wav";
            case "audio/mp3":
                return MimeTypes.AUDIO_MPEG;
            default:
                return str;
        }
    }

    @Nullable
    private static String bc(@Nullable String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }

    @Nullable
    private static String bd(String str) {
        int size = acl.size();
        for (int i = 0; i < size; i++) {
            a aVar = acl.get(i);
            if (str.startsWith(aVar.acn)) {
                return aVar.eg;
            }
        }
        return null;
    }

    private static int be(String str) {
        int size = acl.size();
        for (int i = 0; i < size; i++) {
            a aVar = acl.get(i);
            if (str.equals(aVar.eg)) {
                return aVar.V;
            }
        }
        return -1;
    }

    @Nullable
    @VisibleForTesting
    static b bf(String str) {
        Matcher matcher = acm.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String str2 = (String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(1));
        String strGroup = matcher.group(2);
        try {
            return new b(Integer.parseInt(str2, 16), strGroup != null ? Integer.parseInt(strGroup) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @Nullable
    public static String fv(int i) {
        if (i == 32) {
            return MimeTypes.VIDEO_MP4V;
        }
        if (i == 33) {
            return "video/avc";
        }
        if (i == 35) {
            return "video/hevc";
        }
        if (i == 64) {
            return MimeTypes.AUDIO_AAC;
        }
        if (i == 163) {
            return MimeTypes.VIDEO_VC1;
        }
        if (i == 177) {
            return MimeTypes.VIDEO_VP9;
        }
        if (i == 165) {
            return MimeTypes.AUDIO_AC3;
        }
        if (i == 166) {
            return MimeTypes.AUDIO_E_AC3;
        }
        switch (i) {
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
                return MimeTypes.VIDEO_MPEG2;
            case 102:
            case 103:
            case 104:
                return MimeTypes.AUDIO_AAC;
            case 105:
            case 107:
                return MimeTypes.AUDIO_MPEG;
            case 106:
                return MimeTypes.VIDEO_MPEG;
            default:
                switch (i) {
                    case 169:
                    case 172:
                        return MimeTypes.AUDIO_DTS;
                    case 170:
                    case 171:
                        return MimeTypes.AUDIO_DTS_HD;
                    case 173:
                        return MimeTypes.AUDIO_OPUS;
                    case 174:
                        return "audio/ac4";
                    default:
                        return null;
                }
        }
    }

    public static boolean j(@Nullable String str, @Nullable String str2) {
        b bVarBf;
        int iPb;
        if (str == null) {
            return false;
        }
        switch (str) {
            case "audio/mp4a-latm":
                if (str2 != null && (bVarBf = bf(str2)) != null && (iPb = bVarBf.pb()) != 0 && iPb != 16) {
                }
                break;
        }
        return false;
    }

    public static int k(String str, @Nullable String str2) {
        b bVarBf;
        str.hashCode();
        switch (str) {
            case "audio/eac3-joc":
                return 18;
            case "audio/vnd.dts":
                return 7;
            case "audio/mp4a-latm":
                if (str2 == null || (bVarBf = bf(str2)) == null) {
                    return 0;
                }
                return bVarBf.pb();
            case "audio/ac3":
                return 5;
            case "audio/ac4":
                return 17;
            case "audio/eac3":
                return 6;
            case "audio/mpeg":
                return 9;
            case "audio/vnd.dts.hd":
                return 8;
            case "audio/true-hd":
                return 14;
            default:
                return 0;
        }
    }
}
