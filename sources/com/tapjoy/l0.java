package com.tapjoy;

import android.content.Context;
import android.webkit.WebView;
import android.widget.VideoView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tapjoy.internal.i8;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class l0 extends t {
    public final /* synthetic */ TJAdUnit a;

    public l0(TJAdUnit tJAdUnit) {
        this.a = tJAdUnit;
    }

    @Override // com.tapjoy.t
    public final Context a() {
        TJAdUnit tJAdUnit = this.a;
        TJAdUnitActivity tJAdUnitActivity = tJAdUnit.f7788e;
        if (tJAdUnitActivity != null) {
            return tJAdUnitActivity;
        }
        TJWebView tJWebView = tJAdUnit.i;
        if (tJWebView != null) {
            return tJWebView.getContext();
        }
        return null;
    }

    @Override // com.tapjoy.t
    public final Map b() {
        String str = String.format(Locale.ENGLISH, "%.2f", Float.valueOf(this.a.l()));
        boolean zO = this.a.o();
        TapjoyLog.d("TJAdUnit", "getVolumeArgs: volume=" + str + "; isMuted=" + zO);
        HashMap map = new HashMap();
        map.put("currentVolume", str);
        map.put("isMuted", Boolean.valueOf(zO));
        return map;
    }

    @Override // com.tapjoy.t
    public final WebView c() {
        return this.a.i;
    }

    public final boolean d() {
        TJAdUnit tJAdUnit = this.a;
        tJAdUnit.b.removeCallbacks(tJAdUnit.F);
        tJAdUnit.b.removeCallbacks(tJAdUnit.G);
        tJAdUnit.b.removeCallbacks(tJAdUnit.H);
        VideoView videoView = this.a.j;
        if (videoView == null || !videoView.isPlaying()) {
            return false;
        }
        if (i8.c) {
            this.a.i().a(CampaignEx.JSON_NATIVE_VIDEO_PAUSE, (HashMap) null);
        }
        this.a.j.pause();
        TJAdUnit tJAdUnit2 = this.a;
        tJAdUnit2.l = tJAdUnit2.j.getCurrentPosition();
        TapjoyLog.i("TJAdUnit", "Video paused at: " + this.a.l);
        TJAdUnit tJAdUnit3 = this.a;
        tJAdUnit3.f7789f.o(tJAdUnit3.l);
        return true;
    }
}
