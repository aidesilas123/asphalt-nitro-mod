package com.applovin.impl.adview.activity.b;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.Nullable;
import com.applovin.impl.adview.k;
import com.applovin.impl.b.a;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class c extends e {
    private final com.applovin.impl.b.a ajq;
    private final Set<com.applovin.impl.b.k> videoProgressTrackers;

    public c(com.applovin.impl.sdk.ad.e eVar, Activity activity, @Nullable Map<String, Object> map, com.applovin.impl.sdk.n nVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(eVar, activity, map, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        HashSet hashSet = new HashSet();
        this.videoProgressTrackers = hashSet;
        com.applovin.impl.b.a aVar = (com.applovin.impl.b.a) eVar;
        this.ajq = aVar;
        a.c cVar = a.c.VIDEO;
        hashSet.addAll(aVar.a(cVar, com.applovin.impl.b.l.aXV));
        maybeFireTrackers(a.c.IMPRESSION);
        maybeFireTrackers(cVar, "creativeView");
        aVar.getAdEventTracker().IL();
    }

    private void maybeFireRemainingCompletionTrackers() {
        if (!sI() || this.videoProgressTrackers.isEmpty()) {
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.h("AppLovinFullscreenActivity", "Firing " + this.videoProgressTrackers.size() + " un-fired video progress trackers when video was completed.");
        }
        maybeFireTrackers(this.videoProgressTrackers);
    }

    private void maybeFireTrackers(a.c cVar) {
        maybeFireTrackers(cVar, com.applovin.impl.b.f.UNSPECIFIED);
    }

    private void maybeFireTrackers(a.c cVar, com.applovin.impl.b.f fVar) {
        maybeFireTrackers(cVar, "", fVar);
    }

    private void maybeFireTrackers(a.c cVar, String str) {
        maybeFireTrackers(cVar, str, com.applovin.impl.b.f.UNSPECIFIED);
    }

    private void maybeFireTrackers(a.c cVar, String str, com.applovin.impl.b.f fVar) {
        maybeFireTrackers(this.ajq.a(cVar, str), fVar);
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
        com.applovin.impl.b.o oVarLV = this.ajq.LV();
        Uri uriMI = oVarLV != null ? oVarLV.MI() : null;
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinFullscreenActivity", "Firing " + set.size() + " tracker(s): " + set);
        }
        com.applovin.impl.b.m.a(set, seconds, uriMI, fVar, this.sdk);
    }

    @Override // com.applovin.impl.adview.activity.b.e
    public void a(MotionEvent motionEvent, @Nullable Bundle bundle) {
        maybeFireTrackers(a.c.VIDEO_CLICK);
        this.ajq.getAdEventTracker().Jg();
        super.a(motionEvent, bundle);
    }

    @Override // com.applovin.impl.adview.activity.b.e, com.applovin.impl.adview.activity.b.a
    public void a(@Nullable ViewGroup viewGroup) {
        super.a(viewGroup);
        this.countdownManager.a("PROGRESS_TRACKING", TimeUnit.SECONDS.toMillis(1L), new k.a() { // from class: com.applovin.impl.adview.activity.b.c.1
            @Override // com.applovin.impl.adview.k.a
            public void rB() {
                long seconds = TimeUnit.MILLISECONDS.toSeconds(c.this.videoDurationMillis - (c.this.mediaPlayer.aM() - c.this.mediaPlayer.aN()));
                int videoPercentViewed = c.this.getVideoPercentViewed();
                HashSet hashSet = new HashSet();
                for (com.applovin.impl.b.k kVar : new HashSet(c.this.videoProgressTrackers)) {
                    if (kVar.h(seconds, videoPercentViewed)) {
                        hashSet.add(kVar);
                        c.this.videoProgressTrackers.remove(kVar);
                    }
                }
                c.this.maybeFireTrackers(hashSet);
                if (videoPercentViewed >= 25 && videoPercentViewed < 50) {
                    c.this.ajq.getAdEventTracker().IX();
                    return;
                }
                if (videoPercentViewed >= 50 && videoPercentViewed < 75) {
                    c.this.ajq.getAdEventTracker().IY();
                } else if (videoPercentViewed >= 75) {
                    c.this.ajq.getAdEventTracker().IZ();
                }
            }

            @Override // com.applovin.impl.adview.k.a
            public boolean rC() {
                return !c.this.ajC;
            }
        });
        ArrayList arrayList = new ArrayList();
        com.applovin.impl.adview.a aVar = this.aju;
        if (aVar != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(aVar, FriendlyObstructionPurpose.OTHER, "video stream buffering indicator"));
        }
        com.applovin.impl.adview.n nVar = this.ajv;
        if (nVar != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(nVar, FriendlyObstructionPurpose.CLOSE_AD, "skip button"));
        }
        com.applovin.impl.adview.h hVar = this.ajw;
        if (hVar != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(hVar, FriendlyObstructionPurpose.OTHER, "countdown clock"));
        }
        ProgressBar progressBar = this.agb;
        if (progressBar != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(progressBar, FriendlyObstructionPurpose.OTHER, "progress bar"));
        }
        ProgressBar progressBar2 = this.ajy;
        if (progressBar2 != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(progressBar2, FriendlyObstructionPurpose.OTHER, "postitial progress bar"));
        }
        ImageView imageView = this.muteButtonImageView;
        if (imageView != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(imageView, FriendlyObstructionPurpose.VIDEO_CONTROLS, "mute button"));
        }
        com.applovin.impl.adview.w wVar = this.ajx;
        if (wVar != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(wVar, FriendlyObstructionPurpose.VIDEO_CONTROLS, "generic webview overlay containing HTML controls"));
        }
        com.applovin.impl.adview.v vVar = this.agn;
        if (vVar != null && vVar.sh()) {
            com.applovin.impl.adview.v vVar2 = this.agn;
            arrayList.add(new com.applovin.impl.sdk.a.d(vVar2, FriendlyObstructionPurpose.NOT_VISIBLE, vVar2.getIdentifier()));
        }
        this.ajq.getAdEventTracker().a(this.videoView, arrayList);
    }

    @Override // com.applovin.impl.adview.activity.b.e
    protected void bG(long j) {
        super.bG(j);
        this.ajq.getAdEventTracker().b(TimeUnit.MILLISECONDS.toSeconds(j), com.applovin.impl.sdk.utils.u.P(this.sdk));
    }

    @Override // com.applovin.impl.adview.activity.b.e, com.applovin.impl.adview.activity.b.a
    public void dismiss() {
        if (this.ajq != null) {
            maybeFireTrackers(a.c.VIDEO, "close");
            maybeFireTrackers(a.c.COMPANION, "close");
        }
        super.dismiss();
    }

    @Override // com.applovin.impl.adview.activity.b.e
    public void handleMediaError(String str) {
        maybeFireTrackers(a.c.ERROR, com.applovin.impl.b.f.MEDIA_FILE_ERROR);
        this.ajq.getAdEventTracker().dj(str);
        super.handleMediaError(str);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void onPause() {
        super.onPause();
        maybeFireTrackers(this.ajC ? a.c.COMPANION : a.c.VIDEO, CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
        this.ajq.getAdEventTracker().Jb();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void onResume() {
        super.onResume();
        maybeFireTrackers(this.ajC ? a.c.COMPANION : a.c.VIDEO, CampaignEx.JSON_NATIVE_VIDEO_RESUME);
        this.ajq.getAdEventTracker().Jc();
    }

    @Override // com.applovin.impl.adview.activity.b.e, com.applovin.impl.adview.activity.b.a
    public void pauseVideo() {
        this.countdownManager.W();
        super.pauseVideo();
    }

    @Override // com.applovin.impl.adview.activity.b.e, com.applovin.impl.adview.activity.b.a
    public void sA() {
        a((ViewGroup) null);
    }

    @Override // com.applovin.impl.adview.activity.b.e, com.applovin.impl.adview.activity.b.a
    protected void sL() {
        long jGU;
        int iGe;
        long millis = 0;
        if (this.ajq.GT() >= 0 || this.ajq.GU() >= 0) {
            if (this.ajq.GT() >= 0) {
                jGU = this.ajq.GT();
            } else {
                com.applovin.impl.b.a aVar = this.ajq;
                com.applovin.impl.b.n nVarLU = aVar.LU();
                if (nVarLU == null || nVarLU.MH() <= 0) {
                    long j = this.videoDurationMillis;
                    if (j > 0) {
                        millis = 0 + j;
                    }
                } else {
                    millis = 0 + TimeUnit.SECONDS.toMillis(nVarLU.MH());
                }
                if (aVar.GV() && (iGe = (int) aVar.Ge()) > 0) {
                    millis += TimeUnit.SECONDS.toMillis(iGe);
                }
                jGU = (long) (millis * (((double) this.ajq.GU()) / 100.0d));
            }
            bF(jGU);
        }
    }

    @Override // com.applovin.impl.adview.activity.b.e
    public void sY() {
        maybeFireTrackers(a.c.VIDEO, "skip");
        this.ajq.getAdEventTracker().Jf();
        super.sY();
    }

    @Override // com.applovin.impl.adview.activity.b.e
    protected void sZ() {
        super.sZ();
        com.applovin.impl.b.a aVar = this.ajq;
        if (aVar != null) {
            aVar.getAdEventTracker().Jd();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.e
    protected void ta() {
        super.ta();
        com.applovin.impl.b.a aVar = this.ajq;
        if (aVar != null) {
            aVar.getAdEventTracker().Je();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.e
    public void tb() {
        super.tb();
        maybeFireTrackers(a.c.VIDEO, this.isVideoMuted ? CampaignEx.JSON_NATIVE_VIDEO_MUTE : CampaignEx.JSON_NATIVE_VIDEO_UNMUTE);
        this.ajq.getAdEventTracker().bc(this.isVideoMuted);
    }

    @Override // com.applovin.impl.adview.activity.b.e
    public void tc() {
        maybeFireRemainingCompletionTrackers();
        if (!com.applovin.impl.b.m.c(this.ajq)) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("AppLovinFullscreenActivity", "VAST ad does not have valid companion ad - dismissing...");
            }
            dismiss();
        } else {
            if (this.ajC) {
                return;
            }
            maybeFireTrackers(a.c.COMPANION, "creativeView");
            this.ajq.getAdEventTracker().Ja();
            super.tc();
        }
    }
}
