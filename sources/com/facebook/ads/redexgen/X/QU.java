package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class QU implements View.OnTouchListener {
    public final /* synthetic */ TextureViewSurfaceTextureListenerC1090Ij A00;

    public QU(TextureViewSurfaceTextureListenerC1090Ij textureViewSurfaceTextureListenerC1090Ij) {
        this.A00 = textureViewSurfaceTextureListenerC1090Ij;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.A00.A0G && this.A00.A0A != null && motionEvent.getAction() == 1) {
            if (this.A00.A0A.isShowing()) {
                this.A00.A0A.hide();
            } else {
                this.A00.A0A.show();
            }
        }
        return true;
    }
}
