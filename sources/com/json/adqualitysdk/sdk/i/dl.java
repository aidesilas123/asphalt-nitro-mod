package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.dt;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class dl {
    private static Map<dx, dx> a = null;
    private static Map<fr, fr> b = null;
    private static char[] c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f5542d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5543e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5544f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f5545g = 0;
    private String h;
    private String i;

    final class a implements e<Pair<String, dx>> {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.dl.e
        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final /* synthetic */ Pair<String, dx> mo665(List list) {
            return dl.A(dl.this, list);
        }
    }

    final class b implements e<dx> {
        private static char[] a = {'E', 'x', 'p', 'e', 'c', 't', 'd', ' ', 'v', 'a', 'r', 'i', 'b', 'l', 'u', 'F'};
        private static char b = 4;
        private static int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5546d = 1;

        b() {
        }

        private dx a(List<dt> list) {
            dx dxVarM663;
            int i = f5546d + 39;
            c = i % 128;
            if ((i % 2 != 0 ? (char) 19 : ':') != 19) {
                dxVarM663 = dl.this.m663(list);
                if (dxVarM663 instanceof ej) {
                    return dxVarM663;
                }
            } else {
                dxVarM663 = dl.this.m663(list);
                int i2 = 47 / 0;
                if (dxVarM663 instanceof ej) {
                    return dxVarM663;
                }
            }
            int i3 = c + 65;
            f5546d = i3 % 128;
            int i4 = i3 % 2;
            if (!(!(dxVarM663 instanceof ds))) {
                return dxVarM663;
            }
            dl dlVar = dl.this;
            StringBuilder sb = new StringBuilder();
            sb.append(b((byte) ((ViewConfiguration.getTouchSlop() >> 8) + 22), "\u0001\u0002\u0003\u0000\u0005\u0006\u0002\u0007\u0004\u000b\n\u000b\b\n\r\u000e\u0007\u000b\r\u000f\u0006\u0004\u000b\u0002\u0007\u0000\b\t\u0002\u00076", 31 - View.resolveSize(0, 0)).intern());
            sb.append(dxVarM663);
            dl.x(dlVar, sb.toString());
            return null;
        }

        private static String b(byte b2, String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (g.f56) {
                char[] cArr2 = a;
                char c2 = b;
                char[] cArr3 = new char[i];
                if (i % 2 != 0) {
                    i--;
                    cArr3[i] = (char) (cArr[i] - b2);
                }
                if (i > 1) {
                    g.f60 = 0;
                    while (true) {
                        int i2 = g.f60;
                        if (i2 >= i) {
                            break;
                        }
                        g.f58 = cArr[i2];
                        g.f62 = cArr[g.f60 + 1];
                        if (g.f58 == g.f62) {
                            cArr3[g.f60] = (char) (g.f58 - b2);
                            cArr3[g.f60 + 1] = (char) (g.f62 - b2);
                        } else {
                            g.f59 = g.f58 / c2;
                            g.f55 = g.f58 % c2;
                            g.f61 = g.f62 / c2;
                            g.f57 = g.f62 % c2;
                            if (g.f55 == g.f57) {
                                g.f59 = ((g.f59 + c2) - 1) % c2;
                                g.f61 = ((g.f61 + c2) - 1) % c2;
                                int i3 = (g.f59 * c2) + g.f55;
                                int i4 = (g.f61 * c2) + g.f57;
                                int i5 = g.f60;
                                cArr3[i5] = cArr2[i3];
                                cArr3[i5 + 1] = cArr2[i4];
                            } else if (g.f59 == g.f61) {
                                g.f55 = ((g.f55 + c2) - 1) % c2;
                                g.f57 = ((g.f57 + c2) - 1) % c2;
                                int i6 = (g.f59 * c2) + g.f55;
                                int i7 = (g.f61 * c2) + g.f57;
                                int i8 = g.f60;
                                cArr3[i8] = cArr2[i6];
                                cArr3[i8 + 1] = cArr2[i7];
                            } else {
                                int i9 = (g.f59 * c2) + g.f57;
                                int i10 = (g.f61 * c2) + g.f55;
                                int i11 = g.f60;
                                cArr3[i11] = cArr2[i9];
                                cArr3[i11 + 1] = cArr2[i10];
                            }
                        }
                        g.f60 += 2;
                    }
                }
                str2 = new String(cArr3);
            }
            return str2;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.dl.e
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ dx mo665(List list) {
            int i = f5546d + 125;
            c = i % 128;
            if ((i % 2 != 0 ? 'J' : (char) 15) != 'J') {
                return a(list);
            }
            a(list);
            throw null;
        }
    }

    final class c implements e<dx> {
        private static char[] a = {'2', 'd', 'd', 'k', 'I', 'J', 't', 'k', 'A', 'I', 'i', 'k', 'R', 'Q', 's', 'j', 'f', 'g', 'A', 'B', 'd', 'l', 'k', 'd', 'j', 't', '^', '2', 'B', 'd', 'm', 'o'};
        private static int b = 0;
        private static int c = 1;

        c() {
        }

        private dx a(List<dt> list) {
            int i = b + 93;
            c = i % 128;
            int i2 = i % 2;
            dx dxVarS = dl.s(dl.this, list);
            if ((!(dxVarS instanceof dw) ? (char) 2 : 'G') != 2 || (dxVarS instanceof ej)) {
                return dxVarS;
            }
            dl dlVar = dl.this;
            StringBuilder sb = new StringBuilder();
            sb.append(b(true, new int[]{0, 32, 0, 27}, "\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001").intern());
            sb.append(dxVarS);
            dl.x(dlVar, sb.toString());
            int i3 = c + 1;
            b = i3 % 128;
            if (i3 % 2 == 0) {
                return null;
            }
            throw null;
        }

        private static String b(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
            String str2;
            Object bytes = str;
            if (str != null) {
                bytes = str.getBytes("ISO-8859-1");
            }
            byte[] bArr = (byte[]) bytes;
            synchronized (i.f67) {
                int i = iArr[0];
                int i2 = iArr[1];
                int i3 = iArr[2];
                int i4 = iArr[3];
                char[] cArr = new char[i2];
                System.arraycopy(a, i, cArr, 0, i2);
                if (bArr != null) {
                    char[] cArr2 = new char[i2];
                    i.f68 = 0;
                    char c2 = 0;
                    while (true) {
                        int i5 = i.f68;
                        if (i5 >= i2) {
                            break;
                        }
                        if (bArr[i5] == 1) {
                            cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c2);
                        } else {
                            cArr2[i5] = (char) ((cArr[i5] << 1) - c2);
                        }
                        c2 = cArr2[i5];
                        i.f68 = i5 + 1;
                    }
                    cArr = cArr2;
                }
                if (i4 > 0) {
                    char[] cArr3 = new char[i2];
                    System.arraycopy(cArr, 0, cArr3, 0, i2);
                    int i6 = i2 - i4;
                    System.arraycopy(cArr3, 0, cArr, i6, i4);
                    System.arraycopy(cArr3, i4, cArr, 0, i6);
                }
                if (z) {
                    char[] cArr4 = new char[i2];
                    i.f68 = 0;
                    while (true) {
                        int i7 = i.f68;
                        if (i7 >= i2) {
                            break;
                        }
                        cArr4[i7] = cArr[(i2 - i7) - 1];
                        i.f68 = i7 + 1;
                    }
                    cArr = cArr4;
                }
                if (i3 > 0) {
                    i.f68 = 0;
                    while (true) {
                        int i8 = i.f68;
                        if (i8 >= i2) {
                            break;
                        }
                        cArr[i8] = (char) (cArr[i8] - iArr[2]);
                        i.f68 = i8 + 1;
                    }
                }
                str2 = new String(cArr);
            }
            return str2;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.dl.e
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ dx mo665(List list) {
            int i = c + 27;
            b = i % 128;
            if (i % 2 != 0) {
                a(list);
                throw null;
            }
            dx dxVarA = a(list);
            int i2 = b + 11;
            c = i2 % 128;
            if (!(i2 % 2 == 0)) {
                return dxVarA;
            }
            throw null;
        }
    }

    final class d implements e<dx> {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.dl.e
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ dx mo665(List list) {
            return dl.this.m663(list);
        }
    }

    interface e<T> {
        /* JADX INFO: renamed from: ﾇ */
        T mo665(List<dt> list);
    }

    static {
        F();
        a = new HashMap();
        b = new HashMap();
        int i = f5544f + 87;
        f5543e = i % 128;
        int i2 = i % 2;
    }

    public dl(String str, String str2) {
        this.h = str;
        this.i = str2;
    }

    static /* synthetic */ Pair A(dl dlVar, List list) {
        int i = f5543e + 49;
        f5544f = i % 128;
        char c2 = i % 2 == 0 ? '\b' : 'G';
        Pair<String, dx> pairH = dlVar.h(list);
        if (c2 == '\b') {
            int i2 = 3 / 0;
        }
        int i3 = f5544f + 107;
        f5543e = i3 % 128;
        int i4 = i3 % 2;
        return pairH;
    }

    private dx B(dt dtVar) {
        int i = f5544f + 29;
        f5543e = i % 128;
        if ((i % 2 != 0 ? ';' : (char) 26) != 26) {
            Cdo.m669(this.i, dtVar.m700());
            dtVar.m694();
            throw null;
        }
        Cdo cdoM669 = Cdo.m669(this.i, dtVar.m700());
        if (dtVar.m694()) {
            try {
                try {
                    dx dxVarU = u(new fa(Integer.valueOf(Integer.parseInt(dtVar.m701())), cdoM669));
                    int i2 = f5544f + 45;
                    f5543e = i2 % 128;
                    int i3 = i2 % 2;
                    return dxVarU;
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                return u(new ff(Long.valueOf(Long.parseLong(dtVar.m701())), cdoM669));
            }
        } else {
            if (dtVar.m692()) {
                return u(new fb(Double.valueOf(Double.parseDouble(dtVar.m701())), cdoM669));
            }
            if (dtVar.m695()) {
                dx dxVarU2 = u(new fd(Boolean.valueOf(Boolean.parseBoolean(dtVar.m701())), cdoM669));
                int i4 = f5543e + 123;
                f5544f = i4 % 128;
                int i5 = i4 % 2;
                return dxVarU2;
            }
        }
        dx dxVarU3 = u(new fe(dtVar.m701(), cdoM669));
        int i6 = f5544f + 123;
        f5543e = i6 % 128;
        if ((i6 % 2 != 0 ? 'V' : (char) 17) != 'V') {
            return dxVarU3;
        }
        throw null;
    }

    private dx C(dx dxVar, List<dt> list) {
        int i = f5544f + 75;
        f5543e = i % 128;
        int i2 = i % 2;
        dx dxVarM663 = m663(list);
        I(list, w((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), Drawable.resolveOpacity(0, 0) + 811, (char) (KeyEvent.getDeadChar(0, 0) + 21952)).intern(), dxVarM663, w(Color.argb(0, 0, 0, 0) + 35, 957 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), (char) (TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 1)).intern());
        dt dtVarC = c(list);
        Cdo cdoM669 = Cdo.m669(this.i, dtVarC.m700());
        if (dtVarC.m698(w(1 - Color.argb(0, 0, 0, 0), 791 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), (char) (ViewConfiguration.getJumpTapTimeout() >> 16)).intern())) {
            return u(new ef(dxVar, dxVarM663, m663(list), cdoM669));
        }
        this.f5545g--;
        dx dxVarU = u(new ec(dxVar, dxVarM663, cdoM669));
        int i3 = f5543e + 25;
        f5544f = i3 % 128;
        if (i3 % 2 != 0) {
            return dxVarU;
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.json.adqualitysdk.sdk.i.fr D(java.util.List<com.json.adqualitysdk.sdk.i.dt> r20) {
        /*
            Method dump skipped, instruction units count: 736
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dl.D(java.util.List):com.ironsource.adqualitysdk.sdk.i.fr");
    }

    private List<dx> E(List<dt> list, String str) {
        List<dx> listO = O(list, str, new d());
        int i = f5543e + 81;
        f5544f = i % 128;
        if (!(i % 2 == 0)) {
            return listO;
        }
        int i2 = 44 / 0;
        return listO;
    }

    static void F() {
        char[] cArr = new char[1307];
        ByteBuffer.wrap("\u0000{\u0000m_k¾h\u001dB|WÛ\":t\u0099\u0000ø\u001fW\u001a¶õ\u0015ºtÛÓÞ2«\u0091§ð\u008cO\u008a®Ü\u000ehm}Ì\u0006+U\u008abé3H1§\u0001\u0006\neçÄã#Ê\u0082Öáà@½\u009f¨þ\u008b]\u008c½c\u001cy{GÚ^9JÐß\u0000i_h\u0000f_a¾n\u0000w_f¾u\u001dF|]D6\u001b/ú,Y\u001b8\u000e\u009fltl+rÊwiE\b]OØ\u0010ÚñÉRå3ê\u0094\u0093u\u009aÖ¼\u0096µÉ½(¤\u0000v_o¾n\u0000m_g¾o\u001dY|QÛ(:3\u0099BøWWE¶«\u0015ºtÉÓÂ2ä\u0091·ð\u008eO\u008a®Ü\u000eem~Ì\u0006+G\u008a6é1H*§\t\u0006\u0017eíÄø#ÐüË\u0000i_h¾<\u001dY|LÛ': \u0099\u0007ø\u001dW\u001b¶â\u0015ît\u0088ÓÅ2¬\u0091½ð\u0095O\u0082®\u0098\u000e*mzÌC+\u0014\u008a$é?H2§\u0000\u0006\u0015eÿÄó#À\u0082\u0092á¢@·\u009füþ\u008b]Ø½!\u001c<{\u0005\u0000)\u0000i_h¾<\u001dY|LÛ': \u0099\u0007ø\u001dW\u001b¶â\u0015ît\u0088ÓÕ2«\u0091¼ð\u0084O\u0087®\u0088\u000ecmwÌH+\u0014\u008a1é8H1§\u0019\u0006\u0016eìÄ¶#Æ\u0082×áà@§\u009f²þ\u0099]\u0091½b\u001cq{\u0002Ú\u00179\u0016\u0098e÷}\u0000e_b¾o\u001dO\u0001¢^¥¿ª\u001cÎ}\u008fÚö;ñ\u0098ÒùÑV×·-\u00140u\u0018ÒR3s\u0090~ñKN_¯T\u000fªlüÍ\u0080*\u0095\u008b¦èòIõ¦Ä\u0007Òd#Å%\"\u0005\u0083\u0012à$Ah\u009eaÿ\u000e\\]¼â\u001d÷zÎÛÓ\u0000f_a¾n\u001d\n|[Û)::\u0099\u0006ø\u0019W\n¶å\u0015õtÆÓ\u00962·\u0091ºð\u008fO\u009b®\u0090\u000enm8ÌC+Z\u008a&épH)§\u0005\u0006\u000eeàÄ¶#\u0083\u0082\u0089áç\u0000o_~¾h\u001dC|WÛ(:5\u0099\u000eøPW\u001b¶ô\u0015êtÚÓÓ2·\u0091¡ð\u0089O\u0081®\u0092\u000e*mkÌN+[\u008a7é<H:§L\u0006\u001feæÄò#\u0084\u0082Åá©@º\u009f´þÊú;¥*D9ç\n\u0086\u0011!*ÀkcZ\u0002]\u00adFL¥ï»\u008e\u0081)\u0094Èük¾\nßµÊTßô3\u009786\u000eÑXpl\u0013y²2]FüY\u009f¨>¶Ù\u0087x\u0089\u001béºæe°\u0004Ä§ÍGjæ9\u0081N [ÃZb'Ø)\u00878f+Å\u0018¤\u0003\u00038âyAH O\u008fTn·Í©¬\u0093\u000b\u0086êîI¬(Ý\u0097ßvÌÖ0µ/\u0014\fó\u0003Rs1`\u0090 \u007fAÞL½¹\u001c½û\u0096Z\u00889¾\u0098òGç&\u0094\u0085Ïe6Ä9£\u0015\u0002\ná\u0005@2/#\u008e\u001em\u0001Ìý\u0000t_|¾e\u001d\n|KÛ2:5\u0099\u0016ø\u0015W\u0013¶é\u0015ôtÜÓ\u00962©\u0091§ð\u0093O\u009a®Ü\u000ehm}Ì\u0006+W\u008a-é=H.§\u0003\u0006\u000feæÄò#\u0084\u0082\u009aá©@ \u009f¯þ\u0083]\u009c½c\u001c4{\u0005ÚK9C\u0098k÷sÝ\u0000\u0082\fc\u000bÀ*¡3\u00079X1¹(\u001aG{\u0006Ü\u007f=x\u009e[ÿXP^±¤\u0012¹s\u0091ÔÛ5ú\u0096÷÷ÂHÖ©Ý\t#juË\t,\u001c\u008d/î{O| M\u0001[bªÃ¬$\u008c\u0085\u009bæ\u00adGá\u0098èù\u0087ZÔºk\u001b:|\u000eÝ\t>\u0010\u009fið7QV²O\u0013¨t«Õ\u00886\u008e\u0097\u0094èéIá\u0000c_o¾h\u001dI|PÛf:?\u0099\u0007ø\tW\t¶ã\u0015ètÌÓ\u00962·\u0091ºð\u008fO\u009b®\u0090\u000enm8ÌD+Q\u008abé6H1§\u0000\u0006\u0016eçÄá#Á\u0082Öáà@¬\u009f¥þÊ]\u0099½&\u001c3{\nÚ\u0017\u001dØBÒ£Ú\u0000ìaäÆ\u009d'\u0086\u0084÷å¦Jª«M\bLiuÎ#/\u0007\u008c\u0006í'R2³(\u0013ÝpÁÑö6¡\u0097\u0099ô\u0084U\u0086º¼\u0000c_o¾h\u001dI|PÛf:$\u0099\u0003ø\u0002W\u001f¶á\u0015ºtÛÓÞ2«\u0091§ð\u008cO\u008a®Ü\u000ehm}Ì\u0006+R\u008a-é<H2§\u0003\u0006\reíÄò#\u0084\u0082Ðá¹@î\u009f½þÊ]ß½/\u001c3\u0015ÿJó«ô\bÕiÌÎú/»\u008c\u008aí\u008dB\u0096£u\u0000kaQÆD',\u0084nå\u0011Z\u0007»\u0013\u001bâx¤ÙØ>Í\u009fþü¯]\u00ad²\u009d\u0013\u0096p{Ñ\u007f6V\u0097Jô|Uz\u008a)ë\u0018H\u0017¨ó\tìnÛÏ\u008c,\u0085\u008d«â»CÓ Ã\u0000r_k¾h\u001d_|JÛ(:t\u0099\u0011ø\u0004W\u001f¶ø\u0015ÿtÅÓÓ2ª\u0091¦ðÀO\u009d®\u0094\u000eemmÌJ+P\u008abé5H0§\b\u0006ZeÿÄÿ#Ð\u0082Úáà@é\u009fçþÍeå:ûÛþxÌ\u0019Ô¾á_ ü\u0091\u009d\u00962\u008dÓnpp\u0011J¶_W7ôu\u0095\u0014*\u0001Ë\u0014kø\bó©ÅN\u0093ï \u008c¹-½ÂËc\u008a\u0000f¡eFKç\u0015\u0084`%rú|G¦\u0018¤ù·Z\u009b;\u0094\u009cí}äÞÂ¿\u0095\u0010Èñ=R>3\u0019\u0094\u0016ulÖr·K\b_é\u0019I¼*µ\u008b\u008cl\u0084Íë®ñ\u000f»àÌAÑ\")\u0083sd\u0016Å\u001e¦q\u0007cØ9¹\b\u001a\u0006úäD\u0018\u0000&_(\u0000|_r\u0000=_3\u0000!_3FV\u0000>GP\u0018_\u0000>_3\u0000+¢J\u0004ã[í\u0000-_#\u0000*\u0000/Õ%\u0000.\u0000[\u0000=\u0003X\u0000m_g¾o\u001dY|QÛ(:3\u0099Bø\u0013W\u0012¶ã\u0015étÁÓØ2£\u0091òðÇOÇ®ÛU\u009d\u0000U_`¾y\u001dR|HÛ#:7\u0099\u0016ø\u0015W\u001a¶¬\u0015õtØÓÓ2¶\u0091³ð\u0094O\u0081®\u008e\u000e*ìF³sRjñA\u0090[70Ö$u\u0005\u0014\u0006»\tZ¿ùý\u0098Ô?ÎÞ²}¯\u001cÓ\u0000C_o¾i\u001dM|PÛ2:t\u0099\u0007ø\bW\u001d¶é\u0015êtÜÓß2«\u0091¼\u0000E_v¾l\u001dO|[Û2:1\u0099\u0006øPW\u0017¶è\u0015ÿtÆÓÂ2\u00ad\u0091´ð\u0089O\u008b®\u008e\u000e*mzÌS+@\u008abé7H1§\u0018\u0006ZÇä\u0098ýyìÚÐ»Ë\u001c³ý¶^\u009d?\u0089\u0090\u0086q:Òo³R\u0014Aõ!V77V\u0088\u0016i\u000bÉñªë\u000bÃì\u0082M§.®\u008f§`\u008fÁ\u0080¢z\u0003 äPEA&v\u0087>X%9\u0010\u009a\u0002zÿÛõ¼Ñ\u001dÂþ\u0088_¸0µ\u0091Þr\u0089Ó|´r\u0015Yö[WK((\u0089'j\u001fË\f«´\f¡í N\u0094/\u0082\u0080ðaéÂÕ\u0000s_{¾~\u001dY|[Û4:=\u0099\u0012ø\u0004W^¶ÿ\u0015òtÇÓÃ2¨\u0091¶ðÀO\u008c®\u0099\u000e*m{ÌJ+[\u008a1é5H:§L\u0006\reáÄâ#Ì\u0082\u0092áç@\u0093\u009fû\u007fÃ ÖÁÝbë\u0000s_{¾l\u001dO|Jc²<ºÝ\u00ad~\u008e\u001f\u008b¸§YæúË\u009bÞ4ÊÕ!v?\u0017I°\u0015Q`ò3\u0093G,@ÍQm§\u000e¶¯\u0090H\u0090éç\u008a±+ýÄÔe\u009b\u0006(§w@\bá\u0016\u0082u#gür\u009dO>\u0019Þ®\u007f»\u0018\u0095¹\u009eZ\u009cûì\u0094ï5ÀÖØw+\u0000E_v¾l\u001dO|[Û2:1\u0099\u0006øPW-¶ø\u0015ètÁÓØ2£\u0091òð\u0082O\u009b®\u0088\u000e*m\u007fÌI+@\u008abXz\u0085²Ú¥;«\u0098\u009cùÀ^õ¿é\u001cÃ}\u0088ÒÕ3<\u0090-ñ\u0005V\u0002·x\u0014*uZÊS+\u0004\u008b´è¯I\u0092®\u0080\u000fõlÿÍã\"Ð\u0083\u0082à2A7¦\\\u0007\u000bd8Å`\u001ae{^ØU8»\u0099ìþ\u009b_\u008e¼\u0092\u001dñrðÓ\u00900\u0089\u0091föm<l\r R«³£\u0010\u0092qÔÖù7ð\u0094ÁõÉZÞ»$\u0018vy\u0001Þ\u0014?l\u009c>ý[BK£D\u0003®`ôÁÍÁnÖ\u009b\u0089®h·Ë\u009cª\u0086\ríìùOØ.Û\u0081Ô`bÃ1¢\b\u0005\u001cä*Gs&H\u0099\u0000xFØ«»½\u001a\u008dý\u0094\\ÿ'Èxû\u0099ò:Â[Åü¿\u001d°¾\u0080ß\u0093pÓ\u0091v2\u007fSLôW\u0015,¶\u007f×\nh\u0006\u0089\u0005)óJüëÅ\fÞ\u00adïÎ³o¶\u0080\u0099!\u0083B%ão\u0004F¥TÆ(g-\u0000E_v¾\u007f\u001dO|HÛ2:=\u0099\rø\u001eW^¶û\u0015òtÁÓÚ2¡\u0091òð\u0090O\u008b®\u0099\u000eamqÌH+S\u008abé1H*§L\u0006\u0014eíÄî#Ð\u0082\u0092á´@¡\u009f·þ\u008f]\u0096Í>\u0092qsdÐ@±C\u0016*÷j\u0000E_v¾l\u001dO|[Û2:1\u0099\u0006øP\u0000 _l¾i\u001d^|\u0018Û4:1\u0099\u0001ø\u0015W\u0017¶ú\u0015ÿtÌÓ\u0096ô¶«µJª\u0000P_o¾n\u001dY|]Û4:{\u0000P_o¾n\u001dY|QÛ(:3\u0099Bø\u0016W\u001f¶å\u0015ötÍÓÒ2ä\u0091¶ð\u0095O\u008b®Ü\u000e~mwÌ\u0006+Q\u008a0é\"H1§\u001e\u0006\t".getBytes("ISO-8859-1")).asCharBuffer().get(cArr, 0, 1307);
        c = cArr;
        f5542d = -431681584749846770L;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void G(com.json.adqualitysdk.sdk.i.dt r4, com.ironsource.adqualitysdk.sdk.i.dt.a r5, java.lang.Object r6, java.lang.String r7) {
        /*
            r3 = this;
            int r0 = com.json.adqualitysdk.sdk.i.dl.f5544f
            int r0 = r0 + 101
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.dl.f5543e = r1
            int r0 = r0 % 2
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L10
            r0 = 0
            goto L11
        L10:
            r0 = 1
        L11:
            if (r0 == r2) goto L23
            com.ironsource.adqualitysdk.sdk.i.dt$a r0 = r4.m696()
            boolean r0 = r0.equals(r5)
            r2 = 18
            int r2 = r2 / r1
            if (r0 != 0) goto L49
            goto L36
        L21:
            r4 = move-exception
            throw r4
        L23:
            com.ironsource.adqualitysdk.sdk.i.dt$a r0 = r4.m696()
            boolean r0 = r0.equals(r5)
            r1 = 96
            if (r0 != 0) goto L32
            r0 = 60
            goto L34
        L32:
            r0 = 96
        L34:
            if (r0 == r1) goto L49
        L36:
            java.lang.String r5 = r5.toString()
            com.ironsource.adqualitysdk.sdk.i.dt$a r4 = r4.m696()
            java.lang.String r4 = r4.toString()
            java.lang.String r4 = N(r5, r4, r6, r7)
            r3.y(r4)
        L49:
            int r4 = com.json.adqualitysdk.sdk.i.dl.f5544f
            int r4 = r4 + 81
            int r5 = r4 % 128
            com.json.adqualitysdk.sdk.i.dl.f5543e = r5
            int r4 = r4 % 2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dl.G(com.ironsource.adqualitysdk.sdk.i.dt, com.ironsource.adqualitysdk.sdk.i.dt$a, java.lang.Object, java.lang.String):void");
    }

    private dx H(List<dt> list, String str) {
        int i = f5544f + 29;
        f5543e = i % 128;
        if ((i % 2 != 0 ? '1' : 'X') != 'X') {
            int i2 = 48 / 0;
            if (b(list).m698(str)) {
                return null;
            }
        } else if (b(list).m698(str)) {
            return null;
        }
        dx dxVarM663 = m663(list);
        StringBuilder sb = new StringBuilder();
        sb.append(w((ViewConfiguration.getKeyRepeatDelay() >> 16) + 36, 273 - TextUtils.lastIndexOf("", '0', 0, 0), (char) ((-1) - TextUtils.lastIndexOf("", '0', 0, 0))).intern());
        sb.append(str);
        I(list, str, dxVarM663, sb.toString());
        int i3 = f5544f + 13;
        f5543e = i3 % 128;
        int i4 = i3 % 2;
        return dxVarM663;
    }

    private void I(List<dt> list, String str, Object obj, String str2) {
        int i = f5544f + 97;
        f5543e = i % 128;
        if (i % 2 == 0) {
            P(c(list), str, obj, str2);
        } else {
            P(c(list), str, obj, str2);
            int i2 = 88 / 0;
        }
        int i3 = f5543e + 23;
        f5544f = i3 % 128;
        int i4 = i3 % 2;
    }

    private fr J(List<dt> list) {
        K(list, w(1 - (ViewConfiguration.getPressedStateDuration() >> 16), (ViewConfiguration.getFadingEdgeLength() >> 16) + 110, (char) (64739 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24))).intern(), w(41 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), (-16777016) - Color.rgb(0, 0, 0), (char) ((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 452)).intern());
        dx dxVarH = H(list, w(1 - (Process.myTid() >> 22), 43 - (ViewConfiguration.getLongPressTimeout() >> 16), (char) ((ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 53476)).intern());
        dx dxVarM663 = m663(list);
        I(list, w(1 - (ViewConfiguration.getPressedStateDuration() >> 16), 43 - (ViewConfiguration.getKeyRepeatTimeout() >> 16), (char) ((TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 53476)).intern(), dxVarM663, w(33 - (ViewConfiguration.getScrollDefaultDelay() >> 16), (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + PsExtractor.VIDEO_STREAM_MASK, (char) (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))).intern());
        fr frVarV = v(new fn(dxVarH, dxVarM663, H(list, w(1 - Color.green(0), Gravity.getAbsoluteGravity(0, 0) + 151, (char) (TextUtils.lastIndexOf("", '0', 0) + 1)).intern()), D(list)));
        int i = f5543e + 85;
        f5544f = i % 128;
        if (i % 2 != 0) {
            return frVarV;
        }
        int i2 = 38 / 0;
        return frVarV;
    }

    private void K(List<dt> list, String str, String str2) {
        int i = f5543e + 103;
        f5544f = i % 128;
        int i2 = i % 2;
        I(list, str, null, str2);
        int i3 = f5543e + 49;
        f5544f = i3 % 128;
        int i4 = i3 % 2;
    }

    private dx L(dx dxVar, List<dt> list) {
        int i = f5543e + 77;
        f5544f = i % 128;
        int i2 = i % 2;
        dt dtVarC = c(list);
        List<dx> listG = null;
        if (!dtVarC.m690()) {
            StringBuilder sb = new StringBuilder();
            sb.append(w((ViewConfiguration.getScrollBarSize() >> 8) + 28, 864 - TextUtils.indexOf((CharSequence) "", '0', 0, 0), (char) (ImageFormat.getBitsPerPixel(0) + 1)).intern());
            sb.append(dtVarC);
            z(sb.toString(), null);
        }
        String strM701 = dtVarC.m701();
        dt dtVarC2 = c(list);
        if ((dtVarC2.m698(w(-ExpandableListView.getPackedPositionChild(0L), 773 - (ViewConfiguration.getKeyRepeatTimeout() >> 16), (char) (((Process.getThreadPriority(0) + 20) >> 6) + 18026)).intern()) ? '\\' : '*') != '*') {
            int i3 = f5544f + 111;
            f5543e = i3 % 128;
            int i4 = i3 % 2;
            listG = g(list);
            I(list, w(Color.rgb(0, 0, 0) + 16777217, (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 110, (char) (Color.rgb(0, 0, 0) + 16841955)).intern(), listG, w((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 63, 893 - View.combineMeasuredStates(0, 0), (char) (View.getDefaultSize(0, 0) + 51094)).intern());
        } else if (!dtVarC2.m698(w((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), 109 - TextUtils.lastIndexOf("", '0'), (char) (Color.rgb(0, 0, 0) + 16841955)).intern())) {
            this.f5545g--;
            return u(new dv(dxVar, strM701, Cdo.m669(strM701, dtVarC2.m700())));
        }
        return u(new ea(dxVar, strM701, listG, E(list, w(-TextUtils.lastIndexOf("", '0'), (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 150, (char) (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern()), Cdo.m669(strM701, dtVarC2.m700())));
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0102  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.json.adqualitysdk.sdk.i.fr M(java.util.List<com.json.adqualitysdk.sdk.i.dt> r13) {
        /*
            Method dump skipped, instruction units count: 304
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dl.M(java.util.List):com.ironsource.adqualitysdk.sdk.i.fr");
    }

    private static String N(String str, String str2, Object obj, String str3) {
        String string;
        int i = f5543e + 23;
        f5544f = i % 128;
        if (i % 2 == 0) {
            throw null;
        }
        String string2 = "";
        if (obj != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(w((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 6, 1238 - TextUtils.lastIndexOf("", '0'), (char) (52509 - MotionEvent.axisFromString(""))).intern());
            sb.append(obj);
            string = sb.toString();
        } else {
            string = "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(w(9 - View.resolveSize(0, 0), (ViewConfiguration.getTouchSlop() >> 8) + 1246, (char) TextUtils.indexOf("", "")).intern());
        sb2.append(str);
        sb2.append(string);
        sb2.append(w(14 - View.resolveSizeAndState(0, 0, 0), 1255 - (ViewConfiguration.getDoubleTapTimeout() >> 16), (char) (ViewConfiguration.getScrollBarFadeDuration() >> 16)).intern());
        sb2.append(str2);
        if (str3 != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(w(3 - (ViewConfiguration.getEdgeSlop() >> 16), TextUtils.getOffsetAfter("", 0) + 1269, (char) ((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 62613)).intern());
            sb3.append(str3);
            string2 = sb3.toString();
        } else {
            int i2 = f5544f + 73;
            f5543e = i2 % 128;
            int i3 = i2 % 2;
        }
        sb2.append(string2);
        return sb2.toString();
    }

    private <T> List<T> O(List<dt> list, String str, e<T> eVar) {
        ArrayList arrayList = new ArrayList();
        if (!c(list).m698(str)) {
            int i = f5544f + 99;
            f5543e = i % 128;
            this.f5545g = i % 2 != 0 ? this.f5545g + 0 : this.f5545g - 1;
            arrayList.add(eVar.mo665(list));
            dt dtVarC = c(list);
            while (true) {
                if ((dtVarC.m698(w(1 - Color.blue(0), MotionEvent.axisFromString("") + 1121, (char) ((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 15423)).intern()) ? '8' : (char) 5) != '8') {
                    StringBuilder sb = new StringBuilder();
                    sb.append(w((Process.myPid() >> 22) + 22, 1120 - Process.getGidForName(""), (char) (View.MeasureSpec.makeMeasureSpec(0, 0) + 3532)).intern());
                    sb.append(str);
                    sb.append(w(1 - KeyEvent.keyCodeFromString(""), (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 1142, (char) ((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 49480)).intern());
                    P(dtVarC, str, arrayList, sb.toString());
                    break;
                }
                int i2 = f5544f + 79;
                f5543e = i2 % 128;
                if (i2 % 2 != 0) {
                    arrayList.add(eVar.mo665(list));
                    c(list);
                    throw null;
                }
                arrayList.add(eVar.mo665(list));
                dtVarC = c(list);
            }
        }
        int i3 = f5544f + 89;
        f5543e = i3 % 128;
        int i4 = i3 % 2;
        return arrayList;
    }

    private void P(dt dtVar, String str, Object obj, String str2) {
        int i = f5543e + 119;
        f5544f = i % 128;
        if (i % 2 == 0) {
            dtVar.m698(str);
            throw null;
        }
        if (!dtVar.m698(str)) {
            StringBuilder sb = new StringBuilder();
            sb.append(w(Color.blue(0) + 1, Color.alpha(0) + 1143, (char) ((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 49480)).intern());
            sb.append(str);
            sb.append(w((ViewConfiguration.getJumpTapTimeout() >> 16) + 1, (Process.myTid() >> 22) + 1143, (char) ((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 49482)).intern());
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(w(-MotionEvent.axisFromString(""), (KeyEvent.getMaxKeyCode() >> 16) + 1143, (char) (Color.rgb(0, 0, 0) + 16826697)).intern());
            sb2.append(dtVar.m701());
            sb2.append(w(-(ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), 1144 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), (char) (TextUtils.indexOf("", "", 0, 0) + 49481)).intern());
            y(N(string, sb2.toString(), obj, str2));
        }
        int i2 = f5544f + 49;
        f5543e = i2 % 128;
        if (!(i2 % 2 != 0)) {
        } else {
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0024, code lost:
    
        if ((r4.f5545g < r5.size() ? 18 : '9') != '9') goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
    
        if ((r4.f5545g >= r5.size()) != true) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0036, code lost:
    
        r5 = com.json.adqualitysdk.sdk.i.dl.f5543e;
        r0 = r5 + 61;
        com.json.adqualitysdk.sdk.i.dl.f5544f = r0 % 128;
        r0 = r0 % 2;
        r5 = r5 + 41;
        com.json.adqualitysdk.sdk.i.dl.f5544f = r5 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0048, code lost:
    
        if ((r5 % 2) == 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004a, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004c, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004f, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean a(java.util.List<com.json.adqualitysdk.sdk.i.dt> r5) {
        /*
            r4 = this;
            int r0 = com.json.adqualitysdk.sdk.i.dl.f5544f
            int r0 = r0 + 97
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.dl.f5543e = r1
            int r0 = r0 % 2
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L10
            r0 = 0
            goto L11
        L10:
            r0 = 1
        L11:
            if (r0 == r2) goto L29
            int r0 = r4.f5545g
            int r5 = r5.size()
            r3 = 6
            int r3 = r3 / r1
            r3 = 57
            if (r0 >= r5) goto L22
            r5 = 18
            goto L24
        L22:
            r5 = 57
        L24:
            if (r5 == r3) goto L4f
            goto L36
        L27:
            r5 = move-exception
            throw r5
        L29:
            int r0 = r4.f5545g
            int r5 = r5.size()
            if (r0 >= r5) goto L33
            r5 = 0
            goto L34
        L33:
            r5 = 1
        L34:
            if (r5 == r2) goto L4f
        L36:
            int r5 = com.json.adqualitysdk.sdk.i.dl.f5543e
            int r0 = r5 + 61
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.dl.f5544f = r1
            int r0 = r0 % 2
            int r5 = r5 + 41
            int r0 = r5 % 128
            com.json.adqualitysdk.sdk.i.dl.f5544f = r0
            int r5 = r5 % 2
            if (r5 == 0) goto L4b
            return r2
        L4b:
            r5 = 0
            throw r5     // Catch: java.lang.Throwable -> L4d
        L4d:
            r5 = move-exception
            throw r5
        L4f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dl.a(java.util.List):boolean");
    }

    private dt b(List<dt> list) {
        try {
            if ((a(list) ? 'R' : (char) 18) != 18) {
                int i = f5543e + 9;
                f5544f = i % 128;
                if (i % 2 != 0) {
                    return list.get(this.f5545g);
                }
                int i2 = 4 / 0;
                return list.get(this.f5545g);
            }
        } catch (Exception e2) {
            z(w((-16777179) - Color.rgb(0, 0, 0), (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 1202, (char) KeyEvent.normalizeMetaState(0)).intern(), e2);
        }
        int i3 = f5544f + 67;
        f5543e = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 27 : (char) 1) != 27) {
            return null;
        }
        throw null;
    }

    private dt c(List<dt> list) {
        int i = f5543e + 1;
        f5544f = i % 128;
        try {
        } catch (Exception e2) {
            z(w(34 - View.MeasureSpec.getMode(0), 1168 - TextUtils.indexOf("", "", 0, 0), (char) (View.resolveSize(0, 0) + 10125)).intern(), e2);
        }
        if (!(i % 2 != 0)) {
            a(list);
            throw null;
        }
        if (a(list)) {
            int i2 = this.f5545g;
            this.f5545g = i2 + 1;
            return list.get(i2);
        }
        z(w((ViewConfiguration.getJumpTapTimeout() >> 16) + 24, TextUtils.indexOf((CharSequence) "", '0', 0) + 1145, (char) (54990 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)))).intern(), null);
        int i3 = f5544f + 31;
        f5543e = i3 % 128;
        if (i3 % 2 == 0) {
            return null;
        }
        throw null;
    }

    private Map<String, dx> d(List<dt> list) {
        HashMap map = new HashMap();
        Iterator it = O(list, w(View.resolveSize(0, 0) + 1, TextUtils.getCapsMode("", 0, 0) + 764, (char) ((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 17508)).intern(), new a()).iterator();
        while (true) {
            if (!it.hasNext()) {
                return map;
            }
            int i = f5543e + 5;
            f5544f = i % 128;
            int i2 = i % 2;
            Pair pair = (Pair) it.next();
            map.put(pair.first, pair.second);
            int i3 = f5544f + 3;
            f5543e = i3 % 128;
            int i4 = i3 % 2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.json.adqualitysdk.sdk.i.dx e(java.util.List<com.json.adqualitysdk.sdk.i.dt> r10) {
        /*
            r9 = this;
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r9.f(r10)
        L4:
            boolean r1 = r9.a(r10)
            if (r1 == 0) goto Lb5
            int r1 = com.json.adqualitysdk.sdk.i.dl.f5543e
            int r1 = r1 + 65
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.dl.f5544f = r2
            int r1 = r1 % 2
            if (r1 == 0) goto La6
            com.ironsource.adqualitysdk.sdk.i.dt r1 = r9.c(r10)
            java.lang.String r1 = r1.m701()
            int r2 = r1.hashCode()
            r3 = 46
            r4 = 48
            java.lang.String r5 = ""
            r6 = -1
            r7 = 0
            r8 = 1
            if (r2 == r3) goto L58
            r3 = 91
            if (r2 == r3) goto L32
            goto L90
        L32:
            int r2 = android.view.ViewConfiguration.getPressedStateDuration()
            int r2 = r2 >> 16
            int r2 = 1 - r2
            int r3 = android.text.TextUtils.lastIndexOf(r5, r4)
            int r3 = r3 + 790
            int r4 = android.view.View.combineMeasuredStates(r7, r7)
            char r4 = (char) r4
            java.lang.String r2 = w(r2, r3, r4)
            java.lang.String r2 = r2.intern()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L54
            goto L55
        L54:
            r7 = 1
        L55:
            if (r7 == r8) goto L90
            goto L8d
        L58:
            int r2 = android.text.TextUtils.indexOf(r5, r4, r7, r7)
            int r2 = -r2
            r3 = 0
            float r4 = android.util.TypedValue.complexToFraction(r7, r3, r3)
            int r3 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
            int r3 = 788 - r3
            int r4 = android.view.ViewConfiguration.getEdgeSlop()
            int r4 = r4 >> 16
            char r4 = (char) r4
            java.lang.String r2 = w(r2, r3, r4)
            java.lang.String r2 = r2.intern()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L7d
            r1 = 1
            goto L7e
        L7d:
            r1 = 0
        L7e:
            if (r1 == r8) goto L81
            goto L90
        L81:
            int r1 = com.json.adqualitysdk.sdk.i.dl.f5543e
            int r1 = r1 + 29
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.dl.f5544f = r2
            int r1 = r1 % 2
            if (r1 != 0) goto L8f
        L8d:
            r6 = 1
            goto L90
        L8f:
            r6 = 0
        L90:
            if (r6 == 0) goto La0
            if (r6 == r8) goto L9a
            int r10 = r9.f5545g
            int r10 = r10 - r8
            r9.f5545g = r10
            return r0
        L9a:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r9.C(r0, r10)
            goto L4
        La0:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r9.L(r0, r10)
            goto L4
        La6:
            com.ironsource.adqualitysdk.sdk.i.dt r10 = r9.c(r10)
            java.lang.String r10 = r10.m701()
            r10.hashCode()
            r10 = 0
            throw r10     // Catch: java.lang.Throwable -> Lb3
        Lb3:
            r10 = move-exception
            throw r10
        Lb5:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dl.e(java.util.List):com.ironsource.adqualitysdk.sdk.i.dx");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0169  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.json.adqualitysdk.sdk.i.dx f(java.util.List<com.json.adqualitysdk.sdk.i.dt> r21) {
        /*
            Method dump skipped, instruction units count: 957
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dl.f(java.util.List):com.ironsource.adqualitysdk.sdk.i.dx");
    }

    private List<dx> g(List<dt> list) {
        List<dx> listO = O(list, w(-ExpandableListView.getPackedPositionChild(0L), 774 - TextUtils.indexOf("", ""), (char) View.MeasureSpec.getSize(0)).intern(), new c());
        int i = f5544f + 25;
        f5543e = i % 128;
        int i2 = i % 2;
        return listO;
    }

    private Pair<String, dx> h(List<dt> list) {
        int i = f5544f + 113;
        f5543e = i % 128;
        int i2 = i % 2;
        dt dtVarC = c(list);
        if (!dtVarC.m699()) {
            StringBuilder sb = new StringBuilder();
            sb.append(w((ViewConfiguration.getWindowTouchSlop() >> 8) + 24, TextUtils.lastIndexOf("", '0') + 1048, (char) TextUtils.getTrimmedLength("")).intern());
            sb.append(dtVarC);
            z(sb.toString(), null);
        }
        String strM701 = dtVarC.m701();
        I(list, w(-((byte) KeyEvent.getModifierMetaStateMask()), 1071 - (ViewConfiguration.getKeyRepeatDelay() >> 16), (char) (22593 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)))).intern(), strM701, w(47 - Process.getGidForName(""), 1072 - TextUtils.getTrimmedLength(""), (char) (34265 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)))).intern());
        Pair<String, dx> pair = new Pair<>(strM701, m663(list));
        int i3 = f5544f + 9;
        f5543e = i3 % 128;
        int i4 = i3 % 2;
        return pair;
    }

    private dx i(List<dt> list) {
        dx dxVarL = l(list);
        if (!a(list)) {
            return dxVarL;
        }
        Cdo cdoM669 = Cdo.m669(this.i, dxVarL.m704());
        String strM701 = c(list).m701();
        byte b2 = -1;
        int iHashCode = strM701.hashCode();
        if (iHashCode == 43) {
            if (strM701.equals(w(Gravity.getAbsoluteGravity(0, 0) + 1, TextUtils.indexOf((CharSequence) "", '0') + 780, (char) TextUtils.indexOf("", "", 0, 0)).intern())) {
                int i = f5544f + 47;
                f5543e = i % 128;
                int i2 = i % 2;
                b2 = 0;
            }
        } else if (iHashCode != 45) {
            if (iHashCode != 1376) {
                if (iHashCode == 1440) {
                    if (!(strM701.equals(w(2 - View.MeasureSpec.makeMeasureSpec(0, 0), (ViewConfiguration.getWindowTouchSlop() >> 8) + 783, (char) (1 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)))).intern()) ? false : true)) {
                        b2 = 3;
                    }
                }
            } else if (strM701.equals(w(3 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 781, (char) (TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 1225)).intern())) {
                int i3 = f5543e + 79;
                f5544f = i3 % 128;
                b2 = i3 % 2 == 0 ? (byte) 4 : (byte) 2;
            }
        } else if (strM701.equals(w((ViewConfiguration.getTapTimeout() >> 16) + 1, 781 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), (char) (Color.alpha(0) + 41575)).intern())) {
            b2 = 1;
        }
        if (b2 == 0) {
            return u(new fc(dxVarL, i(list), cdoM669));
        }
        if (b2 == 1) {
            return u(new ep(dxVarL, i(list), cdoM669));
        }
        if (b2 == 2) {
            return u(new es((ej) dxVarL, cdoM669));
        }
        if (b2 != 3) {
            this.f5545g--;
            return dxVarL;
        }
        dx dxVarU = u(new ek((ej) dxVarL, cdoM669));
        int i4 = f5543e + 97;
        f5544f = i4 % 128;
        int i5 = i4 % 2;
        return dxVarU;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.json.adqualitysdk.sdk.i.dx j(java.util.List<com.json.adqualitysdk.sdk.i.dt> r17) {
        /*
            Method dump skipped, instruction units count: 456
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dl.j(java.util.List):com.ironsource.adqualitysdk.sdk.i.dx");
    }

    private fr k(List<dt> list) {
        K(list, w(1 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)), 44 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), (char) (AndroidCharacter.getMirror('0') + 53428)).intern(), w(38 - View.resolveSizeAndState(0, 0, 0), 727 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (char) ((ViewConfiguration.getKeyRepeatDelay() >> 16) + 18373)).intern());
        fr frVarV = v(new fj());
        int i = f5544f + 101;
        f5543e = i % 128;
        int i2 = i % 2;
        return frVarV;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006f A[PHI: r2 r12
      0x006f: PHI (r2v17 com.ironsource.adqualitysdk.sdk.i.do) = (r2v7 com.ironsource.adqualitysdk.sdk.i.do), (r2v19 com.ironsource.adqualitysdk.sdk.i.do) binds: [B:22:0x006b, B:14:0x004a] A[DONT_GENERATE, DONT_INLINE]
      0x006f: PHI (r12v5 java.lang.String) = (r12v2 java.lang.String), (r12v8 java.lang.String) binds: [B:22:0x006b, B:14:0x004a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a5 A[PHI: r2 r12
      0x00a5: PHI (r2v9 com.ironsource.adqualitysdk.sdk.i.do) = (r2v7 com.ironsource.adqualitysdk.sdk.i.do), (r2v19 com.ironsource.adqualitysdk.sdk.i.do) binds: [B:21:0x0069, B:13:0x0048] A[DONT_GENERATE, DONT_INLINE]
      0x00a5: PHI (r12v4 java.lang.String) = (r12v2 java.lang.String), (r12v8 java.lang.String) binds: [B:21:0x0069, B:13:0x0048] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d5 A[PHI: r2 r12
      0x00d5: PHI (r2v8 com.ironsource.adqualitysdk.sdk.i.do) = (r2v7 com.ironsource.adqualitysdk.sdk.i.do), (r2v19 com.ironsource.adqualitysdk.sdk.i.do) binds: [B:20:0x0067, B:12:0x0046] A[DONT_GENERATE, DONT_INLINE]
      0x00d5: PHI (r12v3 java.lang.String) = (r12v2 java.lang.String), (r12v8 java.lang.String) binds: [B:20:0x0067, B:12:0x0046] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.json.adqualitysdk.sdk.i.dx l(java.util.List<com.json.adqualitysdk.sdk.i.dt> r17) {
        /*
            Method dump skipped, instruction units count: 329
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dl.l(java.util.List):com.ironsource.adqualitysdk.sdk.i.dx");
    }

    private fg m(List<dt> list) {
        ArrayList arrayList = new ArrayList();
        dt dtVarB = b(list);
        while (true) {
            if ((!dtVarB.m698(w((ViewConfiguration.getPressedStateDuration() >> 16) + 1, 764 - (ViewConfiguration.getDoubleTapTimeout() >> 16), (char) (17509 - KeyEvent.normalizeMetaState(0))).intern()) ? 'L' : '\n') != 'L') {
                this.f5545g++;
                fg fgVar = (fg) v(new fg(arrayList));
                int i = f5544f + 101;
                f5543e = i % 128;
                int i2 = i % 2;
                return fgVar;
            }
            arrayList.add(D(list));
            dtVarB = b(list);
            int i3 = f5544f + 65;
            f5543e = i3 % 128;
            int i4 = i3 % 2;
        }
    }

    private fr n(List<dt> list) {
        fr frVarV = v(new fo(O(list, w((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), (ViewConfiguration.getWindowTouchSlop() >> 8) + 43, (char) (53476 - KeyEvent.getDeadChar(0, 0))).intern(), new b())));
        int i = f5544f + 53;
        f5543e = i % 128;
        if (i % 2 != 0) {
            throw null;
        }
        return frVarV;
    }

    private fr o(List<dt> list) {
        fr frVarV;
        int i = f5544f + 47;
        f5543e = i % 128;
        int i2 = i % 2;
        if (b(list).m698(w((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (ViewConfiguration.getScrollBarSize() >> 8) + 43, (char) (53477 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)))).intern())) {
            frVarV = v(new fm(null));
        } else {
            frVarV = v(new fm(m663(list)));
            int i3 = f5544f + 17;
            f5543e = i3 % 128;
            int i4 = i3 % 2;
        }
        I(list, w(KeyEvent.getDeadChar(0, 0) + 1, AndroidCharacter.getMirror('0') - 5, (char) ((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 53476)).intern(), frVarV, w(36 - (Process.myPid() >> 22), TextUtils.lastIndexOf("", '0', 0, 0) + 656, (char) View.MeasureSpec.getMode(0)).intern());
        return frVarV;
    }

    private fr p(List<dt> list) {
        K(list, w((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 1, ((Process.getThreadPriority(0) + 20) >> 6) + 43, (char) (53476 - TextUtils.indexOf("", "", 0, 0))).intern(), w(35 - (ViewConfiguration.getMaximumFlingVelocity() >> 16), 739 - AndroidCharacter.getMirror('0'), (char) (Color.green(0) + 25991)).intern());
        fr frVarV = v(new fh());
        int i = f5544f + 27;
        f5543e = i % 128;
        if (!(i % 2 != 0)) {
            return frVarV;
        }
        throw null;
    }

    private fr q(List<dt> list) {
        K(list, w(1 - (Process.myTid() >> 22), ViewConfiguration.getScrollBarFadeDuration() >> 16, (char) (Process.getGidForName("") + 1)).intern(), w((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 43, (ViewConfiguration.getDoubleTapTimeout() >> 16) + 400, (char) (ViewConfiguration.getWindowTouchSlop() >> 8)).intern());
        fg fgVarM = m(list);
        K(list, w(5 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), 444 - (ViewConfiguration.getTouchSlop() >> 8), (char) (56675 - (ViewConfiguration.getScrollBarSize() >> 8))).intern(), w(53 - View.MeasureSpec.getSize(0), 449 - View.combineMeasuredStates(0, 0), (char) (1869 - View.MeasureSpec.getMode(0))).intern());
        K(list, w(1 - Color.argb(0, 0, 0, 0), 110 - KeyEvent.normalizeMetaState(0), (char) (64739 - (ViewConfiguration.getKeyRepeatTimeout() >> 16))).intern(), w(41 - View.resolveSizeAndState(0, 0, 0), 502 - Color.red(0), (char) KeyEvent.getDeadChar(0, 0)).intern());
        dt dtVarC = c(list);
        G(dtVarC, dt.a.f45, fgVarM, w(27 - (ViewConfiguration.getLongPressTimeout() >> 16), 542 - MotionEvent.axisFromString(""), (char) (Color.blue(0) + 7605)).intern());
        ej ejVar = (ej) u(new ej(dtVarC.m701(), Cdo.m669(this.i, dtVarC.m700())));
        K(list, w(1 - View.getDefaultSize(0, 0), Color.blue(0) + 151, (char) Gravity.getAbsoluteGravity(0, 0)).intern(), w(39 - KeyEvent.keyCodeFromString(""), TextUtils.indexOf("", "", 0) + 570, (char) (KeyEvent.getMaxKeyCode() >> 16)).intern());
        K(list, w((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 1, (Process.getThreadPriority(0) + 20) >> 6, (char) (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))).intern(), w(TextUtils.indexOf((CharSequence) "", '0', 0) + 47, Gravity.getAbsoluteGravity(0, 0) + 609, (char) ((ViewConfiguration.getPressedStateDuration() >> 16) + 5532)).intern());
        fr frVarV = v(new fq(fgVarM, m(list), ejVar));
        int i = f5544f + 65;
        f5543e = i % 128;
        if ((i % 2 != 0 ? 'b' : '*') == '*') {
            return frVarV;
        }
        throw null;
    }

    private fr r(List<dt> list) {
        K(list, w(-TextUtils.lastIndexOf("", '0', 0, 0), Color.green(0) + 110, (char) (64740 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)))).intern(), w(TextUtils.getOffsetAfter("", 0) + 43, 310 - Color.blue(0), (char) ((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 64075)).intern());
        dx dxVarM663 = m663(list);
        K(list, w(-ImageFormat.getBitsPerPixel(0), 152 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), (char) (ViewConfiguration.getKeyRepeatDelay() >> 16)).intern(), w(47 - (Process.myTid() >> 22), (ViewConfiguration.getFadingEdgeLength() >> 16) + 353, (char) (Process.getGidForName("") + 55391)).intern());
        fr frVarV = v(new fp(dxVarM663, D(list)));
        int i = f5544f + 41;
        f5543e = i % 128;
        int i2 = i % 2;
        return frVarV;
    }

    static /* synthetic */ dx s(dl dlVar, List list) {
        int i = f5543e + 41;
        f5544f = i % 128;
        if (i % 2 == 0) {
            dlVar.f(list);
            throw null;
        }
        dx dxVarF = dlVar.f(list);
        int i2 = f5544f + 47;
        f5543e = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 4 : '/') != 4) {
            return dxVarF;
        }
        throw null;
    }

    private dx t(dt dtVar, List<dt> list) {
        int i = f5544f + 43;
        f5543e = i % 128;
        int i2 = i % 2;
        String strM701 = dtVar.m701();
        byte b2 = -1;
        int iHashCode = strM701.hashCode();
        if (iHashCode == 3392903) {
            if (!(!strM701.equals(w((-16777212) - Color.rgb(0, 0, 0), (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 990, (char) (32684 - TextUtils.lastIndexOf("", '0', 0, 0))).intern()))) {
                b2 = 0;
            }
        } else if (iHashCode == 109801339) {
            if ((strM701.equals(w((ViewConfiguration.getTouchSlop() >> 8) + 5, View.MeasureSpec.makeMeasureSpec(0, 0) + 995, (char) (TextUtils.lastIndexOf("", '0', 0) + 1)).intern()) ? '7' : '\'') != '\'') {
                b2 = 1;
            }
        }
        if (b2 != 0) {
            if (b2 != 1) {
                return null;
            }
            I(list, w((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), 836 - AndroidCharacter.getMirror('0'), (char) (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1))).intern(), dtVar, w(47 - Color.argb(0, 0, 0, 0), TextUtils.lastIndexOf("", '0', 0, 0) + 1001, (char) (TextUtils.getCapsMode("", 0, 0) + 25537)).intern());
            return L(u(new ej(w((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 4, 995 - View.MeasureSpec.getMode(0), (char) TextUtils.indexOf("", "")).intern(), Cdo.m669(this.i, dtVar.m700()))), list);
        }
        fi fiVarM715 = fi.m715();
        int i3 = f5544f + 47;
        f5543e = i3 % 128;
        if (i3 % 2 == 0) {
            return fiVarM715;
        }
        throw null;
    }

    private static dx u(dx dxVar) {
        int i = f5544f + 37;
        f5543e = i % 128;
        int i2 = i % 2;
        dx dxVar2 = a.get(dxVar);
        if ((dxVar2 == null ? 'K' : 'V') != 'K') {
            return dxVar2;
        }
        a.put(dxVar, dxVar);
        int i3 = f5543e + 107;
        f5544f = i3 % 128;
        int i4 = i3 % 2;
        return dxVar;
    }

    private static fr v(fr frVar) {
        int i = f5544f + 59;
        f5543e = i % 128;
        int i2 = i % 2;
        fr frVar2 = b.get(frVar);
        if (!(frVar2 == null)) {
            frVar = frVar2;
        } else {
            int i3 = f5543e + 89;
            f5544f = i3 % 128;
            if ((i3 % 2 == 0 ? '(' : '8') == '(') {
                b.put(frVar, frVar);
                throw null;
            }
            b.put(frVar, frVar);
        }
        int i4 = f5544f + 71;
        f5543e = i4 % 128;
        int i5 = i4 % 2;
        return frVar;
    }

    private static String w(int i, int i2, char c2) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
            char[] cArr = new char[i];
            com.json.adqualitysdk.sdk.i.e.f51 = 0;
            while (true) {
                int i3 = com.json.adqualitysdk.sdk.i.e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) c[i2 + i3]) ^ (((long) i3) * f5542d)) ^ ((long) c2));
                    com.json.adqualitysdk.sdk.i.e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    static /* synthetic */ void x(dl dlVar, String str) {
        int i = f5544f + 71;
        f5543e = i % 128;
        int i2 = i % 2;
        dlVar.y(str);
        int i3 = f5543e + 39;
        f5544f = i3 % 128;
        int i4 = i3 % 2;
    }

    private void y(String str) {
        int i = f5543e + 125;
        f5544f = i % 128;
        char c2 = i % 2 == 0 ? (char) 18 : (char) 11;
        z(str, null);
        if (c2 != 18) {
        } else {
            throw null;
        }
    }

    private void z(String str, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(w(7 - TextUtils.getOffsetBefore("", 0), 1272 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), (char) TextUtils.getTrimmedLength("")).intern());
        sb.append(this.h);
        sb.append(w((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (ViewConfiguration.getFadingEdgeLength() >> 16) + 786, (char) ((-1) - TextUtils.lastIndexOf("", '0', 0))).intern());
        sb.append(this.i);
        cn.m519(sb.toString(), str, th);
        throw new RuntimeException(w(28 - KeyEvent.keyCodeFromString(""), (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 1279, (char) (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1))).intern(), th);
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final dx m663(List<dt> list) {
        dx dxVarJ = j(list);
        if (!a(list)) {
            return dxVarJ;
        }
        int i = f5543e + 85;
        f5544f = i % 128;
        int i2 = i % 2;
        Cdo cdoM669 = Cdo.m669(this.i, dxVarJ.m704());
        String strM701 = c(list).m701();
        byte b2 = -1;
        int iHashCode = strM701.hashCode();
        if (iHashCode == 1216) {
            if ((strM701.equals(w(2 - TextUtils.getOffsetAfter("", 0), MotionEvent.axisFromString("") + 766, (char) (TextUtils.indexOf((CharSequence) "", '0', 0) + 1)).intern()) ? '0' : (char) 21) == '0') {
                int i3 = f5543e + 91;
                f5544f = i3 % 128;
                int i4 = i3 % 2;
            }
        } else if (iHashCode == 3968 && strM701.equals(w(3 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), 768 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), (char) (1 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)))).intern())) {
            int i5 = f5543e + 5;
            f5544f = i5 % 128;
            b2 = (i5 % 2 == 0 ? '\'' : '(') != '\'' ? (byte) 1 : (byte) 0;
        }
        if (b2 != 0) {
            if (b2 == 1) {
                return u(new ey(dxVarJ, m663(list), cdoM669));
            }
            this.f5545g--;
            return dxVarJ;
        }
        dx dxVarU = u(new eh(dxVarJ, m663(list), cdoM669));
        int i6 = f5544f + 21;
        f5543e = i6 % 128;
        if (i6 % 2 == 0) {
            return dxVarU;
        }
        int i7 = 44 / 0;
        return dxVarU;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final fg m664(List<dt> list) {
        int i = f5543e + 9;
        f5544f = i % 128;
        int i2 = i % 2;
        this.f5545g = 0;
        K(list, w(1 - View.MeasureSpec.makeMeasureSpec(0, 0), Color.alpha(0), (char) TextUtils.getOffsetBefore("", 0)).intern(), w(41 - TextUtils.lastIndexOf("", '0', 0), (ViewConfiguration.getPressedStateDuration() >> 16) + 1, (char) TextUtils.getOffsetBefore("", 0)).intern());
        fg fgVarM = m(list);
        int i3 = f5544f + 43;
        f5543e = i3 % 128;
        int i4 = i3 % 2;
        return fgVarM;
    }
}
