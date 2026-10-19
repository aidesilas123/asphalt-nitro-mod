package com.facebook.ads.internal.api;

import android.support.v4.media.MediaDescriptionCompat;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Keep;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.VideoStartReason;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface MediaViewVideoRendererApi extends AdComponentViewApiProvider {
    void destroy();

    void disengageSeek(VideoStartReason videoStartReason);

    void engageSeek();

    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED)
    int getCurrentTimeMs();

    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED)
    int getDuration();

    View getVideoView();

    @FloatRange(from = 0.0d, to = 1.0d)
    float getVolume();

    void initialize(AdViewConstructorParams adViewConstructorParams, MediaViewVideoRenderer mediaViewVideoRenderer);

    void pause(boolean z);

    void play(VideoStartReason videoStartReason);

    void seekTo(@IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED) int i);

    void setVolume(@FloatRange(from = 0.0d, to = 1.0d) float f2);

    boolean shouldAutoplay();
}
