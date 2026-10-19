package com.tapjoy;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.VideoView;
import androidx.annotation.VisibleForTesting;
import com.json.o2;
import com.tapjoy.TapjoyErrorMessage;
import com.tapjoy.internal.a8;
import com.tapjoy.internal.i7;
import com.tapjoy.internal.i8;
import com.tapjoy.internal.j8;
import com.tapjoy.internal.l6;
import com.tapjoy.internal.s7;
import com.tapjoy.internal.v8;
import com.tapjoy.internal.w6;
import com.tapjoy.internal.x6;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: loaded from: classes4.dex */
public class TJAdUnit implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnInfoListener {
    public static TJVideoListener a;
    public boolean A;
    public boolean B;
    public w6 C;
    public i8 D;
    public TJAdUnitWebViewListener c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TJAdUnitVideoListener f7787d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TJAdUnitActivity f7788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public k f7789f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public l0 f7790g;
    public View h;
    public TJWebView i;
    public VideoView j;
    public MediaPlayer k;
    public int l;
    public boolean m;
    public boolean n;
    public boolean o;
    public ScheduledFuture p;
    public AudioManager q;
    public int s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public volatile boolean y;
    public boolean z;
    public final Handler b = new Handler(Looper.getMainLooper());
    public int r = 0;
    public final l6 E = new l6(this);
    public final x6 F = new x6(this);
    public final i7 G = new i7(this);
    public final s7 H = new s7(this);
    public final b I = new b(this);
    public final j8 J = new j8(this);

    public interface TJAdUnitVideoListener {
        void onVideoCompleted();

        void onVideoError(String str);

        void onVideoStart();
    }

    public interface TJAdUnitWebViewListener {
        void onClick();

        void onClosed();

        void onContentReady();
    }

    public void A(TJAdUnitWebViewListener tJAdUnitWebViewListener) {
        this.c = tJAdUnitWebViewListener;
    }

    public void a(boolean z) {
        this.f7789f.b(Boolean.valueOf(z));
    }

