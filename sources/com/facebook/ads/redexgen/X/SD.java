package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class SD extends FrameLayout implements InterfaceC1174Lu {
    public static byte[] A0L;
    public static String[] A0M = {"n8b1XAz0kHAkpiWEmzC3t1pF5U", "eWK394xXCAUBfgpESuKIG56NqbrNFWJq", "5CdOn8t3diym6HDjOq5Y6uNvOx4lt5g3", "HN0pIlpAYl374dQUYji0gU", "nPJn2NzIeBIJ0ob92wkGV5", "7vv965TmOe", "OL6PAd", "N5PSCRASy1"};
    public static final RelativeLayout.LayoutParams A0N;
    public int A00;
    public int A01;
    public int A02;
    public NZ A03;
    public AbstractC1254Ow A04;
    public PU A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final C1564aQ A0A;
    public final C5H A0B;
    public final C6Q A0C;
    public final YA A0D;
    public final InterfaceC1086If A0E;
    public final C1094In A0F;
    public final LI A0G;
    public final InterfaceC1173Lt A0H;
    public final FullScreenAdToolbar A0I;
    public final MM A0J;
    public final ArrayList<C1257Oz> A0K;

    static {
        A0C();
        A0N = new RelativeLayout.LayoutParams(-1, -1);
    }

    public SD(YA ya, MM mm, InterfaceC1086If interfaceC1086If, C1564aQ c1564aQ, C6Q c6q, InterfaceC1173Lt interfaceC1173Lt) {
        super(ya);
        this.A0K = new ArrayList<>();
        this.A09 = false;
        this.A07 = false;
        this.A08 = false;
        this.A06 = true;
        this.A02 = 1;
        this.A00 = 0;
        this.A01 = 0;
        this.A0B = new SG(this);
        this.A0D = ya;
        this.A0J = mm;
        this.A0E = interfaceC1086If;
        this.A0A = c1564aQ;
        this.A0C = c6q;
        this.A0H = interfaceC1173Lt;
        this.A0F = new C1094In(c1564aQ.A0t(0).A11(), interfaceC1086If);
        LI li = new LI(this);
        this.A0G = li;
        li.A05(LH.A03);
        this.A05 = new PU(ya, mm, c1564aQ.A0S(), interfaceC1173Lt);
        FullScreenAdToolbar fullScreenAdToolbarA04 = A04();
        this.A0I = fullScreenAdToolbarA04;
        addView(fullScreenAdToolbarA04, new FrameLayout.LayoutParams(-1, fullScreenAdToolbarA04.getToolbarHeight()));
    }

    private int A00(int i) {
        return (!this.A0A.A11() || i >= this.A0A.A0w().size() || i < 0) ? this.A0A.A0G() : this.A0A.A0w().get(i).intValue();
    }

    public static /* synthetic */ int A01(SD sd, int i) {
        int i2 = sd.A01 + i;
        sd.A01 = i2;
        return i2;
    }

    private FullScreenAdToolbar A04() {
        FullScreenAdToolbar fullScreenAdToolbar = new FullScreenAdToolbar(this.A0D, this.A0H, this.A0F, 2);
        fullScreenAdToolbar.setFullscreen(true);
        fullScreenAdToolbar.setToolbarListener(new SE(this));
        return fullScreenAdToolbar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.facebook.ads.redexgen.X.AbstractC1254Ow A07(boolean r23, int r24) {
        /*
            Method dump skipped, instruction units count: 242
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.SD.A07(boolean, int):com.facebook.ads.redexgen.X.Ow");
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0L, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 39);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09() {
        if (A0R()) {
            this.A0D.A0E().A4D();
        }
    }

    private void A0A() {
        int i = this.A00;
        if (i <= 0 || TextUtils.isEmpty(this.A0A.A0t(i - 1).A11())) {
            return;
        }
        InterfaceC1086If interfaceC1086If = this.A0E;
        String strA11 = this.A0A.A0t(this.A00 - 1).A11();
        NL nl = new NL();
        AbstractC1254Ow abstractC1254Ow = this.A04;
        NL nlA03 = nl.A03(abstractC1254Ow != null ? abstractC1254Ow.getAdViewabilityChecker() : null);
        AbstractC1254Ow abstractC1254Ow2 = this.A04;
        interfaceC1086If.A9J(strA11, nlA03.A02(abstractC1254Ow2 != null ? abstractC1254Ow2.getTouchDataRecorder() : null).A05());
    }

    private void A0B() {
        this.A0D.A0E().A4B();
        this.A07 = true;
        this.A03 = new NZ(this.A0D, this.A0A, this.A0E, this.A0H, this.A0I.getToolbarHeight(), this.A02);
        C1257Oz c1257Oz = null;
        Iterator<C1257Oz> it = this.A0K.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A0M[1].charAt(22) == '6') {
                String[] strArr = A0M;
                strArr[7] = "ZPnrdglx3i";
                strArr[5] = "Z92DtyKnO3";
                if (!zHasNext) {
                    break;
                }
                C1257Oz next = it.next();
                if (next.A00 == C1257Oz.A06) {
                    c1257Oz = next;
                    break;
                }
            } else {
                throw new RuntimeException();
            }
        }
        if (c1257Oz != null) {
            A0H(this.A03, c1257Oz);
        } else if (!this.A0K.isEmpty()) {
            A0H(this.A03, this.A0K.get(0));
        }
        A0P(true);
        this.A0I.setOnlyPageDetails(null);
        AbstractC1254Ow abstractC1254Ow = this.A04;
        if (abstractC1254Ow != null) {
            LV.A0J(abstractC1254Ow);
            this.A04.A0K();
            this.A04 = null;
        }
        LV.A0J(this.A03);
        LV.A0G(IronSourceConstants.RV_API_HAS_AVAILABILITY_FALSE, this.A03);
        addView(this.A03, 0, new FrameLayout.LayoutParams(-1, -1));
    }

    public static void A0C() {
        A0L = new byte[]{113, -64, -73, 113, -62, -27, -95};
        String[] strArr = A0M;
        if (strArr[3].length() != strArr[4].length()) {
            throw new RuntimeException();
        }
        A0M[2] = "BvaU1dA3vF4hXYIjQV5InfWnSlZ4OmYy";
    }

    private final void A0D() {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        this.A0G.A05(LH.A04);
    }

    private synchronized void A0E() {
        this.A0H.A3z(this.A0J.A5o());
        this.A05.A05();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0F(float f2) {
        float fA00 = A00(this.A00 - 1);
        float f3 = fA00 > 0.0f ? ((this.A0A.A11() ? 0 : this.A01) + f2) / fA00 : 1.0f;
        if (this.A06 && this.A0A.A11()) {
            this.A06 = false;
            this.A0I.setProgressImmediate(0.0f);
        }
        this.A0I.setProgress(100.0f * f3);
        if (f3 < 1.0f || this.A09) {
            return;
        }
        this.A09 = true;
        this.A0I.setToolbarActionMode(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0G(int i) {
        this.A0D.A0E().A48(i);
        this.A09 = true;
        A0E();
        A0A();
        this.A0H.A3z(this.A0J.A6n());
    }

    private void A0H(ViewGroup viewGroup, C1257Oz c1257Oz) {
        if (c1257Oz.A00 != C1257Oz.A06 || c1257Oz.A03 == null) {
            LV.A0M(viewGroup, c1257Oz.A01);
        } else {
            C1221Np.A00(this.A0D, viewGroup, c1257Oz.A03);
        }
        this.A0I.setFullscreen(c1257Oz.A05);
        this.A0I.A06(c1257Oz.A02, c1257Oz.A04);
    }

    private void A0I(AbstractC1566aS abstractC1566aS) {
        if (A0V(abstractC1566aS)) {
            int i = this.A02;
            if (A0M[2].charAt(7) != '3') {
                throw new RuntimeException();
            }
            A0M[2] = "vyv5r133RkdgG8M1gH7WIgZDBjsgq9Je";
            if (i == 2) {
                this.A0I.setOnlyPageDetails(abstractC1566aS.A0z());
                return;
            }
        }
        this.A0I.setOnlyPageDetails(null);
    }

    private final void A0J(C5J c5j) {
        c5j.A0N(this.A0B);
        int i = c5j.A0J().getResources().getConfiguration().orientation;
        this.A02 = i;
        A0Q(this.A0A.A0y(), i);
        A0D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0P(boolean z) {
        boolean z2 = (!A0T() || A0S() || A0U()) ? false : true;
        boolean zA0S = A0S();
        if (A0M[1].charAt(22) != '6') {
            throw new RuntimeException();
        }
        String[] strArr = A0M;
        strArr[7] = "fhNsXNJVUA";
        strArr[5] = "wXa0tVX5fv";
        if (zA0S || z2) {
            this.A0I.setToolbarActionMode(1);
            return;
        }
        this.A09 = true;
        if (z) {
            this.A0I.setToolbarActionMessage(A08(0, 0, 66));
        }
        this.A0I.setToolbarActionMode(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0Q(boolean z, int i) {
        AbstractC1254Ow abstractC1254Ow = this.A04;
        if (abstractC1254Ow != null) {
            abstractC1254Ow.A0K();
            AbstractC1254Ow abstractC1254Ow2 = this.A04;
            if (A0M[1].charAt(22) != '6') {
                throw new RuntimeException();
            }
            A0M[2] = "W3TlfOl3oEXDpQnuuCTH10eCcUmU4b3A";
            abstractC1254Ow2.removeAllViews();
            LV.A0J(this.A04);
        }
        if (!A0S()) {
            this.A09 = true;
            if (A0T()) {
                A0B();
                return;
            } else {
                A0G(1);
                return;
            }
        }
        if (this.A0A.A11()) {
            this.A09 = false;
            this.A0I.setProgressImmediate(0.0f);
        }
        if (!this.A0D.A00().A8m(this.A0A.A0t(this.A00).A11(), this.A0A.A0u())) {
            this.A0D.A0E().A49();
            A0G(2);
            return;
        }
        AbstractC1254Ow abstractC1254OwA07 = A07(z, i);
        this.A04 = abstractC1254OwA07;
        setupToolbarForAd(abstractC1254OwA07);
        addView(this.A04, 0, A0N);
        this.A00++;
        this.A04.A0M();
    }

    private boolean A0R() {
        AbstractC1254Ow abstractC1254Ow;
        if (!this.A09) {
            AbstractC1254Ow abstractC1254Ow2 = this.A04;
            if (abstractC1254Ow2 == null || !abstractC1254Ow2.A0Q() || this.A0A.A0p() != 1) {
                return false;
            }
            A0Q(false, this.A02);
            return true;
        }
        if (A0S() && (abstractC1254Ow = this.A04) != null && (abstractC1254Ow.A0Q() || this.A0A.A0p() == 2)) {
            if (!this.A0A.A11()) {
                this.A08 = true;
            }
            A0Q(false, this.A02);
            return true;
        }
        AbstractC1254Ow abstractC1254Ow3 = this.A04;
        if (abstractC1254Ow3 != null && abstractC1254Ow3.A0P()) {
            this.A0I.setToolbarActionMode(0);
            this.A0D.A0E().A4C();
            this.A04.A0L();
            return true;
        }
        if (A0T() && !A0U()) {
            A0B();
            return true;
        }
        if ((this.A04 instanceof SQ) && A0S()) {
            A0Q(false, this.A02);
            return true;
        }
        this.A0F.A04(EnumC1093Im.A07, null);
        A0G(4);
        return true;
    }

    private boolean A0S() {
        return this.A00 < this.A0A.A0q();
    }

    private boolean A0T() {
        return this.A0A.A0p() == 2;
    }

    private final boolean A0U() {
        return this.A07;
    }

    public static boolean A0V(AbstractC1566aS abstractC1566aS) {
        return TextUtils.isEmpty(abstractC1566aS.A0v().A0D().A08());
    }

    private void setupToolbarForAd(AbstractC1254Ow abstractC1254Ow) {
        if (this.A0I == null) {
            return;
        }
        this.A06 = true;
        AbstractC1566aS abstractC1566aSA0t = this.A0A.A0t(this.A00);
        this.A0I.A09(this.A0D, abstractC1566aSA0t.A0p());
        this.A0I.A08(abstractC1566aSA0t.A0z(), abstractC1566aSA0t.A11(), A00(this.A00));
        C1257Oz fullScreenAdStyle = abstractC1254Ow.getFullScreenAdStyle();
        A0H(abstractC1254Ow, fullScreenAdStyle);
        this.A0K.add(fullScreenAdStyle);
        this.A0I.setToolbarActionMessage(A08(4, 3, 90) + (this.A00 + 1) + A08(0, 4, 42) + this.A0A.A0q());
        if (this.A08) {
            this.A0I.setToolbarActionMode(1);
        }
        A0I(abstractC1566aSA0t);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void A9C(Intent intent, Bundle bundle, C5J c5j) {
        this.A0H.A3Q(this, A0N);
        A0J(c5j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void ACJ(boolean z) {
        AbstractC1254Ow abstractC1254Ow = this.A04;
        if (abstractC1254Ow != null) {
            abstractC1254Ow.A0N(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void ACj(boolean z) {
        AbstractC1254Ow abstractC1254Ow = this.A04;
        if (abstractC1254Ow != null) {
            abstractC1254Ow.A0O(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void AEt(Bundle bundle) {
    }

    public AbstractC1254Ow getContentView() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public String getCurrentClientToken() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.A02 = configuration.orientation;
        AbstractC1254Ow abstractC1254Ow = this.A04;
        if (abstractC1254Ow != null) {
            abstractC1254Ow.onConfigurationChanged(configuration);
        }
        AbstractC1254Ow abstractC1254Ow2 = this.A04;
        if (abstractC1254Ow2 instanceof SQ) {
            A0H(abstractC1254Ow2, abstractC1254Ow2.getFullScreenAdStyle());
            A0I(this.A04.getAdDataBundle());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void onDestroy() {
        AbstractC1254Ow abstractC1254Ow = this.A04;
        if (abstractC1254Ow != null) {
            abstractC1254Ow.A0K();
            this.A04 = null;
        }
        this.A0D.A00().A4E(this.A0A.A0u());
        this.A0G.A03();
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setListener(InterfaceC1173Lt interfaceC1173Lt) {
    }

    public void setServerSideRewardHandler(PU pu) {
        this.A05 = pu;
    }
}
