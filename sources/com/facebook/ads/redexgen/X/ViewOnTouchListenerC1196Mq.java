package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class ViewOnTouchListenerC1196Mq implements View.OnTouchListener {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                LV.A0M(view, C1202Mw.A0D);
                return false;
            case 1:
                LV.A0M(view, 0);
                return false;
            default:
                return false;
        }
    }
}
