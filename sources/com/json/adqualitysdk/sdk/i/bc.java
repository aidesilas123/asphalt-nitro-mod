package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.adcolony.sdk.AdColony;
import com.adcolony.sdk.AdColonyAppOptions;
import com.adcolony.sdk.AdColonyInterstitial;
import com.adcolony.sdk.AdColonyInterstitialListener;
import com.adcolony.sdk.AdColonyReward;
import com.adcolony.sdk.AdColonyRewardListener;
import com.adcolony.sdk.AdColonyZone;
import com.json.adqualitysdk.sdk.ISAdQualityAdType;
import com.json.adqualitysdk.sdk.i.az;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class bc extends az {
    private static long t = 0;
    private static int u = 0;
    private static char v = 17608;
    private static long w = 8985839959269929688L;
    private static int x = 0;
    private static int y = 1;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Integer.valueOf(bc.r((String) list.get(0)));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Integer.valueOf(bc.u((AdColonyReward) list.get(0)));
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bc.m408();
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bc.G((AdColonyRewardListener) bc.I(list, AdColonyRewardListener.class));
            return null;
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bc.m407();
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bc.t((AdColonyReward) list.get(0));
        }
    }

    final class g implements az.d {
        g() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bc.A((AdColonyInterstitial) list.get(0));
        }
    }

    final class h implements az.d {
        h() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bc.E((AdColonyReward) list.get(0));
        }
    }

    final class i implements az.d {
        i() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Boolean.valueOf(bc.C((AdColonyReward) list.get(0)));
        }
    }

    final class j implements az.d {
        j() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bc.w(bc.this, (AdColonyInterstitialListener) list.get(0), chVar);
        }
    }

    final class k implements az.d {
        k() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bc.s();
        }
    }

    final class l implements az.d {
        l() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bc.K((AdColonyInterstitial) list.get(0), (AdColonyInterstitialListener) list.get(1));
            return null;
        }
    }

    final class m implements az.d {
        m() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bc.x((AdColonyInterstitial) list.get(0));
        }
    }

    class n extends AdColonyInterstitialListener implements gy<AdColonyInterstitialListener> {
        private static char b = 6;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5368d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5369e = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private AdColonyInterstitialListener f5370f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ch f5371g;
        private static char[] a = {'A', 'd', 'C', 'o', 'l', 'n', 'y', 'I', 't', 'e', 'r', 's', 'i', 'a', 'L', '.', 'R', 'q', 'u', 'F', 'O', 'p', 'E', 'x', 'g', 'S', 'B', 'D', 'G', 'H', 'J', 'K', 'M', 'N', 'P', 'Q'};
        private static long c = 3469212151058571982L;

        n(AdColonyInterstitialListener adColonyInterstitialListener, ch chVar) {
            this.f5370f = adColonyInterstitialListener;
            this.f5371g = chVar;
        }

        private AdColonyInterstitialListener a() {
            int i = f5368d + 35;
            int i2 = i % 128;
            f5369e = i2;
            int i3 = i % 2;
            AdColonyInterstitialListener adColonyInterstitialListener = this.f5370f;
            int i4 = i2 + 57;
            f5368d = i4 % 128;
            if (!(i4 % 2 != 0)) {
                return adColonyInterstitialListener;
            }
            int i5 = 87 / 0;
            return adColonyInterstitialListener;
        }

        private static String b(byte b2, String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.g.f56) {
                char[] cArr2 = a;
                char c2 = b;
                char[] cArr3 = new char[i];
                if (i % 2 != 0) {
                    i--;
                    cArr3[i] = (char) (cArr[i] - b2);
                }
                if (i > 1) {
                    com.json.adqualitysdk.sdk.i.g.f60 = 0;
                    while (true) {
                        int i2 = com.json.adqualitysdk.sdk.i.g.f60;
                        if (i2 >= i) {
                            break;
                        }
                        com.json.adqualitysdk.sdk.i.g.f58 = cArr[i2];
                        com.json.adqualitysdk.sdk.i.g.f62 = cArr[com.json.adqualitysdk.sdk.i.g.f60 + 1];
                        if (com.json.adqualitysdk.sdk.i.g.f58 == com.json.adqualitysdk.sdk.i.g.f62) {
                            cArr3[com.json.adqualitysdk.sdk.i.g.f60] = (char) (com.json.adqualitysdk.sdk.i.g.f58 - b2);
                            cArr3[com.json.adqualitysdk.sdk.i.g.f60 + 1] = (char) (com.json.adqualitysdk.sdk.i.g.f62 - b2);
                        } else {
                            com.json.adqualitysdk.sdk.i.g.f59 = com.json.adqualitysdk.sdk.i.g.f58 / c2;
                            com.json.adqualitysdk.sdk.i.g.f55 = com.json.adqualitysdk.sdk.i.g.f58 % c2;
                            com.json.adqualitysdk.sdk.i.g.f61 = com.json.adqualitysdk.sdk.i.g.f62 / c2;
                            com.json.adqualitysdk.sdk.i.g.f57 = com.json.adqualitysdk.sdk.i.g.f62 % c2;
                            if (com.json.adqualitysdk.sdk.i.g.f55 == com.json.adqualitysdk.sdk.i.g.f57) {
                                com.json.adqualitysdk.sdk.i.g.f59 = ((com.json.adqualitysdk.sdk.i.g.f59 + c2) - 1) % c2;
                                com.json.adqualitysdk.sdk.i.g.f61 = ((com.json.adqualitysdk.sdk.i.g.f61 + c2) - 1) % c2;
                                int i3 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
                                int i4 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i5 = com.json.adqualitysdk.sdk.i.g.f60;
                                cArr3[i5] = cArr2[i3];
                                cArr3[i5 + 1] = cArr2[i4];
                            } else if (com.json.adqualitysdk.sdk.i.g.f59 == com.json.adqualitysdk.sdk.i.g.f61) {
                                com.json.adqualitysdk.sdk.i.g.f55 = ((com.json.adqualitysdk.sdk.i.g.f55 + c2) - 1) % c2;
                                com.json.adqualitysdk.sdk.i.g.f57 = ((com.json.adqualitysdk.sdk.i.g.f57 + c2) - 1) % c2;
                                int i6 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
                                int i7 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i8 = com.json.adqualitysdk.sdk.i.g.f60;
                                cArr3[i8] = cArr2[i6];
                                cArr3[i8 + 1] = cArr2[i7];
                            } else {
                                int i9 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i10 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
                                int i11 = com.json.adqualitysdk.sdk.i.g.f60;
                                cArr3[i11] = cArr2[i9];
                                cArr3[i11 + 1] = cArr2[i10];
                            }
                        }
                        com.json.adqualitysdk.sdk.i.g.f60 += 2;
                    }
                }
                str2 = new String(cArr3);
            }
            return str2;
        }

        private static String c(String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.f.f54) {
                char[] cArrM713 = com.json.adqualitysdk.sdk.i.f.m713(c, cArr, i);
                com.json.adqualitysdk.sdk.i.f.f52 = 4;
                while (true) {
                    int i2 = com.json.adqualitysdk.sdk.i.f.f52;
                    if (i2 < cArrM713.length) {
                        com.json.adqualitysdk.sdk.i.f.f53 = i2 - 4;
                        cArrM713[com.json.adqualitysdk.sdk.i.f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) com.json.adqualitysdk.sdk.i.f.f53) * c));
                        com.json.adqualitysdk.sdk.i.f.f52++;
                    } else {
                        str2 = new String(cArrM713, 4, cArrM713.length - 4);
                    }
                }
            }
            return str2;
        }

        public void onAudioStarted(AdColonyInterstitial adColonyInterstitial) {
            int i = f5368d + 31;
            f5369e = i % 128;
            int i2 = i % 2;
            bc.this.f(this, this.f5371g, b((byte) (Color.red(0) + 11), "\u0001\u0002\u0003\u0004\u0005\u0004\u0000\u000b\u000b\u0001\t\n\u000b\u0006\u0006\u000e\u0006\u000e\u0010\u0001\u000f\r\u0006\t\u000b\u0003\n\u000b\u0015\t\u0000\u0001\u0013\u0000\u000f\u0000\u001a\u0007\u0010\u0007\t\no", TextUtils.indexOf("", "", 0, 0) + 43).intern(), adColonyInterstitial);
            AdColonyInterstitialListener adColonyInterstitialListener = this.f5370f;
            if (adColonyInterstitialListener != null) {
                adColonyInterstitialListener.onAudioStarted(adColonyInterstitial);
                int i3 = f5369e + 7;
                f5368d = i3 % 128;
                int i4 = i3 % 2;
            }
        }

        public void onAudioStopped(AdColonyInterstitial adColonyInterstitial) {
            int i = f5369e + 121;
            f5368d = i % 128;
            if (i % 2 != 0) {
                bc bcVar = bc.this;
                ch chVar = this.f5371g;
                String strIntern = c("ṗḖ㈘磮邲㴱뤢锃儧뻛\ued8b⋼\u086e⧢慉꾘뾍풷\uda01\udb5c㋃彵伬䐁ꘃ쨽샶\uf1d1嵢盂떸端탱\ue18b⥻\ue794䟢汘ꈄ።\ufafcᜀ៊鰵渗舩袙", Process.myTid() << 81).intern();
                Object[] objArr = new Object[1];
                objArr[1] = adColonyInterstitial;
                bcVar.f(this, chVar, strIntern, objArr);
                if ((this.f5370f != null ? 'H' : 'a') != 'H') {
                    return;
                }
            } else {
                bc.this.f(this, this.f5371g, c("ṗḖ㈘磮邲㴱뤢锃儧뻛\ued8b⋼\u086e⧢慉꾘뾍풷\uda01\udb5c㋃彵伬䐁ꘃ쨽샶\uf1d1嵢盂떸端탱\ue18b⥻\ue794䟢汘ꈄ።\ufafcᜀ៊鰵渗舩袙", Process.myTid() >> 22).intern(), adColonyInterstitial);
                if (!(this.f5370f != null)) {
                    return;
                }
            }
            int i2 = f5369e + 105;
            f5368d = i2 % 128;
            int i3 = i2 % 2;
            this.f5370f.onAudioStopped(adColonyInterstitial);
        }

        public void onClicked(AdColonyInterstitial adColonyInterstitial) {
            bc.this.f(this, this.f5371g, c("蘗虖뎢白ᄈ㎢ﾷൃឲ㽡\ue318摩逮ꡘ濚\ue90d⟍唍풒鷉ꪃ\udecf䆿ʔ㹃䮇칥띄씢\uf778묫㱺䢱怱⟨ꄃ\udfbb\uedef겝嗳把險", ExpandableListView.getPackedPositionChild(0L) + 1).intern(), adColonyInterstitial);
            AdColonyInterstitialListener adColonyInterstitialListener = this.f5370f;
            if (adColonyInterstitialListener != null) {
                adColonyInterstitialListener.onClicked(adColonyInterstitial);
                int i = f5368d + 33;
                f5369e = i % 128;
                int i2 = i % 2;
            }
            int i3 = f5368d + 9;
            f5369e = i3 % 128;
            int i4 = i3 % 2;
        }

        public void onClosed(AdColonyInterstitial adColonyInterstitial) {
            int i = f5369e + 61;
            f5368d = i % 128;
            int i2 = i % 2;
            bc.this.f(this, this.f5371g, b((byte) ((ViewConfiguration.getScrollBarSize() >> 8) + 81), "\u0001\u0002\u0003\u0004\u0005\u0004\u0000\u000b\u000b\u0001\t\n\u000b\u0006\u0006\u000e\u0006\u000e\u0010\u0001\u000f\r\u0006\t\u000b\u0003\n\u000b\u0015\t\u0000\u0003\u0005\u0004\u0006\nµ", (Process.myPid() >> 22) + 37).intern(), adColonyInterstitial);
            AdColonyInterstitialListener adColonyInterstitialListener = this.f5370f;
            if (adColonyInterstitialListener != null) {
                int i3 = f5369e + 35;
                f5368d = i3 % 128;
                char c2 = i3 % 2 != 0 ? '\f' : '9';
                adColonyInterstitialListener.onClosed(adColonyInterstitial);
                if (c2 != '9') {
                    int i4 = 87 / 0;
                }
            }
        }

        public void onExpiring(AdColonyInterstitial adColonyInterstitial) {
            int i = f5369e + 3;
            f5368d = i % 128;
            int i2 = i % 2;
            bc.this.f(this, this.f5371g, b((byte) (TextUtils.indexOf("", "") + 116), "\u0001\u0002\u0003\u0004\u0005\u0004\u0000\u000b\u000b\u0001\t\n\u000b\u0006\u0006\u000e\u0006\u000e\u0010\u0001\u000f\r\u0006\t\u000b\u0003\n\u000b\u0015\t\u0004\u0017\u0012\u0016\u0010\u0006\u0011\u0000Û", 39 - (ViewConfiguration.getTouchSlop() >> 8)).intern(), adColonyInterstitial);
            AdColonyInterstitialListener adColonyInterstitialListener = this.f5370f;
            if (adColonyInterstitialListener != null) {
                adColonyInterstitialListener.onExpiring(adColonyInterstitial);
                int i3 = f5369e + 97;
                f5368d = i3 % 128;
                int i4 = i3 % 2;
            }
        }

        public void onIAPEvent(AdColonyInterstitial adColonyInterstitial, String str, int i) {
            bc.this.f(this, this.f5371g, c("狓犒猪娴톀Ύꙻ驪乾￩콑㶥擪棐䎓냁팉閅\uf8db쐅幇ṇ淶存쪇謏\ue22c\uee88\u31e6㟰面斶뱵ꂹ\u0ba1\uf8c5⭒ⵞ胲ఢ陎嘨㔋", Color.green(0)).intern(), adColonyInterstitial, str, Integer.valueOf(i));
            AdColonyInterstitialListener adColonyInterstitialListener = this.f5370f;
            if (!(adColonyInterstitialListener == null)) {
                int i2 = f5369e + 39;
                f5368d = i2 % 128;
                int i3 = i2 % 2;
                adColonyInterstitialListener.onIAPEvent(adColonyInterstitial, str, i);
                if (i3 != 0) {
                    throw null;
                }
            }
            int i4 = f5368d + 95;
            f5369e = i4 % 128;
            if ((i4 % 2 == 0 ? (char) 28 : ',') == ',') {
            } else {
                throw null;
            }
        }

        public void onLeftApplication(AdColonyInterstitial adColonyInterstitial) {
            int i = f5368d + 47;
            f5369e = i % 128;
            int i2 = i % 2;
            bc.this.f(this, this.f5371g, c("뉯눮饙敚㯳₅㊞㤻\uda9bᖚ\uf03fꥀꑖ芣糽␤Ꮅ翶잵僠黻\uf434劘쾽\u0a3b慼\udd42穭\uf15a\udd83ꠌ\uf153糉䫊㓏氥\uebca윛뾭飰囧뱅\u0a7dថ숼⥬锽艨䥨ꖫ", ViewConfiguration.getKeyRepeatTimeout() >> 16).intern(), adColonyInterstitial);
            AdColonyInterstitialListener adColonyInterstitialListener = this.f5370f;
            if ((adColonyInterstitialListener != null ? (char) 18 : '7') != '7') {
                adColonyInterstitialListener.onLeftApplication(adColonyInterstitial);
                int i3 = f5369e + 19;
                f5368d = i3 % 128;
                int i4 = i3 % 2;
            }
            int i5 = f5369e + 3;
            f5368d = i5 % 128;
            int i6 = i5 % 2;
        }

        public void onOpened(AdColonyInterstitial adColonyInterstitial) {
            bc.this.f(this, this.f5371g, b((byte) (TextUtils.indexOf("", "") + 5), "\u0001\u0002\u0003\u0004\u0005\u0004\u0000\u000b\u000b\u0001\t\n\u000b\u0006\u0006\u000e\u0006\u000e\u0010\u0001\u000f\r\u0006\t\u000b\u0003\n\u000b\u0015\t\u0002\u0017\u001b\u000f\u0003\u000bi", View.resolveSize(0, 0) + 37).intern(), adColonyInterstitial);
            AdColonyInterstitialListener adColonyInterstitialListener = this.f5370f;
            if (!(adColonyInterstitialListener != null)) {
                return;
            }
            int i = f5369e + 51;
            f5368d = i % 128;
            int i2 = i % 2;
            adColonyInterstitialListener.onOpened(adColonyInterstitial);
            int i3 = f5369e + 73;
            f5368d = i3 % 128;
            int i4 = i3 % 2;
        }

        public void onRequestFilled(AdColonyInterstitial adColonyInterstitial) {
            int i = f5368d + 41;
            f5369e = i % 128;
            if (i % 2 == 0) {
                bc.this.f(this, this.f5371g, b((byte) (4 - ExpandableListView.getPackedPositionGroup(1L)), "\u0001\u0002\u0003\u0004\u0005\u0004\u0000\u000b\u000b\u0001\t\n\u000b\u0006\u0006\u000e\u0006\u000e\u0010\u0001\u000f\r\u0006\t\u000b\u0003\n\u000b\u0015\t\u0004\u0011\u000b\u000f\u0015\u0006\u0006\t\u0012\roo\u0007\u0003", 1 / (ViewConfiguration.getLongPressTimeout() >> 67)).intern(), adColonyInterstitial);
                if (this.f5370f == null) {
                    return;
                }
            } else {
                bc.this.f(this, this.f5371g, b((byte) (3 - ExpandableListView.getPackedPositionGroup(0L)), "\u0001\u0002\u0003\u0004\u0005\u0004\u0000\u000b\u000b\u0001\t\n\u000b\u0006\u0006\u000e\u0006\u000e\u0010\u0001\u000f\r\u0006\t\u000b\u0003\n\u000b\u0015\t\u0004\u0011\u000b\u000f\u0015\u0006\u0006\t\u0012\roo\u0007\u0003", 44 - (ViewConfiguration.getLongPressTimeout() >> 16)).intern(), adColonyInterstitial);
                if (this.f5370f == null) {
                    return;
                }
            }
            this.f5370f.onRequestFilled(adColonyInterstitial);
            int i2 = f5368d + 35;
            f5369e = i2 % 128;
            int i3 = i2 % 2;
        }

        public void onRequestNotFilled(AdColonyZone adColonyZone) {
            bc.this.f(this, this.f5371g, c("桭栬鹖䯋㳼ด漡\ue339蜤ን\udeae\uf4ff織薬剬禛즷磹\ue924ൟ䓹\uf33b簉鈂퀹晳\uf3d3⟒⭘\uda8c蚝곬ꛋ䷅ᩞㆄ㇈쀃鄽앫賦뭎Ⓨ䨩ᠩ⹄뮱\udfd2鍩ꊯ佴", MotionEvent.axisFromString("") + 1).intern(), adColonyZone);
            AdColonyInterstitialListener adColonyInterstitialListener = this.f5370f;
            if ((adColonyInterstitialListener != null ? (char) 7 : '[') != '[') {
                int i = f5368d + 7;
                f5369e = i % 128;
                int i2 = i % 2;
                adColonyInterstitialListener.onRequestNotFilled(adColonyZone);
                int i3 = f5369e + 105;
                f5368d = i3 % 128;
                int i4 = i3 % 2;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.gy
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ AdColonyInterstitialListener mo406() {
            int i = f5369e + 79;
            f5368d = i % 128;
            int i2 = i % 2;
            AdColonyInterstitialListener adColonyInterstitialListenerA = a();
            int i3 = f5368d + 19;
            f5369e = i3 % 128;
            if (!(i3 % 2 == 0)) {
                return adColonyInterstitialListenerA;
            }
            throw null;
        }
    }

    public bc(String str) {
        super(str);
    }

    static /* synthetic */ AdColonyInterstitialListener A(AdColonyInterstitial adColonyInterstitial) {
        int i2 = x + 5;
        y = i2 % 128;
        int i3 = i2 % 2;
        AdColonyInterstitialListener adColonyInterstitialListenerD = D(adColonyInterstitial);
        int i4 = y + 29;
        x = i4 % 128;
        if ((i4 % 2 != 0 ? '7' : ',') == ',') {
            return adColonyInterstitialListenerD;
        }
        throw null;
    }

    private static void B(AdColonyRewardListener adColonyRewardListener) {
        int i2 = y + 29;
        x = i2 % 128;
        int i3 = i2 % 2;
        AdColony.setRewardListener(adColonyRewardListener);
        int i4 = y + 5;
        x = i4 % 128;
        int i5 = i4 % 2;
    }

    static /* synthetic */ boolean C(AdColonyReward adColonyReward) {
        int i2 = y + 79;
        x = i2 % 128;
        int i3 = i2 % 2;
        boolean zQ = q(adColonyReward);
        int i4 = x + 113;
        y = i4 % 128;
        if (!(i4 % 2 == 0)) {
            return zQ;
        }
        int i5 = 70 / 0;
        return zQ;
    }

    private static AdColonyInterstitialListener D(AdColonyInterstitial adColonyInterstitial) {
        int i2 = y + 5;
        x = i2 % 128;
        int i3 = i2 % 2;
        AdColonyInterstitialListener listener = adColonyInterstitial.getListener();
        int i4 = x + 81;
        y = i4 % 128;
        int i5 = i4 % 2;
        return listener;
    }

    static /* synthetic */ String E(AdColonyReward adColonyReward) {
        int i2 = y + 83;
        x = i2 % 128;
        int i3 = i2 % 2;
        String strP = p(adColonyReward);
        int i4 = y + 9;
        x = i4 % 128;
        int i5 = i4 % 2;
        return strP;
    }

    private static String F(String str, String str2, int i2, char c2, String str3) {
        String str4;
        Object charArray = str3;
        if (str3 != null) {
            charArray = str3.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        Object charArray2 = str2;
        if (str2 != null) {
            charArray2 = str2.toCharArray();
        }
        char[] cArr2 = (char[]) charArray2;
        Object charArray3 = str;
        if (str != null) {
            charArray3 = str.toCharArray();
        }
        char[] cArr3 = (char[]) charArray3;
        synchronized (com.json.adqualitysdk.sdk.i.j.f124) {
            char[] cArr4 = (char[]) cArr3.clone();
            char[] cArr5 = (char[]) cArr2.clone();
            cArr4[0] = (char) (c2 ^ cArr4[0]);
            cArr5[2] = (char) (cArr5[2] + ((char) i2));
            int length = cArr.length;
            char[] cArr6 = new char[length];
            com.json.adqualitysdk.sdk.i.j.f125 = 0;
            while (true) {
                int i3 = com.json.adqualitysdk.sdk.i.j.f125;
                if (i3 < length) {
                    int i4 = (i3 + 2) % 4;
                    int i5 = (i3 + 3) % 4;
                    char c3 = (char) (((cArr4[i3 % 4] * 32718) + cArr5[i4]) % 65535);
                    com.json.adqualitysdk.sdk.i.j.f126 = c3;
                    cArr5[i5] = (char) (((cArr4[i5] * 32718) + cArr5[i4]) / 65535);
                    cArr4[i5] = c3;
                    int i6 = com.json.adqualitysdk.sdk.i.j.f125;
                    cArr6[i6] = (char) (((((long) (cArr[i6] ^ cArr4[i5])) ^ t) ^ ((long) u)) ^ ((long) v));
                    com.json.adqualitysdk.sdk.i.j.f125 = i6 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    static /* synthetic */ void G(AdColonyRewardListener adColonyRewardListener) {
        int i2 = x + 65;
        y = i2 % 128;
        boolean z = i2 % 2 != 0;
        B(adColonyRewardListener);
        if (!z) {
            int i3 = 79 / 0;
        }
        int i4 = y + 63;
        x = i4 % 128;
        int i5 = i4 % 2;
    }

    private static int H(AdColonyReward adColonyReward) {
        int i2 = x + 1;
        y = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return adColonyReward.getRewardAmount();
        }
        adColonyReward.getRewardAmount();
        throw null;
    }

    static /* synthetic */ Object I(List list, Class cls) {
        int i2 = y + 67;
        x = i2 % 128;
        int i3 = i2 % 2;
        Object objM592 = cx.m592(list, 0, cls);
        int i4 = x + 71;
        y = i4 % 128;
        int i5 = i4 % 2;
        return objM592;
    }

    private static String J(AdColonyInterstitial adColonyInterstitial) {
        int i2 = y + 119;
        x = i2 % 128;
        boolean z = i2 % 2 != 0;
        String zoneID = adColonyInterstitial.getZoneID();
        if (z) {
            int i3 = 62 / 0;
        }
        int i4 = y + 91;
        x = i4 % 128;
        int i5 = i4 % 2;
        return zoneID;
    }

    static /* synthetic */ void K(AdColonyInterstitial adColonyInterstitial, AdColonyInterstitialListener adColonyInterstitialListener) {
        int i2 = y + 119;
        x = i2 % 128;
        int i3 = i2 % 2;
        z(adColonyInterstitial, adColonyInterstitialListener);
        int i4 = y + 29;
        x = i4 % 128;
        int i5 = i4 % 2;
    }

    private static Object k() {
        AdColonyAppOptions appOptions;
        int modifierMetaStateMask;
        int i2 = x + 47;
        y = i2 % 128;
        if (!(i2 % 2 == 0)) {
            appOptions = AdColony.getAppOptions();
            modifierMetaStateMask = 63798 - ((byte) KeyEvent.getModifierMetaStateMask());
        } else {
            appOptions = AdColony.getAppOptions();
            modifierMetaStateMask = 63798 % ((byte) KeyEvent.getModifierMetaStateMask());
        }
        return appOptions.getOption(y("犹讟胆餢陭겯", modifierMetaStateMask).intern());
    }

    private static AdColonyRewardListener l() {
        int i2 = y + 101;
        x = i2 % 128;
        int i3 = i2 % 2;
        AdColonyRewardListener rewardListener = AdColony.getRewardListener();
        int i4 = y + 105;
        x = i4 % 128;
        if ((i4 % 2 != 0 ? 'N' : 'U') == 'U') {
            return rewardListener;
        }
        throw null;
    }

    private static String m() {
        int i2 = y + 57;
        x = i2 % 128;
        if (i2 % 2 != 0) {
            AdColony.getSDKVersion();
            throw null;
        }
        String sDKVersion = AdColony.getSDKVersion();
        int i3 = y + 99;
        x = i3 % 128;
        int i4 = i3 % 2;
        return sDKVersion;
    }

    private static String n(AdColonyReward adColonyReward) {
        int i2 = x + 45;
        y = i2 % 128;
        int i3 = i2 % 2;
        String zoneID = adColonyReward.getZoneID();
        int i4 = y + 103;
        x = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 6 : (char) 17) != 6) {
            return zoneID;
        }
        throw null;
    }

    private static int o(String str) {
        int i2 = x + 1;
        y = i2 % 128;
        int i3 = i2 % 2;
        if (AdColony.getZone(str).isRewarded() ? false : true) {
            return ISAdQualityAdType.INTERSTITIAL.getValue();
        }
        int value = ISAdQualityAdType.REWARDED_VIDEO.getValue();
        int i4 = y + 3;
        x = i4 % 128;
        int i5 = i4 % 2;
        return value;
    }

    private static String p(AdColonyReward adColonyReward) {
        int i2 = x + 47;
        y = i2 % 128;
        int i3 = i2 % 2;
        String rewardName = adColonyReward.getRewardName();
        int i4 = x + 117;
        y = i4 % 128;
        if (i4 % 2 != 0) {
            return rewardName;
        }
        throw null;
    }

    private static boolean q(AdColonyReward adColonyReward) {
        int i2 = y + 67;
        x = i2 % 128;
        int i3 = i2 % 2;
        boolean zSuccess = adColonyReward.success();
        int i4 = y + 99;
        x = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return zSuccess;
        }
        int i5 = 27 / 0;
        return zSuccess;
    }

    static /* synthetic */ int r(String str) {
        int i2 = x + 21;
        y = i2 % 128;
        if (!(i2 % 2 != 0)) {
            o(str);
            throw null;
        }
        int iO = o(str);
        int i3 = x + 3;
        y = i3 % 128;
        int i4 = i3 % 2;
        return iO;
    }

    static /* synthetic */ AdColonyRewardListener s() {
        int i2 = y + 87;
        x = i2 % 128;
        int i3 = i2 % 2;
        AdColonyRewardListener adColonyRewardListenerL = l();
        int i4 = y + 79;
        x = i4 % 128;
        int i5 = i4 % 2;
        return adColonyRewardListenerL;
    }

    static /* synthetic */ String t(AdColonyReward adColonyReward) {
        int i2 = y + 25;
        x = i2 % 128;
        int i3 = i2 % 2;
        String strN = n(adColonyReward);
        int i4 = y + 125;
        x = i4 % 128;
        if ((i4 % 2 != 0 ? '\\' : 'U') == 'U') {
            return strN;
        }
        throw null;
    }

    static /* synthetic */ int u(AdColonyReward adColonyReward) {
        int i2 = y + 117;
        x = i2 % 128;
        if ((i2 % 2 != 0 ? 'O' : '#') == 'O') {
            H(adColonyReward);
            throw null;
        }
        int iH = H(adColonyReward);
        int i3 = x + 123;
        y = i3 % 128;
        if ((i3 % 2 == 0 ? '\"' : '<') != '\"') {
            return iH;
        }
        throw null;
    }

    private n v(AdColonyInterstitialListener adColonyInterstitialListener, ch chVar) {
        n nVar = new n(adColonyInterstitialListener, chVar);
        int i2 = y + 35;
        x = i2 % 128;
        int i3 = i2 % 2;
        return nVar;
    }

    static /* synthetic */ n w(bc bcVar, AdColonyInterstitialListener adColonyInterstitialListener, ch chVar) {
        int i2 = x + 117;
        y = i2 % 128;
        int i3 = i2 % 2;
        n nVarV = bcVar.v(adColonyInterstitialListener, chVar);
        int i4 = y + 81;
        x = i4 % 128;
        if (i4 % 2 == 0) {
            return nVarV;
        }
        throw null;
    }

    static /* synthetic */ String x(AdColonyInterstitial adColonyInterstitial) {
        int i2 = y + 101;
        x = i2 % 128;
        int i3 = i2 % 2;
        String strJ = J(adColonyInterstitial);
        int i4 = x + 89;
        y = i4 % 128;
        if ((i4 % 2 == 0 ? 'S' : (char) 17) != 'S') {
            return strJ;
        }
        throw null;
    }

    private static String y(String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (com.json.adqualitysdk.sdk.i.h.f63) {
            com.json.adqualitysdk.sdk.i.h.f64 = i2;
            char[] cArr2 = new char[cArr.length];
            com.json.adqualitysdk.sdk.i.h.f65 = 0;
            while (true) {
                int i3 = com.json.adqualitysdk.sdk.i.h.f65;
                if (i3 < cArr.length) {
                    cArr2[i3] = (char) (((long) (cArr[i3] ^ (com.json.adqualitysdk.sdk.i.h.f64 * i3))) ^ w);
                    com.json.adqualitysdk.sdk.i.h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    private static void z(AdColonyInterstitial adColonyInterstitial, AdColonyInterstitialListener adColonyInterstitialListener) {
        int i2 = y + 91;
        x = i2 % 128;
        int i3 = i2 % 2;
        adColonyInterstitial.setListener(adColonyInterstitialListener);
        int i4 = x + 17;
        y = i4 % 128;
        if ((i4 % 2 == 0 ? 'J' : (char) 23) != 'J') {
            return;
        }
        int i5 = 85 / 0;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    static /* synthetic */ String m407() {
        int i2 = y + 21;
        x = i2 % 128;
        if (!(i2 % 2 != 0)) {
            return m();
        }
        int i3 = 79 / 0;
        return m();
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    static /* synthetic */ Object m408() {
        int i2 = x + 79;
        y = i2 % 128;
        if (!(i2 % 2 != 0)) {
            k();
            throw null;
        }
        Object objK = k();
        int i3 = x + 99;
        y = i3 % 128;
        if ((i3 % 2 == 0 ? '&' : ':') == ':') {
            return objK;
        }
        int i4 = 99 / 0;
        return objK;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(F("뢡彩깞ኃ", "\u0000\u0000\u0000\u0000", 1593476279 - TextUtils.lastIndexOf("", '0'), (char) (ViewConfiguration.getScrollDefaultDelay() >> 16), "ᗜ\udc2a\ue061私ᱴ荵럾\ue1a0㢼晊봦").intern(), new g());
        map.put(F("ൂ豸粩赻", "\u0000\u0000\u0000\u0000", 1 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), (char) (TextUtils.getOffsetAfter("", 0) + 31612), "晇姩\ue4ef쇑嘖倠等\uf095跞甴\uf29b瑬ܾ榕\uecd2赈").intern(), new j());
        map.put(F("췻ᰫ뫩樆", "\u0000\u0000\u0000\u0000", (-384029746) - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), (char) TextUtils.indexOf("", "", 0, 0), "錧ص蘟ᦸ㡾ు庯ｙ嚁\uf708蠦").intern(), new l());
        map.put(y("犽\ueb5b䅚뽛ᕕ獜\ue94e䝟뵯᭥煳\uef58䕸", (Process.myPid() >> 22) + 39419).intern(), new m());
        map.put(F("⅐럦踰형", "\u0000\u0000\u0000\u0000", ExpandableListView.getPackedPositionChild(0L) + 817358370, (char) (1 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))), "ㆌ齨횁燽ಖ㜏危ᔅԁ").intern(), new a());
        map.put(F("ᦖ衯䗺箔", "\u0000\u0000\u0000\u0000", (ViewConfiguration.getScrollDefaultDelay() >> 16) - 91721959, (char) ((ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 37956), "옞ᢌ突㩐雖鎳\ued7f棤\ueefc횗鎇⊊Ꮱﾩ䋆䉰䴡").intern(), new k());
        map.put(F("슞煹풅正", "\u0000\u0000\u0000\u0000", Process.getGidForName("") - 2056160829, (char) ((TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 25556), "൯而ﰙ뚃ꁼ둯嚏\ud923곛꭛㮤텤⡝⃓릣\uf57e飛").intern(), new d());
        map.put(F("䅾涒瑩ፙ", "\u0000\u0000\u0000\u0000", ViewConfiguration.getScrollBarFadeDuration() >> 16, (char) TextUtils.indexOf("", "", 0), "ኹ鵺鷠헨駑朾铢堠").intern(), new c());
        map.put(y("犿괸춦\uec05\u0ca9⼶侧渉躔ꤴ즇\ue800\u0891⭷䯪", Color.argb(0, 0, 0, 0) + 57221).intern(), new b());
        map.put(y("犿锬붎쐹\uecf9\uf77a῟♝临嚏礓膎ꡱ", 59281 - View.MeasureSpec.makeMeasureSpec(0, 0)).intern(), new h());
        map.put(F("틀⾦Ӵ\ue3f4", "\u0000\u0000\u0000\u0000", (-198203693) - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), (char) (TextUtils.indexOf("", "") + 62468), "捊羁媗ꑣ헆館妐㑸剬暜픬\uecd4\ue622≟㩸").intern(), new f());
        map.put(y("犱뛾蘒㹂揻꜐\ueb54⳯倣鑐\ud9e9ᴜ䅁諺츍", 50261 - KeyEvent.keyCodeFromString("")).intern(), new i());
        map.put(F("杊\u0ebf鍨楇", "\u0000\u0000\u0000\u0000", 1745796968 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), (char) (1 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))), "舫鸰\uf664\ue026삽調冉ୂ㞥洠띘褂擾쬮韣眙娬\uefe5ೃ㬩뎧").intern(), new e());
        int i2 = x + 99;
        y = i2 % 128;
        if ((i2 % 2 == 0 ? 'H' : (char) 2) == 2) {
            return map;
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0249  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Class mo384(java.lang.String r15) {
        /*
            Method dump skipped, instruction units count: 734
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bc.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        String sDKVersion = AdColony.getSDKVersion();
        if ((TextUtils.isEmpty(sDKVersion) ? '_' : '\b') == '\b') {
            return sDKVersion;
        }
        int i2 = x + 125;
        y = i2 % 128;
        int i3 = i2 % 2;
        String strIntern = F("锴抺ዐ\uf86e", "\u0000\u0000\u0000\u0000", (-798836075) - TextUtils.getCapsMode("", 0, 0), (char) Color.alpha(0), "ꑧ⁻\ue3c8\uf755䛡\udd9a긥").intern();
        int i4 = y + 15;
        x = i4 % 128;
        int i5 = i4 % 2;
        return strIntern;
    }
}
