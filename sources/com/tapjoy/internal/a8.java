package com.tapjoy.internal;

import android.media.MediaPlayer;
import com.tapjoy.TJAdUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class a8 implements MediaPlayer.OnSeekCompleteListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TJAdUnit f7853d;

    public a8(TJAdUnit tJAdUnit, int i, int i2, int i3) {
        this.f7853d = tJAdUnit;
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public final void onSeekComplete(MediaPlayer mediaPlayer) {
        TJAdUnit tJAdUnit = this.f7853d;
        tJAdUnit.b.removeCallbacks(tJAdUnit.H);
        this.f7853d.f7789f.q(this.a, this.b, this.c);
    }
}