    @VisibleForTesting
    public void b() {
        k kVar = this.f7789f;
        if (kVar != null) {
            kVar.c();
        }
        this.b.removeCallbacks(this.F);
        this.b.removeCallbacks(this.G);
        this.b.removeCallbacks(this.H);
        View view = this.h;
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.h);
            }
            this.h = null;
        }
        TJWebView tJWebView = this.i;
        if (tJWebView != null) {
            tJWebView.destroy();
            this.i = null;
        }
        this.A = false;
        this.y = false;
        this.v = false;
        w(null);
        TapjoyLog.d("TJAdUnit", "detachVolumeListener");
        ScheduledFuture scheduledFuture = this.p;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            this.p = null;
        }
        this.q = null;
        try {
            VideoView videoView = this.j;
            if (videoView != null) {
                videoView.stopPlayback();
                ViewGroup viewGroup2 = (ViewGroup) this.j.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.removeView(this.j);
                }
                this.j = null;
            }
        } catch (IllegalStateException e2) {
            TapjoyLog.e("TJAdUnit", "Exception while clearing the video view: " + e2.toString());
        }
        TJAdUnitWebViewListener tJAdUnitWebViewListener = this.c;
        if (tJAdUnitWebViewListener != null) {
            tJAdUnitWebViewListener.onClosed();
        }
        u();
    }

    public void c() {
        TJAdUnitWebViewListener tJAdUnitWebViewListener = this.c;
        if (tJAdUnitWebViewListener != null) {
            tJAdUnitWebViewListener.onContentReady();
        }
    }

    public void d(String str) {
        TapjoyLog.e("TJAdUnit", "Firing onVideoError with error: " + str);
        if (g() != null) {
            g().onVideoError(3);
        }
        TJAdUnitVideoListener tJAdUnitVideoListener = this.f7787d;
        if (tJAdUnitVideoListener != null) {
            tJAdUnitVideoListener.onVideoError(str);
        }
    }

    public View e() {
        return this.h;
    }

    public boolean f() {
        return this.f7789f.j;
    }

    public TJVideoListener g() {
        return a;
    }

    public w6 h() {
        return this.C;
    }

    public i8 i() {
        return this.D;
    }

    public int j() {
        return this.l;
    }

    public VideoView k() {
        return this.j;
    }

    public float l() {
        return this.r / this.s;
    }

    public TJWebView m() {
        return this.i;
    }

    public boolean n() {
        return this.w;
    }

    public boolean o() {
        return this.u;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        k kVar;
        TapjoyLog.i("TJAdUnit", "video -- onCompletion");
        this.b.removeCallbacks(this.F);
        this.b.removeCallbacks(this.G);
        this.b.removeCallbacks(this.H);
        this.o = true;
        if (!this.m && (kVar = this.f7789f) != null) {
            kVar.l();
        }
        this.m = false;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        String str;
        TapjoyLog.e("TJAdUnit", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, "Error encountered when instantiating the VideoView: " + i + " - " + i2));
        this.m = true;
        this.b.removeCallbacks(this.F);
        this.b.removeCallbacks(this.G);
        this.b.removeCallbacks(this.H);
        String strConcat = (i != 100 ? "MEDIA_ERROR_UNKNOWN" : "MEDIA_ERROR_SERVER_DIED").concat(" -- ");
        if (i2 == -1010) {
            str = strConcat + "MEDIA_ERROR_UNSUPPORTED";
        } else if (i2 == -1007) {
            str = strConcat + "MEDIA_ERROR_MALFORMED";
        } else if (i2 == -1004) {
            str = strConcat + "MEDIA_ERROR_IO";
        } else if (i2 != -110) {
            str = strConcat + "MEDIA_ERROR_EXTRA_UNKNOWN";
        } else {
            str = strConcat + "MEDIA_ERROR_TIMED_OUT";
        }
        this.f7789f.m(str);
        return i == 1 || i2 == -1004;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        String str;
        if (i == 3) {
            str = "MEDIA_INFO_VIDEO_RENDERING_START";
        } else if (i != 801) {
            switch (i) {
                case 700:
                    str = "MEDIA_INFO_VIDEO_TRACK_LAGGING";
                    break;
                case 701:
                    str = "MEDIA_INFO_BUFFERING_START";
                    break;
                case 702:
                    str = "MEDIA_INFO_BUFFERING_END";
                    break;
                default:
                    str = "";
                    break;
            }
        } else {
            str = "MEDIA_INFO_NOT_SEEKABLE";
        }
        this.f7789f.n(str);
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        TapjoyLog.i("TJAdUnit", "video -- onPrepared");
        VideoView videoView = this.j;
        if (videoView == null) {
            return;
        }
        int duration = videoView.getDuration();
        int measuredWidth = this.j.getMeasuredWidth();
        int measuredHeight = this.j.getMeasuredHeight();
        this.k = mediaPlayer;
        boolean z = this.t;
        if (z) {
            if (mediaPlayer != null) {
                if (z) {
                    mediaPlayer.setVolume(0.0f, 0.0f);
                } else {
                    mediaPlayer.setVolume(1.0f, 1.0f);
                }
                if (this.u != z) {
                    this.u = z;
                    this.f7789f.s();
                }
            } else {
                this.t = z;
            }
        }
        if (this.l > 0 && this.j.getCurrentPosition() != this.l) {
            this.k.setOnSeekCompleteListener(new a8(this, duration, measuredWidth, measuredHeight));
        } else if (this.f7789f != null) {
            this.b.removeCallbacks(this.H);
            this.f7789f.q(duration, measuredWidth, measuredHeight);
        }
        this.k.setOnInfoListener(this);
    }

    public boolean p() {
        return this.o;
    }

    public void q(w wVar, boolean z, Context context) {
        this.w = false;
        TapjoyUtil.runOnMainThread(new k0(this, context, wVar, z));
    }

    public void r() {
        TJAdUnitActivity tJAdUnitActivity;
        if (this.f7789f == null || (tJAdUnitActivity = this.f7788e) == null) {
            return;
        }
        int iB = v8.b(tJAdUnitActivity);
        int iA = v8.a(this.f7788e);
        this.f7789f.k(iB > iA ? o2.h.C : o2.h.D, iB, iA);
    }

    public void s() {
        this.A = true;
        k kVar = this.f7789f;
        if (kVar != null) {
            kVar.v(false);
            this.f7789f.t();
        }
        this.f7790g.d();
    }

    public boolean t(w wVar, Context context) {
        if (this.w || !wVar.p() || !TJPlacementManager.canPreRenderPlacement() || TapjoyConnectCore.isViewOpen()) {
            c();
            return false;
        }
        TapjoyLog.i("TJAdUnit", "Pre-rendering ad unit for placement: " + wVar.i());
        TJPlacementManager.incrementPlacementPreRenderCount();
        q(wVar, true, context);
        return true;
    }

    public void u() {
        this.w = false;
        this.z = false;
        this.x = false;
        this.t = false;
    }

    public void v(l lVar) {
        k kVar = this.f7789f;
        if (kVar == null) {
            TJAdUnitActivity tJAdUnitActivity = this.f7788e;
            if (tJAdUnitActivity != null) {
                tJAdUnitActivity.finish();
                TapjoyLog.w("TJAdUnit", "Failed to resume TJAdUnit. TJAdUnitBridge is null.");
                return;
            }
            return;
        }
        if (kVar.f8034f) {
            TapjoyLog.d("TJAdUnit", "onResume bridge.didLaunchOtherActivity callbackID: " + this.f7789f.h);
            k kVar2 = this.f7789f;
            kVar2.j(kVar2.h, Boolean.TRUE);
            this.f7789f.f8034f = false;
        }
        this.A = false;
        this.f7789f.v(true);
        this.f7789f.u();
        if (lVar != null) {
            int i = lVar.a;
            this.l = i;
            VideoView videoView = this.j;
            if (videoView != null) {
                videoView.seekTo(i);
            }
            if (this.k != null) {
                this.t = lVar.c;
            }
        }
        if (this.B) {
            this.B = false;
            this.b.postDelayed(this.F, 200L);
        }
    }

    public void w(TJAdUnitActivity tJAdUnitActivity) {
        this.f7788e = tJAdUnitActivity;
    }

    public void x() {
        this.D = new i8();
    }

    public void y(TJAdUnitVideoListener tJAdUnitVideoListener) {
        this.f7787d = tJAdUnitVideoListener;
    }

    public void z(boolean z) {
        k kVar;
        TJAdUnitActivity tJAdUnitActivity;
        if (this.f7789f != null && (tJAdUnitActivity = this.f7788e) != null) {
            int iB = v8.b(tJAdUnitActivity);
            int iA = v8.a(this.f7788e);
            this.f7789f.k(iB > iA ? o2.h.C : o2.h.D, iB, iA);
        }
        this.v = z;
        if (z && this.z && (kVar = this.f7789f) != null) {
            kVar.e();
        }
    }
}
