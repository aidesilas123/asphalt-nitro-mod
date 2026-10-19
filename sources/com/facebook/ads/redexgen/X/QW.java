package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public interface QW {
    void A8G();

    boolean A8R();

    boolean A8S();

    boolean A8z();

    void ADk(boolean z, int i);

    void AFc(int i);

    void AFh(EnumC1267Pj enumC1267Pj, int i);

    void AFo(int i);

    void destroy();

    int getCurrentPosition();

    int getDuration();

    long getInitialBufferTime();

    EnumC1267Pj getStartReason();

    QY getState();

    int getVideoHeight();

    int getVideoWidth();

    View getView();

    float getVolume();

    void seekTo(int i);

    void setBackgroundPlaybackEnabled(boolean z);

    void setControlsAnchorView(View view);

    void setFullScreen(boolean z);

    void setRequestedVolume(float f2);

    void setVideoMPD(String str);

    void setVideoStateChangeListener(QZ qz);

    void setup(Uri uri);
}
