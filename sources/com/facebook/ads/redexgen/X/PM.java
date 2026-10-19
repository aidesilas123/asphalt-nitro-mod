package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class PM implements View.OnTouchListener {
    public final /* synthetic */ PN A00;

    public PM(PN pn) {
        this.A00 = pn;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 1) {
            return false;
        }
        this.A00.A01 = System.currentTimeMillis();
        PN.A00(this.A00);
        this.A00.A06.A9Y(this.A00.A03.A11(), new NL().A03(this.A00.getViewabilityChecker()).A02(this.A00.getTouchDataRecorder()).A05());
        return false;
    }
}
