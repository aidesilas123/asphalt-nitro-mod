package com.facebook.ads.redexgen.X;

import android.media.MediaCodec;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class I8 implements MediaCodec.OnFrameRenderedListener {
    public final /* synthetic */ C1A A00;

    public I8(C1A c1a, MediaCodec mediaCodec) {
        this.A00 = c1a;
        mediaCodec.setOnFrameRenderedListener(this, new Handler());
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
        if (this != this.A00.A00) {
            return;
        }
        this.A00.A1R();
    }
}
