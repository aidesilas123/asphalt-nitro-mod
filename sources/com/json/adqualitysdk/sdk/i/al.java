package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
import android.graphics.Color;
import android.os.Process;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import androidx.annotation.NonNull;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.ISAdQualityAdType;
import com.json.adqualitysdk.sdk.ISAdQualityCustomMediationRevenue;
import com.json.adqualitysdk.sdk.ISAdQualityMediationNetwork;
import java.io.UnsupportedEncodingException;
import java.util.Collections;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class al {
    private static char b = 6;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5199d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5200e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5201f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ax f5202g;
    private static char[] a = {'I', 'r', 'o', 'n', 'S', 'u', 'c', 'e', 'C', 's', 't', 'm', 'M', 'd', 'i', 'a', 'R', 'v', '\'', ' ', ':', 'h', 'l', 'b', '-', 'g', 'p', 'y', 'J', 'K', 'L', 'N', 'O', 'P', 'Q', 'T'};
    private static long c = 2056220579762477904L;

    final class a extends je {

        /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.al$a$a, reason: collision with other inner class name */
        final class C0336a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private static int f5203d = 309754210;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private static int f5204e = 1;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private static int f5205f = 1820712783;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private static byte[] f5206g = {Ascii.ETB, -115, -113, 97, 122, 119, 125, 122, -82, 81, -119, 120, 117, -123, -79, 60, 123, -126, 113, -113, 116, -127, 123, 116};
            private static short[] h = null;
            private static int i = 0;
            private static int j = 1;

            C0336a() {
            }

            private static String b(int i2, int i3, byte b, short s, int i4) {
                String string;
                synchronized (n.f132) {
                    StringBuilder sb = new StringBuilder();
                    int i5 = f5204e;
                    int i6 = i2 + i5;
                    boolean z = i6 == -1;
                    if (z) {
                        byte[] bArr = f5206g;
                        i6 = bArr != null ? (byte) (bArr[f5203d + i4] + i5) : (short) (h[f5203d + i4] + i5);
                    }
                    if (i6 > 0) {
                        n.f136 = ((i4 + i6) - 2) + f5203d + (z ? 1 : 0);
                        n.f135 = b;
                        char c = (char) (i3 + f5205f);
                        n.f133 = c;
                        sb.append(c);
                        n.f134 = n.f133;
                        n.f137 = 1;
                        while (n.f137 < i6) {
                            byte[] bArr2 = f5206g;
                            if (bArr2 != null) {
                                int i7 = n.f136;
                                n.f136 = i7 - 1;
                                n.f133 = (char) (n.f134 + (((byte) (bArr2[i7] + s)) ^ n.f135));
                            } else {
                                short[] sArr = h;
                                int i8 = n.f136;
                                n.f136 = i8 - 1;
                                n.f133 = (char) (n.f134 + (((short) (sArr[i8] + s)) ^ n.f135));
                            }
                            sb.append(n.f133);
                            n.f134 = n.f133;
                            n.f137++;
                        }
                    }
                    string = sb.toString();
                }
                return string;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() throws Exception {
                if (!(!al.k(al.this))) {
                    int i2 = j + 5;
                    i = i2 % 128;
                    int i3 = i2 % 2;
                    al.c(al.this).m369(b((ViewConfiguration.getPressedStateDuration() >> 16) - 2, KeyEvent.normalizeMetaState(0) - 1820712674, (byte) (Color.rgb(0, 0, 0) + 16777216), (short) ((-125) - TextUtils.lastIndexOf("", '0')), (-309754211) - TextUtils.lastIndexOf("", '0')).intern());
                    al.e(al.this, false);
                    int i4 = i + 63;
                    j = i4 % 128;
                    int i5 = i4 % 2;
                }
            }
        }

        a() {
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            t.m1044(new C0336a());
        }
    }

    final class b extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static char[] f5207d = {'6', 'i', 'd', 'f', 'e', 'j', 'n', 'l', 'n', 'N', 'N', 'n', 'X', '\\', 't', 's', 'q', 'n', '_', '[', 'm'};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5208e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5209f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private /* synthetic */ ISAdQualityCustomMediationRevenue f5210g;

        b(ISAdQualityCustomMediationRevenue iSAdQualityCustomMediationRevenue) {
            this.f5210g = iSAdQualityCustomMediationRevenue;
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
                System.arraycopy(f5207d, i, cArr, 0, i2);
                if (bArr != null) {
                    char[] cArr2 = new char[i2];
                    i.f68 = 0;
                    char c = 0;
                    while (true) {
                        int i5 = i.f68;
                        if (i5 >= i2) {
                            break;
                        }
                        if (bArr[i5] == 1) {
                            cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c);
                        } else {
                            cArr2[i5] = (char) ((cArr[i5] << 1) - c);
                        }
                        c = cArr2[i5];
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

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            int i = f5208e + 105;
            f5209f = i % 128;
            if ((i % 2 == 0 ? 'D' : 'H') != 'D') {
                al.c(al.this).m374(b(false, new int[]{0, 21, 0, 0}, "\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001").intern(), Collections.singletonList(al.g(al.this, this.f5210g)));
                al.e(al.this, true);
            } else {
                al.c(al.this).m374(b(true, new int[]{0, 21, 0, 0}, "\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001").intern(), Collections.singletonList(al.g(al.this, this.f5210g)));
                al.e(al.this, false);
            }
        }
    }

    public al(ax axVar) {
        this.f5202g = axVar;
        jb.m899().m904(new a());
    }

    private static String a(byte b2, String str, int i) {
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

    private static String b(ISAdQualityMediationNetwork iSAdQualityMediationNetwork) {
        byte size;
        int maximumFlingVelocity;
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.ADMOB) {
            int i = f5199d + 103;
            f5200e = i % 128;
            if (i % 2 == 0) {
                size = (byte) (76 >>> View.MeasureSpec.getSize(1));
                maximumFlingVelocity = (ViewConfiguration.getMaximumFlingVelocity() >> 122) * 4;
            } else {
                size = (byte) (View.MeasureSpec.getSize(0) + 87);
                maximumFlingVelocity = 5 - (ViewConfiguration.getMaximumFlingVelocity() >> 16);
            }
            return a(size, "\u0010\u000e\b\u0005¹", maximumFlingVelocity).intern();
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.DT_FAIR_BID) {
            int i2 = f5200e + 63;
            f5199d = i2 % 128;
            int i3 = i2 % 2;
            return f("稃蕫떗ｬ穥鹚荞껮ᜡඒᘓ", ExpandableListView.getPackedPositionGroup(0L)).intern();
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.HELIUM) {
            return f("앥䂬梣鞙씍宙幯였ꡐ졑", (Process.getThreadPriority(0) + 20) >> 6).intern();
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.LEVEL_PLAY) {
            return a((byte) (88 - ((Process.getThreadPriority(0) + 20) >> 6)), "\u000b\u0003\u0019\b\u0003\u0007\u0003\u0004\f\b", 10 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern();
        }
        if (!(iSAdQualityMediationNetwork != ISAdQualityMediationNetwork.MAX)) {
            int i4 = f5199d + 19;
            f5200e = i4 % 128;
            int i5 = i4 % 2;
            return a((byte) ((ViewConfiguration.getTapTimeout() >> 16) + 2), "\u000e\u001b\u001c\u0014\u0005\u000e\u000f\u0002", 9 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1))).intern();
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.UNITY) {
            int i6 = f5200e + 97;
            f5199d = i6 % 128;
            int i7 = i6 % 2;
            return a((byte) (Gravity.getAbsoluteGravity(0, 0) + 122), "\u0000\u0004\u0010\b!\u0015\u000f\u0007", Process.getGidForName("") + 9).intern();
        }
        if (iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.SELF_MEDIATED) {
            return f("톏뮮뿤\udea9퇼ꂛ褨輿벢㍛ᱠ懰୮上꺡\uf2bd", View.getDefaultSize(0, 0)).intern();
        }
        if ((iSAdQualityMediationNetwork == ISAdQualityMediationNetwork.OTHER ? (char) 16 : (char) 22) == 16) {
            return a((byte) (21 - KeyEvent.getDeadChar(0, 0)), "\u0004\b\u0013\t\u0087", View.getDefaultSize(0, 0) + 5).intern();
        }
        int i8 = f5200e + 105;
        f5199d = i8 % 128;
        if ((i8 % 2 != 0 ? '#' : (char) 14) != '#') {
            return "";
        }
        throw null;
    }

    static /* synthetic */ ax c(al alVar) {
        int i = f5199d;
        int i2 = i + 89;
        f5200e = i2 % 128;
        char c2 = i2 % 2 == 0 ? ';' : (char) 23;
        ax axVar = alVar.f5202g;
        if (c2 != 23) {
            throw null;
        }
        int i3 = i + 9;
        f5200e = i3 % 128;
        if (i3 % 2 == 0) {
            throw null;
        }
        return axVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
    
        if ((r10.getRevenue() < 1.0d) != true) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
    
        if (r10.getRevenue() < 0.0d) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
    
        com.json.adqualitysdk.sdk.i.m.m1020(a((byte) (android.text.TextUtils.lastIndexOf("", '0', 0, 0) + 109), "\u0001\u0002\u0003\u0004\u0005\u0003\u0000\u0002\u0007\b\u000b\u0002\n\u000b\u0005\b\r\u0006\u000e\u000f\u0010\t\u0014\b\u0004\u000f\u000b\r\t\u0001\u0001\u000b", 32 - android.text.TextUtils.getTrimmedLength("")).intern(), a((byte) (80 - (android.view.ViewConfiguration.getScrollBarFadeDuration() >> 16)), "\t\u000e\u0000\u0015\u0007\u0016\n\b\u0001\u000f\u0012\u0007\u0003\u000b\b\u0004\u0007\u0017\u0006\b\u000e\u000f\u0010\t\u0014\b\u0001\u0015\u0007\r\r\u000b\u0004\u0000\b\u0013\u0019\u0007\u000b\r\t\u0001\u0001\u000b\u0015\u0007\u0014\u0003\u0004\u0017\u0013\u0019\u0013\u000b\u0015\u0001\u0003\u0004\u001b\u0000\r\u001f\u0010\t\u000f\fµ", 67 - android.text.TextUtils.indexOf("", "", 0)).intern());
        r10 = com.json.adqualitysdk.sdk.i.al.f5200e + 125;
        com.json.adqualitysdk.sdk.i.al.f5199d = r10 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006b, code lost:
    
        if ((r10 % 2) == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006d, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0070, code lost:
    
        if (r10 == true) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0072, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0074, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007f, code lost:
    
        if (j(r10.getMediationNetwork()) != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0081, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0083, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0084, code lost:
    
        if (r1 == true) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0086, code lost:
    
        com.json.adqualitysdk.sdk.i.m.m1020(a((byte) (108 - android.text.TextUtils.getTrimmedLength("")), "\u0001\u0002\u0003\u0004\u0005\u0003\u0000\u0002\u0007\b\u000b\u0002\n\u000b\u0005\b\r\u0006\u000e\u000f\u0010\t\u0014\b\u0004\u000f\u000b\r\t\u0001\u0001\u000b", (android.os.Process.getElapsedCpuTime() > 0 ? 1 : (android.os.Process.getElapsedCpuTime() == 0 ? 0 : -1)) + 31).intern(), f("诳脉톛皏记騸\ue755❘\ue6c7হ爈짚儝璽삛媜챆\ue26a꾏\uef50㺞兹㩖瀚꧗볰褚ˋК⮶៕韟睁饼\ue28d㡚\ue19dЬ煞쵅岓珴\udc12忌케\udeb0\uaad5\ue098㨓䱴㦞畛钚문葏ؖߜ⛷\u135b꣑爖閭\ue1cc㶐\ued41Ͳ", android.view.View.MeasureSpec.makeMeasureSpec(0, 0)).intern());
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b0, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b9, code lost:
    
        if (h(r10.getAdType()) != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bb, code lost:
    
        com.json.adqualitysdk.sdk.i.m.m1020(a((byte) ((android.view.ViewConfiguration.getTapTimeout() >> 16) + 108), "\u0001\u0002\u0003\u0004\u0005\u0003\u0000\u0002\u0007\b\u000b\u0002\n\u000b\u0005\b\r\u0006\u000e\u000f\u0010\t\u0014\b\u0004\u000f\u000b\r\t\u0001\u0001\u000b", 32 - (android.view.ViewConfiguration.getWindowTouchSlop() >> 8)).intern(), f("\ue1d6㣑\ud870宎\ue195⏠\ueebeਖ਼賢끡篣\ue4db㬸쵥쥰瞝ꙣ宲Ꙥ쉑咻\ue8a1㎽崛쏲Ԩ胱⿊渿鉮Ḿ뫞ᵤ₤\ueb66ᕛ许뷴碵\ue044㚶쨲헥狎ꔦ杮ꌢ춊偳\uf5a5〰塟ﺲʡ趤⬇淦鼤\u1ae3薞ᠷⱳ\ue835პ蝿몯䕤\ue35b㖤ퟲ튤縗ꃢ搨꿱죒佺\uf121㴦宗全ྤ詿㘒棶鳳枵脉៷⤳\uf4f4Ꮫ舲䘡䈦\uee97ㅲ풤\udf7f礞\udfb7懯겴푞䫤︤㧧ꛟ襤\u0b65霵㆚", android.view.ViewConfiguration.getKeyRepeatTimeout() >> 16).intern());
        r10 = com.json.adqualitysdk.sdk.i.al.f5200e + 65;
        com.json.adqualitysdk.sdk.i.al.f5199d = r10 % 128;
        r10 = r10 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f1, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00f2, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean d(com.json.adqualitysdk.sdk.ISAdQualityCustomMediationRevenue r10) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.al.d(com.ironsource.adqualitysdk.sdk.ISAdQualityCustomMediationRevenue):boolean");
    }

    static /* synthetic */ boolean e(al alVar, boolean z) {
        int i = f5199d + 25;
        int i2 = i % 128;
        f5200e = i2;
        int i3 = i % 2;
        alVar.f5201f = z;
        int i4 = i2 + 61;
        f5199d = i4 % 128;
        if (i4 % 2 == 0) {
            return z;
        }
        int i5 = 10 / 0;
        return z;
    }

    private static String f(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (f.f54) {
            char[] cArrM713 = f.m713(c, cArr, i);
            f.f52 = 4;
            while (true) {
                int i2 = f.f52;
                if (i2 < cArrM713.length) {
                    f.f53 = i2 - 4;
                    cArrM713[f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) f.f53) * c));
                    f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    static /* synthetic */ JSONObject g(al alVar, ISAdQualityCustomMediationRevenue iSAdQualityCustomMediationRevenue) {
        int i = f5199d + 15;
        f5200e = i % 128;
        if (i % 2 != 0) {
            return i(iSAdQualityCustomMediationRevenue);
        }
        JSONObject jSONObjectI = i(iSAdQualityCustomMediationRevenue);
        int i2 = 12 / 0;
        return jSONObjectI;
    }

    private static boolean h(ISAdQualityAdType iSAdQualityAdType) {
        if ((iSAdQualityAdType != ISAdQualityAdType.INTERSTITIAL) && iSAdQualityAdType != ISAdQualityAdType.VIDEO) {
            int i = f5199d + 67;
            f5200e = i % 128;
            int i2 = i % 2;
            if ((iSAdQualityAdType != ISAdQualityAdType.REWARDED_VIDEO ? '3' : '?') != '?' && iSAdQualityAdType != ISAdQualityAdType.REWARDED) {
                int i3 = f5200e + 5;
                f5199d = i3 % 128;
                int i4 = i3 % 2;
                return false;
            }
        }
        return true;
    }

    private static JSONObject i(ISAdQualityCustomMediationRevenue iSAdQualityCustomMediationRevenue) {
        dd ddVar = new dd();
        ddVar.m623(true);
        ddVar.m620(Double.valueOf(iSAdQualityCustomMediationRevenue.getRevenue()));
        ddVar.m624(b(iSAdQualityCustomMediationRevenue.getMediationNetwork()));
        ddVar.m622(iSAdQualityCustomMediationRevenue.getPlacement());
        JSONObject jSONObjectM621 = ddVar.m621();
        int i = f5200e + 21;
        f5199d = i % 128;
        if ((i % 2 != 0 ? 'K' : (char) 11) != 'K') {
            return jSONObjectM621;
        }
        throw null;
    }

    private static boolean j(ISAdQualityMediationNetwork iSAdQualityMediationNetwork) {
        int i = f5200e + 47;
        f5199d = i % 128;
        int i2 = i % 2;
        if (!(iSAdQualityMediationNetwork == null)) {
            if ((!TextUtils.isEmpty(b(iSAdQualityMediationNetwork)) ? 'Y' : '@') != '@') {
                int i3 = f5200e + 93;
                f5199d = i3 % 128;
                int i4 = i3 % 2;
                return true;
            }
        }
        int i5 = f5200e + 85;
        f5199d = i5 % 128;
        int i6 = i5 % 2;
        return false;
    }

    static /* synthetic */ boolean k(al alVar) {
        int i = f5200e + 91;
        int i2 = i % 128;
        f5199d = i2;
        int i3 = i % 2;
        boolean z = alVar.f5201f;
        int i4 = i2 + 107;
        f5200e = i4 % 128;
        if ((i4 % 2 == 0 ? 'Z' : '$') != 'Z') {
            return z;
        }
        int i5 = 22 / 0;
        return z;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m297(@NonNull ISAdQualityCustomMediationRevenue iSAdQualityCustomMediationRevenue) {
        int i = f5199d + 3;
        f5200e = i % 128;
        if (!(i % 2 != 0)) {
            d(iSAdQualityCustomMediationRevenue);
            throw null;
        }
        if (d(iSAdQualityCustomMediationRevenue)) {
            t.m1042(new b(iSAdQualityCustomMediationRevenue), ao.m303().mo320());
            int i2 = f5199d + 119;
            f5200e = i2 % 128;
            int i3 = i2 % 2;
        }
    }
}
