package com.bytedance.sdk.openadsdk.core.g;

import android.view.View;
import androidx.annotation.NonNull;
import com.iab.omid.library.bytedance2.adsession.AdEvents;
import com.iab.omid.library.bytedance2.adsession.AdSession;
import com.iab.omid.library.bytedance2.adsession.media.InteractionType;
import com.iab.omid.library.bytedance2.adsession.media.MediaEvents;
import com.iab.omid.library.bytedance2.adsession.media.PlayerState;
import com.iab.omid.library.bytedance2.adsession.media.Position;
import com.iab.omid.library.bytedance2.adsession.media.VastProperties;

/* JADX INFO: compiled from: ViewabilityTrackerForVideo.java */
/* JADX INFO: loaded from: classes2.dex */
public class i extends g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final MediaEvents f1536e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1537f;

    public i(@NonNull AdSession adSession, @NonNull AdEvents adEvents, @NonNull View view, @NonNull MediaEvents mediaEvents) {
        super(adSession, adEvents, view);
        this.f1536e = mediaEvents;
    }

    @Override // com.bytedance.sdk.openadsdk.core.g.g
    public void a(float f2, boolean z) {
        if (a()) {
            this.f1536e.start(f2, z ? 0.0f : 1.0f);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.g.g
    public void a(boolean z) {
        this.f1537f = z;
        b(12);
    }

    @Override // com.bytedance.sdk.openadsdk.core.g.g
    public void a(boolean z, float f2) {
        if (z) {
            this.f1532d = VastProperties.createVastPropertiesForSkippableMedia(f2, true, Position.STANDALONE);
        } else {
            this.f1532d = VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE);
        }
        a(2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.g.g
    public void b(int i) {
        if (a()) {
            switch (i) {
                case 0:
                    this.f1536e.pause();
                    break;
                case 1:
                    this.f1536e.resume();
                    break;
                case 2:
                case 14:
                    this.f1536e.skipped();
                    break;
                case 4:
                    this.f1536e.bufferStart();
                    break;
                case 5:
                    this.f1536e.bufferFinish();
                    break;
                case 6:
                    this.f1536e.firstQuartile();
                    break;
                case 7:
                    this.f1536e.midpoint();
                    break;
                case 8:
                    this.f1536e.thirdQuartile();
                    break;
                case 9:
                    this.f1536e.complete();
                    break;
                case 10:
                    this.f1536e.playerStateChange(PlayerState.FULLSCREEN);
                    break;
                case 11:
                    this.f1536e.playerStateChange(PlayerState.NORMAL);
                    break;
                case 12:
                    this.f1536e.volumeChange(this.f1537f ? 0.0f : 1.0f);
                    break;
                case 13:
                    this.f1536e.adUserInteraction(InteractionType.CLICK);
                    break;
            }
        }
    }
}
