package com.google.zxing.aztec.decoder;

import androidx.webkit.ProxyConfig;
import com.facebook.internal.security.CertificateUtil;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.zxing.FormatException;
import com.google.zxing.common.CharacterSetECI;
import com.json.b4;
import com.json.o2;
import com.json.t9;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes3.dex */
public final class Decoder {
    private static final String[] a = {"CTRL_PS", " ", "A", "B", "C", "D", "E", "F", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] b = {"CTRL_PS", " ", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", InneractiveMediationDefs.GENDER_FEMALE, "g", "h", "i", "j", CampaignEx.JSON_KEY_AD_K, "l", InneractiveMediationDefs.GENDER_MALE, b4.p, "o", TtmlNode.TAG_P, CampaignEx.JSON_KEY_AD_Q, "r", "s", "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] c = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f4264d = {"FLG(n)", "\r", "\r\n", ". ", ", ", ": ", "!", "\"", "#", "$", "%", o2.i.c, "'", "(", ")", ProxyConfig.MATCH_ALL_SCHEMES, "+", ",", "-", ".", "/", CertificateUtil.DELIMITER, ";", "<", o2.i.b, ">", "?", o2.i.f6490d, o2.i.f6491e, "{", "}", "CTRL_UL"};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f4265e = {"CTRL_PS", " ", "0", "1", MBridgeConstans.API_REUQEST_CATEGORY_APP, "3", ConstantDef.SDK_CONTENT_VERSION, CampaignEx.CLICKMODE_ON, "6", t9.f6640e, "8", "9", ",", ".", "CTRL_UL", "CTRL_US"};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Charset f4266f = StandardCharsets.ISO_8859_1;

    private enum Table {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Table.values().length];
            a = iArr;
            try {
                iArr[Table.UPPER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Table.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Table.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[Table.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[Table.DIGIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private static String a(Table table, int i) {
        int i2 = a.a[table.ordinal()];
        if (i2 == 1) {
            return a[i];
        }
        if (i2 == 2) {
            return b[i];
        }
        if (i2 == 3) {
            return c[i];
        }
        if (i2 == 4) {
            return f4264d[i];
        }
        if (i2 == 5) {
            return f4265e[i];
        }
        throw new IllegalStateException("Bad table");
    }

    private static String b(boolean[] zArr) throws FormatException {
        int length = zArr.length;
        Table table = Table.UPPER;
        StringBuilder sb = new StringBuilder((zArr.length - 5) / 4);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Charset charsetE = f4266f;
        int i = 0;
        Table tableC = table;
        loop0: while (i < length) {
            if (table != Table.BINARY) {
                int i2 = table == Table.DIGIT ? 4 : 5;
                if (length - i >= i2) {
                    int iD = d(zArr, i, i2);
                    i += i2;
                    String strA = a(table, iD);
                    if ("FLG(n)".equals(strA)) {
                        if (length - i >= 3) {
                            int iD2 = d(zArr, i, 3);
                            i += 3;
                            try {
                                sb.append(byteArrayOutputStream.toString(charsetE.name()));
                                byteArrayOutputStream.reset();
                                if (iD2 == 0) {
                                    sb.append((char) 29);
                                } else {
                                    if (iD2 == 7) {
                                        throw FormatException.getFormatInstance();
                                    }
                                    if (length - i >= iD2 * 4) {
                                        int i3 = 0;
                                        while (true) {
                                            int i4 = iD2 - 1;
                                            if (iD2 > 0) {
                                                int iD3 = d(zArr, i, 4);
                                                i += 4;
                                                if (iD3 < 2 || iD3 > 11) {
                                                    break loop0;
                                                }
                                                i3 = (i3 * 10) + (iD3 - 2);
                                                iD2 = i4;
                                            } else {
                                                CharacterSetECI characterSetECIByValue = CharacterSetECI.getCharacterSetECIByValue(i3);
                                                if (characterSetECIByValue == null) {
                                                    throw FormatException.getFormatInstance();
                                                }
                                                charsetE = characterSetECIByValue.e();
                                            }
                                        }
                                        throw FormatException.getFormatInstance();
                                    }
                                }
                            } catch (UnsupportedEncodingException e2) {
                                throw new IllegalStateException(e2);
                            }
                        }
                    } else if (strA.startsWith("CTRL_")) {
                        tableC = c(strA.charAt(5));
                        if (strA.charAt(6) != 'L') {
                            tableC = table;
                            table = tableC;
                        }
                    } else {
                        byte[] bytes = strA.getBytes(StandardCharsets.US_ASCII);
                        byteArrayOutputStream.write(bytes, 0, bytes.length);
                    }
                    table = tableC;
                }
            } else if (length - i >= 5) {
                int iD4 = d(zArr, i, 5);
                i += 5;
                if (iD4 == 0) {
                    if (length - i >= 11) {
                        iD4 = d(zArr, i, 11) + 31;
                        i += 11;
                    }
                }
                int i5 = 0;
                while (true) {
                    if (i5 >= iD4) {
                        break;
                    }
                    if (length - i < 8) {
                        i = length;
                        break;
                    }
                    byteArrayOutputStream.write((byte) d(zArr, i, 8));
                    i += 8;
                    i5++;
                }
                table = tableC;
            }
        }
        try {
            sb.append(byteArrayOutputStream.toString(charsetE.name()));
            return sb.toString();
        } catch (UnsupportedEncodingException e3) {
            throw new IllegalStateException(e3);
        }
    }

    private static Table c(char c2) {
        return c2 != 'B' ? c2 != 'D' ? c2 != 'P' ? c2 != 'L' ? c2 != 'M' ? Table.UPPER : Table.MIXED : Table.LOWER : Table.PUNCT : Table.DIGIT : Table.BINARY;
    }

    private static int d(boolean[] zArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i + i2; i4++) {
            i3 <<= 1;
            if (zArr[i4]) {
                i3 |= 1;
            }
        }
        return i3;
    }

    public static String highLevelDecode(boolean[] zArr) throws FormatException {
        return b(zArr);
    }
}
