package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.animation.AlphaAnimation;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.settings.AdInternalSettings;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4V, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C4V extends AbstractC1379Ts<C1285Qb> implements C7P {
    public static String[] A02 = {"iVby5wy6H7l4dzY0Hld0xs9tuHtnGk", "Nr0U5YnFPaRVMsCPPiWFbDdqiRS3TX59", "NmHEOi9mcJk9OQjZmIqLk3AYwOx5ICK3", "j6OxXppfxNxejmkkIb10P2S2ED13bfax", "YxA", "okdCTGqDBxOQkU", "XAA3rxsPdfTGxXL8JCFSxOB2RupP9g", "Mu"};
    public YA A00;
    public boolean A01;

    public C4V(C1285Qb c1285Qb, YA ya) {
        super(c1285Qb);
        this.A00 = ya;
        this.A01 = false;
    }

    private void A00(int i) {
        if (!this.A01) {
            this.A00.A0E().A3G(i);
        }
        String[] strArr = A02;
        if (strArr[0].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        A02[1] = "k6Oe58jhR2JQ133LIP7LsY5lW6eco9l5";
        this.A01 = true;
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        C1285Qb c1285QbA07 = A07();
        if (c1285QbA07 == null) {
            A00(0);
            return;
        }
        View view = c1285QbA07.A0C;
        AbstractC1284Qa abstractC1284Qa = (AbstractC1284Qa) c1285QbA07.A0E.get();
        boolean z = view == null;
        if (z || abstractC1284Qa == null) {
            if (c1285QbA07.A07) {
                A00(z ? 1 : 2);
                return;
            }
            return;
        }
        C1286Qc c1286QcA0E = C1285Qb.A0E(view, c1285QbA07.A0A, this.A00);
        if (c1286QcA0E.A04()) {
            C1285Qb.A05(c1285QbA07);
        } else {
            c1285QbA07.A00 = 0;
        }
        boolean z2 = c1285QbA07.A00 > c1285QbA07.A09;
        boolean z3 = c1285QbA07.A05 != null && c1285QbA07.A05.A04();
        if (z2 || !c1286QcA0E.A04()) {
            c1285QbA07.A05 = c1286QcA0E;
        }
        String strValueOf = String.valueOf(c1286QcA0E.A01());
        synchronized (c1285QbA07) {
            c1285QbA07.A06.put(strValueOf, Integer.valueOf((c1285QbA07.A06.containsKey(strValueOf) ? ((Integer) c1285QbA07.A06.get(strValueOf)).intValue() : 0) + 1));
        }
        if (z2 && !z3) {
            this.A01 = true;
            c1285QbA07.A03 = System.currentTimeMillis();
            if (c1285QbA07.A07) {
                this.A00.A0E().A3H();
            }
            abstractC1284Qa.A03();
            if (BuildConfigApi.isDebug() && AdInternalSettings.isVisibleAnimation()) {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(500L);
                view.startAnimation(alphaAnimation);
            }
            if (!c1285QbA07.A0F) {
                return;
            }
        } else if (z2 || !z3) {
            abstractC1284Qa.A02();
            if (!this.A01 && c1285QbA07.A07) {
                this.A00.A0E().A3F(c1286QcA0E.A02());
            }
            this.A01 = true;
        } else {
            this.A01 = true;
            if (c1285QbA07.A07) {
                this.A00.A0E().A2n(c1286QcA0E.A02());
            }
            abstractC1284Qa.A00();
        }
        if (c1285QbA07.A08 || c1285QbA07.A04 == null) {
            return;
        }
        c1285QbA07.A0B.postDelayed(c1285QbA07.A04, c1285QbA07.A02);
    }

    @Override // com.facebook.ads.redexgen.X.C7P
    public final YA A5p() {
        return this.A00;
    }
}
