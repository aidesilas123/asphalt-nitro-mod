package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class O9 implements View.OnTouchListener {
    public final /* synthetic */ C1347Sl A00;

    public O9(C1347Sl c1347Sl) {
        this.A00 = c1347Sl;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.A00.A00 = motionEvent.getY();
                break;
            case 1:
                if (this.A00.A00 < motionEvent.getY()) {
                    this.A00.A0f(false);
                }
                break;
        }
        return true;
    }
}
