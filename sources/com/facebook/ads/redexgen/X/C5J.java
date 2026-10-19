package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.Window;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import com.applovin.exoplayer2.common.base.Ascii;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.api.AudienceNetworkActivityApi;
import com.facebook.ads.internal.context.Repairable;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5J, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C5J implements AudienceNetworkActivityApi, Repairable {
    public static byte[] A0O;
    public static String[] A0P = {"6hyfNvrTK6t0uOk4ZUiKTcly4lO9QIT3", "Cx5XWQG9gTlQcsVl0OO6K9WlulTSTZ", "4fLDdlgMQ2q", "AM05mUF2qaDkDYU3MyDNTK", "rN7iVf06fBiMXo1UDWoI2bEJDxOmVmjv", "9bqAz3M9pAQkcUJXzFdGLS", "1D1uNCEUmAwDpqE", "h0QQnxfLOYpp7kAK6sPhgGYv8wQTA65G"};
    public int A00;
    public int A02;
    public long A03;
    public long A04;
    public Intent A05;
    public RelativeLayout A06;
    public EnumC1121Jq A07;
    public InterfaceC1174Lu A08;
    public MR A09;
    public NJ A0A;
    public PK A0B;
    public String A0C;
    public String A0D;
    public String A0E;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public final AudienceNetworkActivity A0K;
    public final AudienceNetworkActivityApi A0L;
    public final YA A0M;
    public final List<C5H> A0N = new ArrayList();
    public int A01 = -1;
    public boolean A0F = false;

    static {
        A09();
    }

    public C5J(AudienceNetworkActivity audienceNetworkActivity, AudienceNetworkActivityApi audienceNetworkActivityApi) {
        this.A0K = audienceNetworkActivity;
        this.A0L = audienceNetworkActivityApi;
        YA yaA01 = C5Q.A01(audienceNetworkActivity);
        this.A0M = yaA01;
        yaA01.A0H(this);
    }

    private int A00() {
        Rect rect = new Rect();
        Window window = this.A0K.getWindow();
        if (window == null) {
            return 2;
        }
        window.getDecorView().getWindowVisibleDisplayFrame(rect);
        return (rect.top >= 200 || rect.left >= 200) ? 0 : 1;
    }

    private InterfaceC1174Lu A02(Intent intent) {
        C5G c5g = new C5G(this, intent, this.A0M.A09(), this.A0M, null);
        if (this.A07 == null) {
            return null;
        }
        switch (C5F.A00[this.A07.ordinal()]) {
            case 1:
                return c5g.A0J(this.A06);
            case 2:
                InterfaceC1174Lu interfaceC1174LuA0R = c5g.A0R();
                if (A0P[6].length() != 15) {
                    throw new RuntimeException();
                }
                A0P[2] = "9AjKOltSNiH";
                return interfaceC1174LuA0R;
            case 3:
                return c5g.A0Q();
            case 4:
                return c5g.A0I();
            case 5:
                return c5g.A0G();
            case 6:
                return c5g.A0P();
            case 7:
                return c5g.A0O();
            case 8:
                InterfaceC1174Lu interfaceC1174LuA02 = c5g.A02();
                if (A0P[1].length() != 0) {
                    A0P[1] = "wwrXZHO6We2";
                    return interfaceC1174LuA02;
                }
                A0P[1] = "bd05r2lrBXgQHiU8zhW56DndFWzJq";
                return interfaceC1174LuA02;
            case 9:
                return c5g.A0H();
            case 10:
                InterfaceC1174Lu interfaceC1174LuA0M = c5g.A0M();
                if (A0P[2].length() == 25) {
                    throw new RuntimeException();
                }
                A0P[7] = "st3v0TpfdqXoPWlO02nQcse4uCAIapoF";
                return interfaceC1174LuA0M;
            case 11:
                return c5g.A0K();
            case 12:
                InterfaceC1174Lu interfaceC1174LuA0L = c5g.A0L();
                if (A0P[7].charAt(27) == 'B') {
                    throw new RuntimeException();
                }
                A0P[1] = "x";
                return interfaceC1174LuA0L;
            case 13:
            case 14:
                return c5g.A0N(this.A07);
            default:
                return null;
        }
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0O, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 111);
        }
        return new String(bArrCopyOfRange);
    }

    private void A06() {
        String str = this.A0E;
        if (str != null) {
            PK pkA01 = PJ.A01(this.A0M, str);
            this.A0B = pkA01;
            if (pkA01 != null) {
                this.A06.addView(this.A0B, new RelativeLayout.LayoutParams(-1, -1));
            }
        }
    }

    private void A07() {
        if (!IP.A1G(this.A0K) || Build.VERSION.SDK_INT < 24) {
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.ads.redexgen.X.5E
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0M();
            }
        }, 1000L);
    }

    private void A08() {
        if (this.A0I) {
            return;
        }
        if (A0I()) {
            A0F(EnumC1270Pm.A03.A02());
        } else {
            A0F(A05(139, 48, 14));
        }
        this.A0I = true;
    }

    public static void A09() {
        A0O = new byte[]{-3, 38, 71, 68, 87, 73, -36, -11, -24, -23, -13, -20, -89, -5, -10, -89, -16, -11, -19, -20, -7, -89, -3, -16, -20, -2, -37, 0, -9, -20, -89, -19, -7, -10, -12, -89, -16, -11, -5, -20, -11, -5, -89, -10, -7, -89, -6, -24, -3, -20, -21, -48, -11, -6, -5, -24, -11, -22, -20, -38, -5, -24, -5, -20, -12, 1, -14, -12, -10, 7, -4, 9, -4, 7, Ascii.FF, -44, -35, -38, -42, -33, -27, -59, -32, -36, -42, -33, 1, Ascii.CR, Ascii.VT, -52, 4, -1, 1, 3, 0, Ascii.CR, Ascii.CR, 9, -52, -1, 2, 17, -52, -1, 2, Ascii.DLE, 3, Ascii.SO, Ascii.CR, Ascii.DLE, Ascii.DC2, 7, Ascii.FF, 5, -52, -28, -25, -20, -25, -15, -26, -3, -33, -30, -3, -16, -29, -18, -19, -16, -14, -25, -20, -27, -3, -28, -22, -19, -11, -32, -20, -22, -85, -29, -34, -32, -30, -33, -20, -20, -24, -85, -34, -31, -16, -85, -26, -21, -15, -30, -17, -16, -15, -26, -15, -26, -34, -23, -85, -34, -32, -15, -26, -13, -26, -15, -10, -36, -31, -30, -16, -15, -17, -20, -10, -30, -31, Ascii.SI, Ascii.ESC, Ascii.EM, -38, Ascii.DC2, Ascii.CR, Ascii.SI, 17, Ascii.SO, Ascii.ESC, Ascii.ESC, Ascii.ETB, -38, Ascii.CR, Ascii.DLE, Ascii.US, -38, Ascii.NAK, Ascii.SUB, 32, 17, Ascii.RS, Ascii.US, 32, Ascii.NAK, 32, Ascii.NAK, Ascii.CR, Ascii.CAN, -38, Ascii.DLE, Ascii.NAK, Ascii.US, Ascii.EM, Ascii.NAK, Ascii.US, Ascii.US, 17, Ascii.DLE, -23, -11, -13, -76, -20, -25, -23, -21, -24, -11, -11, -15, -76, -25, -22, -7, -76, -17, -12, -6, -21, -8, -7, -6, -17, -6, -17, -25, -14, -76, -22, -17, -7, -10, -14, -25, -1, -21, -22, Ascii.DLE, Ascii.FS, Ascii.SUB, -37, 19, Ascii.SO, Ascii.DLE, Ascii.DC2, Ascii.SI, Ascii.FS, Ascii.FS, Ascii.CAN, -37, Ascii.SO, 17, 32, -37, Ascii.SYN, Ascii.ESC, 33, Ascii.DC2, Ascii.US, 32, 33, Ascii.SYN, 33, Ascii.SYN, Ascii.SO, Ascii.EM, -37, Ascii.DC2, Ascii.US, Ascii.US, Ascii.FS, Ascii.US, 54, 66, 64, 1, 57, 52, 54, 56, 53, 66, 66, 62, 1, 52, 55, 70, 1, 60, 65, 71, 56, 69, 70, 71, 60, 71, 60, 52, 63, 1, 57, 60, 65, 60, 70, 59, 50, 52, 54, 71, 60, 73, 60, 71, 76, 75, 87, 85, Ascii.SYN, 78, 73, 75, 77, 74, 87, 87, 83, Ascii.SYN, 73, 76, 91, Ascii.SYN, 81, 86, 92, 77, 90, 91, 92, 81, 92, 81, 73, 84, Ascii.SYN, 81, 85, 88, 90, 77, 91, 91, 81, 87, 86, Ascii.SYN, 84, 87, 79, 79, 77, 76, 42, 59, 42, 51, 57, 68, 57, 70, 60, 75, 59, 57, 72, 61, Ascii.SI, 7, 6, Ascii.VT, 3, Ascii.SYN, Ascii.VT, 17, Ascii.DLE, -26, 3, Ascii.SYN, 3, -7, -11, -22, -20, -18, -10, -18, -9, -3, -46, -19, 87, 86, 89, 91, 89, 72, 80, 91, 76, 78, 65, 64, 65, 66, 69, 74, 65, 64, 43, 78, 69, 65, 74, 80, 61, 80, 69, 75, 74, 39, 65, 85, -8, -21, -9, -5, -21, -7, -6, -38, -17, -13, -21, 44, 36, 34, 41, -6, Ascii.US, 45, Ascii.RS, 43, Ascii.FF, Ascii.RS, Ascii.FS, 40, 39, Ascii.GS, 44, -12, -17, -33, -17, -14, -23, -27, -18, -12, -31, -12, -23, -17, -18, 57, 50, 45, 53, 57, 41, Ascii.CR, 40, 90, 77, 73, 91, 56, 93, 84, 73};
    }

    private void A0A(Intent intent) {
        if (IP.A12(this.A0K)) {
            EnumC1121Jq enumC1121Jq = this.A07;
            EnumC1121Jq enumC1121Jq2 = EnumC1121Jq.A02;
            if (A0P[2].length() == 25) {
                throw new RuntimeException();
            }
            A0P[1] = "ROWUzhbvPevH2";
            if (enumC1121Jq == enumC1121Jq2 || Build.VERSION.SDK_INT < 18) {
                return;
            }
            this.A0A = new NJ();
            this.A0A.A0C(intent.getStringExtra(A05(419, 11, 26)));
            this.A0A.A0B(this.A0K.getPackageName());
            long longExtra = intent.getLongExtra(A05(462, 11, 23), 0L);
            if (longExtra != 0) {
                this.A0A.A09(longExtra);
            }
            TextView textView = new TextView(this.A0K);
            textView.setText(A05(1, 5, 115));
            textView.setTextColor(-1);
            LV.A0M(textView, Color.argb(160, 0, 0, 0));
            textView.setPadding(5, 5, 5, 5);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(12, -1);
            layoutParams.addRule(11, -1);
            textView.setLayoutParams(layoutParams);
            C5I c5i = new C5I(this, null);
            textView.setOnLongClickListener(c5i);
            this.A06.setOnLongClickListener(c5i);
            this.A06.getOverlay().add(this.A0A);
        }
    }

    private void A0B(Intent intent, Bundle bundle) {
        String strA05 = A05(FrameMetricsAggregator.EVERY_DURATION, 8, 117);
        String strA052 = A05(TypedValues.PositionType.TYPE_PERCENT_WIDTH, 8, 85);
        String strA053 = A05(438, 24, 109);
        if (bundle != null) {
            Bundle bundleA02 = KN.A02(bundle, DynamicLoaderImpl.class.getClassLoader());
            this.A01 = bundleA02.getInt(strA053, -1);
            this.A0C = bundleA02.getString(strA052);
            this.A07 = (EnumC1121Jq) bundleA02.getSerializable(strA05);
            return;
        }
        this.A01 = intent.getIntExtra(strA053, -1);
        this.A0C = intent.getStringExtra(strA052);
        this.A07 = (EnumC1121Jq) intent.getSerializableExtra(strA05);
        this.A02 = intent.getIntExtra(A05(473, 16, 74), 0) * 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void A0F(java.lang.String r6) {
        /*
            r5 = this;
            r2 = 345(0x159, float:4.83E-43)
            r1 = 47
            r0 = 121(0x79, float:1.7E-43)
            java.lang.String r0 = A05(r2, r1, r0)
            boolean r0 = r0.equals(r6)
            r4 = 1
            if (r0 != 0) goto L1d
            com.facebook.ads.redexgen.X.Pm r0 = com.facebook.ads.redexgen.X.EnumC1270Pm.A0A
            java.lang.String r0 = r0.A02()
            boolean r0 = r0.equals(r6)
            if (r0 == 0) goto L1f
        L1d:
            r5.A0H = r4
        L1f:
            r2 = 265(0x109, float:3.71E-43)
            r1 = 35
            r0 = 62
            java.lang.String r0 = A05(r2, r1, r0)
            boolean r0 = r0.equals(r6)
            if (r0 != 0) goto L5a
            com.facebook.ads.redexgen.X.Pm r0 = com.facebook.ads.redexgen.X.EnumC1270Pm.A09
            java.lang.String r3 = r0.A02()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C5J.A0P
            r0 = 6
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 15
            if (r1 == r0) goto L48
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L48:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C5J.A0P
            java.lang.String r1 = "BsUqgJlN3izr4734FAkiK4"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "DZ4pb9dksBh2p0w2isnwDh"
            r0 = 3
            r2[r0] = r1
            boolean r0 = r3.equals(r6)
            if (r0 == 0) goto L5c
        L5a:
            r5.A0G = r4
        L5c:
            r2 = 86
            r1 = 53
            r0 = 47
            java.lang.String r0 = A05(r2, r1, r0)
            boolean r0 = r0.equals(r6)
            if (r0 == 0) goto L72
            r0 = 9
            r5.finish(r0)
            return
        L72:
            r2 = 300(0x12c, float:4.2E-43)
            r1 = 45
            r0 = 100
            java.lang.String r0 = A05(r2, r1, r0)
            boolean r0 = r0.equals(r6)
            if (r0 == 0) goto L88
            r0 = 10
            r5.finish(r0)
            return
        L88:
            r0 = 0
            r5.A0H(r6, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C5J.A0F(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0G(String str, C1X c1x) {
        if (this.A08 == null) {
            return;
        }
        if (this.A09 == null) {
            YA ya = this.A0M;
            this.A09 = MS.A02(ya, ya.A09(), str, c1x, this.A08, new C1507Yt(this, null));
            this.A09.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        }
        LV.A0J(this.A09);
        LV.A0T(this.A06);
        this.A06.addView(this.A09);
        this.A09.A0K();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0H(String str, C8Y c8y) {
        Intent intent = new Intent(str + A05(0, 1, 84) + this.A0C);
        if (c8y != null) {
            intent.putExtra(A05(392, 5, 86), c8y);
        }
        C07042c.A00(this.A0K).A07(intent);
    }

    private boolean A0I() {
        return this.A07 == EnumC1121Jq.A0F || this.A07 == EnumC1121Jq.A0E || this.A07 == EnumC1121Jq.A07 || this.A07 == EnumC1121Jq.A04 || this.A07 == EnumC1121Jq.A0D;
    }

    public final AudienceNetworkActivity A0J() {
        return this.A0K;
    }

    public final YA A0K() {
        return this.A0M;
    }

    public final void A0L() {
        if (A0I()) {
            A0F(EnumC1270Pm.A09.A02());
        } else {
            A0F(A05(265, 35, 62));
        }
    }

    public final /* synthetic */ void A0M() {
        if (this.A0K.isInMultiWindowMode()) {
            this.A0M.A0E().A9k(A00());
        }
    }

    public final void A0N(C5H c5h) {
        this.A0N.add(c5h);
    }

    public final void A0O(C5H c5h) {
        this.A0N.remove(c5h);
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        KU kuA00 = KV.A00();
        if (kuA00 != null) {
            boolean zOverrideDumpsys = kuA00.overrideDumpsys(str, fileDescriptor, printWriter, strArr);
            if (A0P[2].length() == 25) {
                throw new RuntimeException();
            }
            A0P[6] = "QxWYw7ht1er43uY";
            if (zOverrideDumpsys) {
                return;
            }
        }
        this.A0L.dump(str, fileDescriptor, printWriter, strArr);
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void finish(int i) {
        this.A0M.A0E().A2Y(String.valueOf(A0J().hashCode()), i);
        if (this.A0K.isFinishing()) {
            return;
        }
        if (IP.A1V(this.A0M) && !this.A0H && !this.A0G) {
            this.A0M.A0E().AAD();
            A0L();
        }
        if (!A0I() || this.A0F) {
            A0F(A05(187, 39, 61));
        } else {
            A0F(EnumC1270Pm.A05.A02());
        }
        A08();
        this.A0L.finish(i);
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onActivityResult(int i, int i2, Intent intent) {
        InterfaceC1174Lu interfaceC1174Lu = this.A08;
        if (interfaceC1174Lu == null || !interfaceC1174Lu.onActivityResult(i, i2, intent)) {
            TJ.A09(i, i2, intent);
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onBackPressed() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.A03 + (jCurrentTimeMillis - this.A04);
        this.A03 = j;
        this.A04 = jCurrentTimeMillis;
        if (j > this.A02) {
            boolean z = false;
            Iterator<C5H> it = this.A0N.iterator();
            while (it.hasNext()) {
                if (it.next().A8k()) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            this.A0L.onBackPressed();
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onConfigurationChanged(Configuration configuration) {
        if (this.A00 != configuration.orientation) {
            HashMap map = new HashMap();
            int i = configuration.orientation;
            String strA05 = A05(489, 14, 17);
            if (i == 1) {
                map.put(strA05, A05(430, 8, 120));
            } else {
                map.put(strA05, A05(397, 9, 105));
            }
            EnumC1093Im enumC1093Im = EnumC1093Im.A0K;
            InterfaceC1174Lu interfaceC1174Lu = this.A08;
            C1094In.A02(enumC1093Im, map, interfaceC1174Lu == null ? A05(0, 0, 50) : interfaceC1174Lu.getCurrentClientToken(), this.A0M.A09());
            this.A00 = configuration.orientation;
            A07();
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onCreate(Bundle bundle) {
        LX.A02();
        if (IP.A1l(this.A0K)) {
            Window window = this.A0K.getWindow();
            String[] strArr = A0P;
            if (strArr[0].charAt(26) != strArr[4].charAt(26)) {
                throw new RuntimeException();
            }
            A0P[6] = "7njofUp2AYjKONZ";
            window.setFlags(16777216, 16777216);
        }
        Intent intentA01 = KN.A01(this.A0K.getIntent(), DynamicLoaderImpl.class.getClassLoader());
        this.A05 = intentA01;
        YA yaA03 = KN.A03(intentA01);
        if (yaA03 != null) {
            this.A0M.A0F(yaA03.A0E());
            this.A0M.A0C(yaA03.A0B());
        }
        this.A0M.A0E().A2Z(String.valueOf(A0J().hashCode()));
        this.A0K.requestWindowFeature(1);
        this.A0K.getWindow().setFlags(1024, 1024);
        RelativeLayout relativeLayout = new RelativeLayout(this.A0K);
        this.A06 = relativeLayout;
        LV.A0M(relativeLayout, 0);
        this.A0K.setContentView(this.A06, new RelativeLayout.LayoutParams(-1, -1));
        A0B(this.A05, bundle);
        InterfaceC1174Lu interfaceC1174LuA02 = A02(this.A05);
        this.A08 = interfaceC1174LuA02;
        if (interfaceC1174LuA02 == null) {
            this.A0M.A07().A9M(A05(64, 11, 36), C08417x.A0A, new C08427y(A05(6, 58, 24)));
            A0L();
            finish(7);
            return;
        }
        interfaceC1174LuA02.A9C(this.A05, bundle, this);
        A0F(A05(226, 39, 23));
        this.A04 = System.currentTimeMillis();
        this.A0E = this.A05.getStringExtra(A05(TTAdConstant.LANDING_PAGE_TYPE_CODE, 13, 51));
        A06();
        A0A(this.A05);
        this.A00 = this.A0K.getResources().getConfiguration().orientation;
        String strA05 = A05(75, 11, 2);
        if (bundle != null) {
            this.A0D = bundle.getString(strA05);
        } else {
            this.A0D = this.A05.getStringExtra(strA05);
        }
        if (!IP.A1t(this.A0K) || this.A0K.getWindow() == null) {
            return;
        }
        this.A0K.getWindow().addFlags(128);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onDestroy() {
        /*
            r4 = this;
            com.facebook.ads.redexgen.X.YA r0 = r4.A0M
            com.facebook.ads.redexgen.X.0S r1 = r0.A0E()
            com.facebook.ads.AudienceNetworkActivity r0 = r4.A0J()
            int r0 = r0.hashCode()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r1.A2a(r0)
            r4.A08()
            android.widget.RelativeLayout r0 = r4.A06
            if (r0 == 0) goto L1f
            r0.removeAllViews()
        L1f:
            com.facebook.ads.redexgen.X.Lu r0 = r4.A08
            if (r0 == 0) goto L4a
            r0.onDestroy()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C5J.A0P
            r0 = 0
            r1 = r2[r0]
            r0 = 4
            r2 = r2[r0]
            r0 = 26
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L40
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L40:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C5J.A0P
            java.lang.String r1 = "BK5JyIukG"
            r0 = 1
            r2[r0] = r1
            r0 = 0
            r4.A08 = r0
        L4a:
            com.facebook.ads.redexgen.X.NJ r3 = r4.A0A
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C5J.A0P
            r0 = 0
            r1 = r2[r0]
            r0 = 4
            r2 = r2[r0]
            r0 = 26
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L93
            if (r3 == 0) goto L6f
        L62:
            com.facebook.ads.AudienceNetworkActivity r0 = r4.A0K
            boolean r0 = com.facebook.ads.redexgen.X.IP.A12(r0)
            if (r0 == 0) goto L6f
            com.facebook.ads.redexgen.X.NJ r0 = r4.A0A
            r0.A07()
        L6f:
            com.facebook.ads.redexgen.X.MR r3 = r4.A09
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C5J.A0P
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 25
            if (r1 == r0) goto L90
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C5J.A0P
            java.lang.String r1 = "rHb3ILEFnyWtMYiOwcguj0"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "XKBHK5KZoSEcfbvzOM5yLt"
            r0 = 3
            r2[r0] = r1
            if (r3 == 0) goto L8f
        L8c:
            r3.A0J()
        L8f:
            return
        L90:
            if (r3 == 0) goto L8f
            goto L8c
        L93:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C5J.A0P
            java.lang.String r1 = "VoJV9dI9dal5KZ60JkB8i5Bpps"
            r0 = 2
            r2[r0] = r1
            if (r3 == 0) goto L6f
            goto L62
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C5J.onDestroy():void");
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onPause() {
        this.A0M.A0E().A2b(String.valueOf(A0J().hashCode()));
        this.A03 += System.currentTimeMillis() - this.A04;
        InterfaceC1174Lu interfaceC1174Lu = this.A08;
        if (interfaceC1174Lu != null) {
            interfaceC1174Lu.ACJ(false);
            if (this.A0K.isFinishing()) {
                return;
            }
            C1094In.A02(EnumC1093Im.A0E, null, this.A08.getCurrentClientToken(), this.A0M.A09());
            this.A0J = true;
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onResume() {
        this.A0M.A0E().A2c(String.valueOf(A0J().hashCode()));
        this.A04 = System.currentTimeMillis();
        InterfaceC1174Lu interfaceC1174Lu = this.A08;
        if (interfaceC1174Lu != null) {
            interfaceC1174Lu.ACj(false);
            if (this.A0J) {
                C1094In.A02(EnumC1093Im.A0F, null, this.A08.getCurrentClientToken(), this.A0M.A09());
            }
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onSaveInstanceState(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        InterfaceC1174Lu interfaceC1174Lu = this.A08;
        if (interfaceC1174Lu != null) {
            interfaceC1174Lu.AEt(bundle2);
        }
        bundle2.putInt(A05(438, 24, 109), this.A01);
        bundle2.putString(A05(TypedValues.PositionType.TYPE_PERCENT_WIDTH, 8, 85), this.A0C);
        bundle2.putString(A05(75, 11, 2), this.A0D);
        bundle2.putSerializable(A05(FrameMetricsAggregator.EVERY_DURATION, 8, 117), this.A07);
        KN.A08(bundle, bundle2);
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onStart() {
        this.A0M.A0E().A2d(String.valueOf(A0J().hashCode()));
        int i = this.A01;
        if (i != -1) {
            C1168Lo.A02(this.A0K, i, this.A0M);
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onStop() {
        this.A0M.A0E().A2e(String.valueOf(A0J().hashCode()));
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        return this.A0L.onTouchEvent(motionEvent);
    }

    @Override // com.facebook.ads.internal.context.Repairable
    public final void repair(Throwable th) {
        A0L();
        finish(5);
    }
}
