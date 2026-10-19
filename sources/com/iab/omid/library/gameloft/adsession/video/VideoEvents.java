package com.iab.omid.library.gameloft.adsession.video;

import com.facebook.login.LoginLogger;
import com.iab.omid.library.gameloft.adsession.AdSession;
import com.iab.omid.library.gameloft.adsession.a;
import com.iab.omid.library.gameloft.d.b;
import com.iab.omid.library.gameloft.d.e;
import com.json.o2;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class VideoEvents {
    private final a adSession;

    private VideoEvents(a aVar) {
        this.adSession = aVar;
    }

    private void confirmValidDuration(float f2) {
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException("Invalid Video duration");
        }
    }

    private void confirmValidVolume(float f2) {
        if (f2 < 0.0f || f2 > 1.0f) {
            throw new IllegalArgumentException("Invalid Video volume");
        }
    }

    public static VideoEvents createVideoEvents(AdSession adSession) {
        a aVar = (a) adSession;
        e.a(adSession, "AdSession is null");
        e.g(aVar);
        e.a(aVar);
        e.b(aVar);
        e.e(aVar);
        VideoEvents videoEvents = new VideoEvents(aVar);
        aVar.getAdSessionStatePublisher().a(videoEvents);
        return videoEvents;
    }

    public void adUserInteraction(InteractionType interactionType) {
        e.a(interactionType, "InteractionType is null");
        e.c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        b.a(jSONObject, "interactionType", interactionType);
        this.adSession.getAdSessionStatePublisher().a("adUserInteraction", jSONObject);
    }

    public void bufferFinish() {
        e.c(this.adSession);
        this.adSession.getAdSessionStatePublisher().a("bufferFinish");
    }

    public void bufferStart() {
        e.c(this.adSession);
        this.adSession.getAdSessionStatePublisher().a("bufferStart");
    }

    public void complete() {
        e.c(this.adSession);
        this.adSession.getAdSessionStatePublisher().a(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE);
    }

    public void firstQuartile() {
        e.c(this.adSession);
        this.adSession.getAdSessionStatePublisher().a("firstQuartile");
    }

    public void loaded(VastProperties vastProperties) {
        e.a(vastProperties, "VastProperties is null");
        e.b(this.adSession);
        this.adSession.getAdSessionStatePublisher().a(o2.h.r, vastProperties.toJSON());
    }

    public void midpoint() {
        e.c(this.adSession);
        this.adSession.getAdSessionStatePublisher().a(CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT);
    }

    public void pause() {
        e.c(this.adSession);
        this.adSession.getAdSessionStatePublisher().a(CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
    }

    public void playerStateChange(PlayerState playerState) {
        e.a(playerState, "PlayerState is null");
        e.c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        b.a(jSONObject, "state", playerState);
        this.adSession.getAdSessionStatePublisher().a("playerStateChange", jSONObject);
    }

    public void resume() {
        e.c(this.adSession);
        this.adSession.getAdSessionStatePublisher().a(CampaignEx.JSON_NATIVE_VIDEO_RESUME);
    }

    public void skipped() {
        e.c(this.adSession);
        this.adSession.getAdSessionStatePublisher().a(LoginLogger.EVENT_PARAM_METHOD_RESULT_SKIPPED);
    }

    public void start(float f2, float f3) {
        confirmValidDuration(f2);
        confirmValidVolume(f3);
        e.c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        b.a(jSONObject, "duration", Float.valueOf(f2));
        b.a(jSONObject, "videoPlayerVolume", Float.valueOf(f3));
        b.a(jSONObject, "deviceVolume", Float.valueOf(com.iab.omid.library.gameloft.b.e.a().d()));
        this.adSession.getAdSessionStatePublisher().a("start", jSONObject);
    }

    public void thirdQuartile() {
        e.c(this.adSession);
        this.adSession.getAdSessionStatePublisher().a("thirdQuartile");
    }

    public void volumeChange(float f2) {
        confirmValidVolume(f2);
        e.c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        b.a(jSONObject, "videoPlayerVolume", Float.valueOf(f2));
        b.a(jSONObject, "deviceVolume", Float.valueOf(com.iab.omid.library.gameloft.b.e.a().d()));
        this.adSession.getAdSessionStatePublisher().a("volumeChange", jSONObject);
    }
}
