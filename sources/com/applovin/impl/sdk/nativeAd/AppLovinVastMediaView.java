package com.applovin.impl.sdk.nativeAd;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.ak;
import com.applovin.exoplayer2.am;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.aw;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.h.ad;
import com.applovin.exoplayer2.h.u;
import com.applovin.exoplayer2.k.p;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.ui.f;
import com.applovin.exoplayer2.w1;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.adview.k;
import com.applovin.impl.b.a;
import com.applovin.impl.b.l;
import com.applovin.impl.b.m;
import com.applovin.impl.b.o;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.utils.v;
import com.applovin.impl.sdk.x;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public class AppLovinVastMediaView extends AppLovinMediaView implements AppLovinCommunicatorSubscriber, u.a {
    private static final String COUNTDOWN_IDENTIFIER_PROGRESS_TRACKING = "PROGRESS_TRACKING";
    private static final long FADE_ANIMATION_DURATION_MILLIS = 250;
    private static final String TAG = "AppLovinVastMediaView";
    private final AtomicBoolean automaticPauseHandled;
    private final AtomicBoolean automaticResumeHandled;
    private final Handler countdownHandler;
    private final k countdownManager;

    @Nullable
    private ImageView industryIconImageView;
    private final AtomicBoolean initialOnAttachedToWindowHandled;
    private boolean isVideoMuted;
    private boolean isVideoPausedByUser;
    private final boolean isVideoStream;
    private long lastVideoPositionFromPauseMillis;
    private final com.applovin.impl.sdk.utils.a lifecycleCallbacksAdapter;
    private final AtomicBoolean mediaErrorHandled;
    private final aw mediaPlayer;

    @Nullable
    private ImageView muteButtonImageView;

    @Nullable
    private ImageView playPauseButtonImageView;

    @Nullable
    private FrameLayout replayIconContainer;
    private int savedVideoPercentViewed;
    private long startTimeMillis;
    private final com.applovin.impl.b.a vastAd;
    private long videoDurationMillis;
    private final AtomicBoolean videoEndListenerNotified;
    private final Set<com.applovin.impl.b.k> videoProgressTrackers;
    private final com.applovin.exoplayer2.ui.g videoView;
    private boolean videoWasCompleted;

    @Nullable
    private LinearLayout videoWidgetLinearLayout;
    private Activity viewActivity;

    private class a implements View.OnClickListener {
        private a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Uri uriMw;
            com.applovin.impl.b.g gVarLY = AppLovinVastMediaView.this.vastAd.LY();
            if (gVarLY == null || (uriMw = gVarLY.Mw()) == null) {
                return;
            }
            x xVar = AppLovinVastMediaView.this.logger;
            if (x.Fn()) {
                AppLovinVastMediaView.this.logger.f(AppLovinVastMediaView.TAG, "Industry icon clicked, opening URL: " + uriMw);
            }
            AppLovinVastMediaView.this.maybeFireTrackers(a.c.INDUSTRY_ICON_CLICK);
            s.a(uriMw, view.getContext(), AppLovinVastMediaView.this.sdk);
        }
    }

    private class b implements AppLovinTouchToClickListener.OnClickListener {
        private final AppLovinNativeAdImpl aHh;

        public b(AppLovinNativeAdImpl appLovinNativeAdImpl) {
            this.aHh = appLovinNativeAdImpl;
        }

        @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
        public void onClick(View view, MotionEvent motionEvent) {
            Uri uriFL;
            AppLovinVastMediaView.this.maybeFireTrackers(a.c.VIDEO_CLICK);
            AppLovinVastMediaView.this.vastAd.getAdEventTracker().Jg();
            if (AppLovinVastMediaView.this.vastAd.Gq() && (uriFL = AppLovinVastMediaView.this.vastAd.FL()) != null) {
                x xVar = AppLovinVastMediaView.this.logger;
                if (x.Fn()) {
                    AppLovinVastMediaView.this.logger.f(AppLovinVastMediaView.TAG, "Clicking through video");
                }
                AppLovinVastMediaView.this.sdk.BD().maybeSubmitPersistentPostbacks(AppLovinVastMediaView.this.vastAd.a(motionEvent, false));
                this.aHh.handleNativeAdClick(uriFL, null, motionEvent, AppLovinVastMediaView.this.getContext());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class c implements an.b, f.d {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void HH() {
            AppLovinVastMediaView.this.mediaPlayer.b(0L);
        }

        @Override // com.applovin.exoplayer2.an.b
        public void Z(int i) {
            x xVar = AppLovinVastMediaView.this.logger;
            if (x.Fn()) {
                AppLovinVastMediaView.this.logger.f(AppLovinVastMediaView.TAG, "Player state changed to state " + i + " and will play when ready: " + AppLovinVastMediaView.this.mediaPlayer.aE());
            }
            if (i != 3) {
                if (i == 4) {
                    x xVar2 = AppLovinVastMediaView.this.logger;
                    if (x.Fn()) {
                        AppLovinVastMediaView.this.logger.f(AppLovinVastMediaView.TAG, "Video completed");
                    }
                    AppLovinVastMediaView.this.videoWasCompleted = true;
                    AppLovinVastMediaView.this.finishVideo();
                    if (AppLovinVastMediaView.this.replayIconContainer != null) {
                        v.a(AppLovinVastMediaView.this.replayIconContainer, AppLovinVastMediaView.FADE_ANIMATION_DURATION_MILLIS, new Runnable() { // from class: com.applovin.impl.sdk.nativeAd.f
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.a.HH();
                            }
                        });
                        return;
                    } else {
                        AppLovinVastMediaView.this.showMediaImageView();
                        return;
                    }
                }
                return;
            }
            AppLovinVastMediaView.this.mediaPlayer.h(!AppLovinVastMediaView.this.isVideoMuted ? 1 : 0);
            AppLovinVastMediaView appLovinVastMediaView = AppLovinVastMediaView.this;
            appLovinVastMediaView.videoDurationMillis = appLovinVastMediaView.mediaPlayer.aM();
            AppLovinVastMediaView.this.vastAd.getAdEventTracker().b(TimeUnit.MILLISECONDS.toSeconds(AppLovinVastMediaView.this.videoDurationMillis), u.P(AppLovinVastMediaView.this.sdk));
            x xVar3 = AppLovinVastMediaView.this.logger;
            if (x.Fn()) {
                AppLovinVastMediaView.this.logger.f(AppLovinVastMediaView.TAG, "MediaPlayer prepared: " + AppLovinVastMediaView.this.mediaPlayer);
            }
            AppLovinVastMediaView.this.countdownManager.start();
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(ab abVar, int i) {
            w1.b(this, abVar, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(ac acVar) {
            w1.c(this, acVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public void a(ak akVar) {
            AppLovinVastMediaView.this.handleMediaError("Video view error (" + u.a(akVar, AppLovinVastMediaView.this.sdk) + ")");
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(an.e eVar, an.e eVar2, int i) {
            w1.e(this, eVar, eVar2, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(an anVar, an.c cVar) {
            w1.f(this, anVar, cVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(ad adVar, com.applovin.exoplayer2.j.h hVar) {
            w1.g(this, adVar, hVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void aa(int i) {
            w1.h(this, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void ab(int i) {
            w1.i(this, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void ac(int i) {
            w1.j(this, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void b(ak akVar) {
            w1.k(this, akVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void b(am amVar) {
            w1.l(this, amVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void b(ba baVar, int i) {
            w1.m(this, baVar, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void cD() {
            w1.n(this);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void d(an.a aVar) {
            w1.o(this, aVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void d(boolean z, int i) {
            w1.p(this, z, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void e(boolean z, int i) {
            w1.q(this, z, i);
        }

        @Override // com.applovin.exoplayer2.ui.f.d
        public void eZ(int i) {
            if (i == 0) {
                AppLovinVastMediaView.this.videoView.nG();
            }
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void w(boolean z) {
            w1.r(this, z);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void x(boolean z) {
            w1.s(this, z);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void y(boolean z) {
            w1.t(this, z);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void z(boolean z) {
            w1.u(this, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class d implements View.OnClickListener {
        private d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void sQ() {
            AppLovinVastMediaView.this.videoWasCompleted = false;
            AppLovinVastMediaView.this.automaticResumeHandled.set(false);
            AppLovinVastMediaView.this.sdk.BM().a(AppLovinVastMediaView.this.lifecycleCallbacksAdapter);
            AppLovinVastMediaView.this.maybeHandleResume();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == AppLovinVastMediaView.this.playPauseButtonImageView) {
                if (AppLovinVastMediaView.this.mediaPlayer.v()) {
                    AppLovinVastMediaView.this.isVideoPausedByUser = true;
                    AppLovinVastMediaView.this.maybeHandlePause();
                    return;
                } else {
                    AppLovinVastMediaView.this.isVideoPausedByUser = false;
                    AppLovinVastMediaView.this.maybeHandleResume();
                    return;
                }
            }
            if (view != AppLovinVastMediaView.this.muteButtonImageView) {
                if (view == AppLovinVastMediaView.this.replayIconContainer) {
                    v.b(AppLovinVastMediaView.this.replayIconContainer, AppLovinVastMediaView.FADE_ANIMATION_DURATION_MILLIS, new Runnable() { // from class: com.applovin.impl.sdk.nativeAd.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.a.sQ();
                        }
                    });
                }
            } else {
                boolean z = !AppLovinVastMediaView.this.isVideoMuted;
                AppLovinVastMediaView.this.isVideoMuted = z;
                AppLovinVastMediaView.this.mediaPlayer.h(!z ? 1 : 0);
                AppLovinVastMediaView.this.populateMuteImage(z);
            }
        }
    }

    public AppLovinVastMediaView(AppLovinNativeAdImpl appLovinNativeAdImpl, n nVar, Context context) {
        int iDpToPx;
        super(appLovinNativeAdImpl, nVar, context);
        Handler handler = new Handler(Looper.getMainLooper());
        this.countdownHandler = handler;
        this.countdownManager = new k(handler, this.sdk);
        this.videoEndListenerNotified = new AtomicBoolean();
        this.mediaErrorHandled = new AtomicBoolean();
        this.initialOnAttachedToWindowHandled = new AtomicBoolean();
        this.automaticPauseHandled = new AtomicBoolean();
        this.automaticResumeHandled = new AtomicBoolean();
        this.isVideoMuted = true;
        this.lastVideoPositionFromPauseMillis = -1L;
        HashSet hashSet = new HashSet();
        this.videoProgressTrackers = hashSet;
        this.lifecycleCallbacksAdapter = new com.applovin.impl.sdk.utils.a() { // from class: com.applovin.impl.sdk.nativeAd.AppLovinVastMediaView.1
            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                if (activity.equals(AppLovinVastMediaView.this.viewActivity)) {
                    AppLovinVastMediaView.this.maybeHandlePause();
                }
            }

            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                if (!activity.equals(AppLovinVastMediaView.this.viewActivity) || AppLovinVastMediaView.this.isVideoPausedByUser) {
                    return;
                }
                AppLovinVastMediaView.this.maybeHandleResume();
            }
        };
        com.applovin.impl.b.a vastAd = appLovinNativeAdImpl.getVastAd();
        this.vastAd = vastAd;
        boolean zFF = vastAd.FF();
        this.isVideoStream = zFF;
        if (u.a(com.applovin.impl.sdk.c.b.aMb, nVar)) {
            checkCachedAdResourcesAsync(!zFF);
        }
        if (zFF) {
            AppLovinCommunicator.getInstance(context).subscribe(this, "video_caching_failed");
        }
        if (vastAd.LZ()) {
            this.industryIconImageView = com.applovin.impl.b.g.b(vastAd.LY().Mv(), context, nVar);
            int iDpToPx2 = AppLovinSdkUtils.dpToPx(context, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aPz)).intValue());
            this.industryIconImageView.setLayoutParams(new FrameLayout.LayoutParams(iDpToPx2, iDpToPx2, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aPB)).intValue()));
            this.industryIconImageView.setOnClickListener(new a());
            addView(this.industryIconImageView);
        }
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aPG)).booleanValue()) {
            LinearLayout linearLayout = new LinearLayout(context);
            this.videoWidgetLinearLayout = linearLayout;
            linearLayout.setOrientation(0);
            this.videoWidgetLinearLayout.setBackgroundResource(R.drawable.applovin_rounded_black_background);
            this.videoWidgetLinearLayout.setAlpha(((Float) nVar.a(com.applovin.impl.sdk.c.b.aPF)).floatValue());
            ImageView imageView = new ImageView(context);
            this.playPauseButtonImageView = imageView;
            imageView.setClickable(true);
            d dVar = new d();
            this.playPauseButtonImageView.setOnClickListener(dVar);
            int iDpToPx3 = AppLovinSdkUtils.dpToPx(context, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aPD)).intValue());
            this.playPauseButtonImageView.setLayoutParams(new FrameLayout.LayoutParams(iDpToPx3, iDpToPx3));
            populatePlayPauseImage(false);
            this.videoWidgetLinearLayout.addView(this.playPauseButtonImageView);
            this.muteButtonImageView = new ImageView(context);
            if (populateMuteImage(this.isVideoMuted)) {
                iDpToPx = AppLovinSdkUtils.dpToPx(context, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aPC)).intValue());
                this.muteButtonImageView.setClickable(true);
                this.muteButtonImageView.setOnClickListener(dVar);
                this.muteButtonImageView.setLayoutParams(new FrameLayout.LayoutParams(iDpToPx, iDpToPx));
                this.videoWidgetLinearLayout.addView(this.muteButtonImageView);
            } else {
                iDpToPx = 0;
            }
            int iDpToPx4 = AppLovinSdkUtils.dpToPx(context, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aPE)).intValue());
            this.videoWidgetLinearLayout.setPadding(iDpToPx4, iDpToPx4, iDpToPx4, iDpToPx4);
            int i = iDpToPx4 * 2;
            this.videoWidgetLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(iDpToPx3 + iDpToPx + i, Math.max(iDpToPx3, iDpToPx) + i, 8388691));
            addView(this.videoWidgetLinearLayout);
        }
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aPH)).booleanValue()) {
            FrameLayout frameLayout = new FrameLayout(getContext());
            this.replayIconContainer = frameLayout;
            frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            this.replayIconContainer.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.replayIconContainer.setVisibility(4);
            this.replayIconContainer.setOnClickListener(new d());
            ImageView imageView2 = new ImageView(getContext());
            int iDpToPx5 = AppLovinSdkUtils.dpToPx(context, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aPI)).intValue());
            imageView2.setLayoutParams(new FrameLayout.LayoutParams(iDpToPx5, iDpToPx5, 17));
            imageView2.setImageResource(R.drawable.applovin_ic_replay_icon);
            imageView2.setAdjustViewBounds(true);
            imageView2.setMaxHeight(this.replayIconContainer.getHeight());
            imageView2.setMaxWidth(this.replayIconContainer.getWidth());
            this.replayIconContainer.addView(imageView2);
            addView(this.replayIconContainer);
        }
        aw awVarCY = new aw.a(getContext()).cY();
        this.mediaPlayer = awVarCY;
        c cVar = new c();
        awVarCY.f(cVar);
        awVarCY.u(0);
        com.applovin.exoplayer2.ui.g gVar = new com.applovin.exoplayer2.ui.g(getContext());
        this.videoView = gVar;
        gVar.nG();
        gVar.setControllerVisibilityListener(cVar);
        gVar.setPlayer(awVarCY);
        gVar.setOnTouchListener(new AppLovinTouchToClickListener(nVar, com.applovin.impl.sdk.c.b.aLn, getContext(), new b(appLovinNativeAdImpl)));
        addView(gVar);
        bringChildToFront(this.industryIconImageView);
        bringChildToFront(this.videoWidgetLinearLayout);
        prepareMediaPlayer();
        appLovinNativeAdImpl.setVideoView(gVar);
        hashSet.addAll(vastAd.a(a.c.VIDEO, l.aXV));
    }

    private void checkCachedAdResourcesAsync(boolean z) {
        u.a(z, this.vastAd, this.sdk, n.getApplicationContext(), this);
    }

    private void checkCachedAdResourcesImmediately(boolean z) {
        if (u.a(z, this.vastAd, this.sdk, getContext()).isEmpty()) {
            return;
        }
        handleUnavailableCachedResources();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishVideo() {
        maybeFireTrackers(a.c.VIDEO, "close");
        maybeHandlePause();
        this.sdk.BM().b(this.lifecycleCallbacksAdapter);
        if (this.videoWasCompleted) {
            maybeFireRemainingCompletionTrackers();
            this.vastAd.getAdEventTracker().Ja();
        }
        if (this.videoEndListenerNotified.compareAndSet(false, true)) {
            this.sdk.BD().trackVideoEnd(this.vastAd, TimeUnit.MILLISECONDS.toSeconds(SystemClock.elapsedRealtime() - this.startTimeMillis), getVideoPercentViewed(), this.isVideoStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getVideoPercentViewed() {
        long jAN = this.mediaPlayer.aN();
        if (this.videoWasCompleted) {
            return 100;
        }
        return jAN > 0 ? (int) ((jAN / this.videoDurationMillis) * 100.0f) : this.savedVideoPercentViewed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMediaError(String str) {
        if (x.Fn()) {
            this.logger.i(TAG, str);
        }
        maybeFireTrackers(a.c.ERROR, com.applovin.impl.b.f.MEDIA_FILE_ERROR);
        this.vastAd.getAdEventTracker().dj(str);
        if (this.mediaErrorHandled.compareAndSet(false, true)) {
            finishVideo();
            showMediaImageView();
        }
    }

    private void handleUnavailableCachedResources() {
        if (x.Fn()) {
            this.logger.i(TAG, "Video failed due to unavailable resources");
        }
        finishVideo();
        showMediaImageView();
    }

    private void maybeFireRemainingCompletionTrackers() {
        if (getVideoPercentViewed() < this.vastAd.GE() || this.videoProgressTrackers.isEmpty()) {
            return;
        }
        if (x.Fn()) {
            this.logger.h(TAG, "Firing " + this.videoProgressTrackers.size() + " un-fired video progress trackers when video was completed.");
        }
        maybeFireTrackers(this.videoProgressTrackers);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeFireTrackers(a.c cVar) {
        maybeFireTrackers(cVar, com.applovin.impl.b.f.UNSPECIFIED);
    }

    private void maybeFireTrackers(a.c cVar, com.applovin.impl.b.f fVar) {
        maybeFireTrackers(cVar, "", fVar);
    }

    private void maybeFireTrackers(a.c cVar, String str) {
        maybeFireTrackers(cVar, str, com.applovin.impl.b.f.UNSPECIFIED);
    }

    private void maybeFireTrackers(a.c cVar, String str, com.applovin.impl.b.f fVar) {
        maybeFireTrackers(this.vastAd.a(cVar, str), fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeFireTrackers(Set<com.applovin.impl.b.k> set) {
        maybeFireTrackers(set, com.applovin.impl.b.f.UNSPECIFIED);
    }

    private void maybeFireTrackers(Set<com.applovin.impl.b.k> set, com.applovin.impl.b.f fVar) {
        if (set == null || set.isEmpty()) {
            return;
        }
        long seconds = TimeUnit.MILLISECONDS.toSeconds(this.mediaPlayer.aN());
        o oVarLV = this.vastAd.LV();
        Uri uriMI = oVarLV != null ? oVarLV.MI() : null;
        if (x.Fn()) {
            this.logger.f(TAG, "Firing " + set.size() + " tracker(s): " + set);
        }
        m.a(set, seconds, uriMI, fVar, this.sdk);
    }

    private void maybeHandleOnAttachedToWindow() {
        if (this.initialOnAttachedToWindowHandled.compareAndSet(false, true)) {
            if (this.industryIconImageView != null && this.vastAd.LZ()) {
                maybeFireTrackers(a.c.INDUSTRY_ICON_IMPRESSION);
                this.industryIconImageView.setVisibility(0);
            }
            this.startTimeMillis = SystemClock.elapsedRealtime();
            maybeFireTrackers(a.c.IMPRESSION);
            maybeFireTrackers(a.c.VIDEO, "creativeView");
            this.vastAd.getAdEventTracker().IL();
            this.vastAd.setHasShown(true);
            this.sdk.BD().trackImpression(this.vastAd);
            this.viewActivity = com.applovin.impl.sdk.utils.b.y(u.A(this));
            this.sdk.BM().a(this.lifecycleCallbacksAdapter);
            this.mediaPlayer.k(true);
            this.countdownManager.a(COUNTDOWN_IDENTIFIER_PROGRESS_TRACKING, TimeUnit.SECONDS.toMillis(1L), new k.a() { // from class: com.applovin.impl.sdk.nativeAd.AppLovinVastMediaView.2
                @Override // com.applovin.impl.adview.k.a
                public void rB() {
                    long seconds = TimeUnit.MILLISECONDS.toSeconds(AppLovinVastMediaView.this.videoDurationMillis - (AppLovinVastMediaView.this.mediaPlayer.aM() - AppLovinVastMediaView.this.mediaPlayer.aN()));
                    int videoPercentViewed = AppLovinVastMediaView.this.getVideoPercentViewed();
                    HashSet hashSet = new HashSet();
                    for (com.applovin.impl.b.k kVar : new HashSet(AppLovinVastMediaView.this.videoProgressTrackers)) {
                        if (kVar.h(seconds, videoPercentViewed)) {
                            hashSet.add(kVar);
                            AppLovinVastMediaView.this.videoProgressTrackers.remove(kVar);
                        }
                    }
                    AppLovinVastMediaView.this.maybeFireTrackers(hashSet);
                    if (videoPercentViewed >= 25 && videoPercentViewed < 50) {
                        AppLovinVastMediaView.this.vastAd.getAdEventTracker().IX();
                        return;
                    }
                    if (videoPercentViewed >= 50 && videoPercentViewed < 75) {
                        AppLovinVastMediaView.this.vastAd.getAdEventTracker().IY();
                    } else if (videoPercentViewed >= 75) {
                        AppLovinVastMediaView.this.vastAd.getAdEventTracker().IZ();
                    }
                }

                @Override // com.applovin.impl.adview.k.a
                public boolean rC() {
                    return !AppLovinVastMediaView.this.videoWasCompleted;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeHandlePause() {
        if (this.automaticPauseHandled.compareAndSet(false, true)) {
            maybeFireTrackers(a.c.VIDEO, CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
            this.vastAd.getAdEventTracker().Jb();
            pauseVideo();
            populatePlayPauseImage(true);
            this.automaticResumeHandled.set(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeHandleResume() {
        if (this.automaticResumeHandled.compareAndSet(false, true)) {
            maybeFireTrackers(a.c.VIDEO, CampaignEx.JSON_NATIVE_VIDEO_RESUME);
            this.vastAd.getAdEventTracker().Jc();
            if (this.lastVideoPositionFromPauseMillis >= 0) {
                if (x.Fn()) {
                    this.logger.f(TAG, "Resuming video at position " + this.lastVideoPositionFromPauseMillis);
                }
                this.mediaPlayer.k(true);
                this.countdownManager.start();
                this.lastVideoPositionFromPauseMillis = -1L;
            } else if (x.Fn()) {
                this.logger.f(TAG, "Invalid last video position, isVideoPlaying=" + this.mediaPlayer.v());
            }
            populatePlayPauseImage(false);
            this.automaticPauseHandled.set(false);
        }
    }

    private void pauseVideo() {
        if (x.Fn()) {
            this.logger.f(TAG, "Pausing video");
        }
        this.savedVideoPercentViewed = getVideoPercentViewed();
        this.lastVideoPositionFromPauseMillis = this.mediaPlayer.aN();
        this.mediaPlayer.k(false);
        this.countdownManager.W();
        if (x.Fn()) {
            this.logger.f(TAG, "Paused video at position " + this.lastVideoPositionFromPauseMillis + " ms");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean populateMuteImage(boolean z) {
        if (this.muteButtonImageView == null) {
            return false;
        }
        com.applovin.impl.b.a aVar = this.vastAd;
        Uri uriHv = z ? aVar.Hv() : aVar.Hw();
        if (uriHv != null) {
            StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
            this.muteButtonImageView.setImageURI(uriHv);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            return true;
        }
        if (!com.applovin.impl.sdk.utils.h.KX()) {
            return false;
        }
        AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) getContext().getDrawable(z ? R.drawable.applovin_ic_unmute_to_mute : R.drawable.applovin_ic_mute_to_unmute);
        if (animatedVectorDrawable == null) {
            return false;
        }
        this.muteButtonImageView.setImageDrawable(animatedVectorDrawable);
        animatedVectorDrawable.start();
        return true;
    }

    private void populatePlayPauseImage(boolean z) {
        if (this.playPauseButtonImageView == null) {
            return;
        }
        com.applovin.impl.b.a aVar = this.vastAd;
        Uri uriHt = z ? aVar.Ht() : aVar.Hu();
        if (uriHt == null) {
            this.playPauseButtonImageView.setImageResource(z ? R.drawable.applovin_ic_play_icon : R.drawable.applovin_ic_pause_icon);
            return;
        }
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        this.playPauseButtonImageView.setImageURI(uriHt);
        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
    }

    private void prepareMediaPlayer() {
        if (!u.a(com.applovin.impl.sdk.c.b.aMb, this.sdk)) {
            checkCachedAdResourcesImmediately(!this.isVideoStream);
        }
        com.applovin.exoplayer2.h.u uVarC = new u.a(new p(getContext(), ai.a(getContext(), "com.applovin.sdk"))).c(ab.a(this.vastAd.FI()));
        this.mediaPlayer.h(!this.isVideoMuted ? 1 : 0);
        this.mediaPlayer.a(uVarC);
        this.mediaPlayer.aD();
        this.mediaPlayer.k(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMediaImageView() {
        if (this.imageView.getDrawable() == null) {
            return;
        }
        this.imageView.setVisibility(0);
        this.videoView.setVisibility(8);
        LinearLayout linearLayout = this.videoWidgetLinearLayout;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        ImageView imageView = this.industryIconImageView;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinMediaView
    public void destroy() {
        finishVideo();
        ImageView imageView = this.industryIconImageView;
        if (imageView != null) {
            imageView.setOnClickListener(null);
        }
        ImageView imageView2 = this.playPauseButtonImageView;
        if (imageView2 != null) {
            imageView2.setOnClickListener(null);
        }
        ImageView imageView3 = this.muteButtonImageView;
        if (imageView3 != null) {
            imageView3.setOnClickListener(null);
        }
        FrameLayout frameLayout = this.replayIconContainer;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(null);
        }
        this.videoView.setOnTouchListener(null);
        this.viewActivity = null;
        this.mediaPlayer.release();
        this.vastAd.getAdEventTracker().IM();
        this.countdownManager.rA();
        this.countdownHandler.removeCallbacksAndMessages(null);
        if (this.isVideoStream) {
            AppLovinCommunicator.getInstance(getContext()).unsubscribe(this, "video_caching_failed");
        }
        super.destroy();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return TAG;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        maybeHandleOnAttachedToWindow();
        if (this.isVideoPausedByUser) {
            return;
        }
        maybeHandleResume();
    }

    @Override // com.applovin.impl.sdk.utils.u.a
    public void onCachedResourcesChecked(boolean z) {
        if (z) {
            return;
        }
        handleUnavailableCachedResources();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        maybeHandlePause();
        super.onDetachedFromWindow();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("video_caching_failed".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData = appLovinCommunicatorMessage.getMessageData();
            if (messageData.getLong("ad_id") == this.vastAd.getAdIdNumber() && this.isVideoStream) {
                int i = messageData.getInt("load_response_code");
                String string = messageData.getString("load_exception_message");
                if ((string == null && i >= 200 && i < 300) || this.videoWasCompleted || this.mediaPlayer.v()) {
                    return;
                }
                handleMediaError("Video cache error during stream. ResponseCode=" + i + ", exception=" + string);
            }
        }
    }
}
