package com.google.android.gms.ads.formats;

import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public interface NativeCustomTemplateAd {

    @NonNull
    public static final String ASSET_NAME_VIDEO = "_videoMediaView";

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
    public interface DisplayOpenMeasurement {
        void setView(@NonNull View view);

        boolean start();
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
    public interface OnCustomClickListener {
        void onCustomClick(@NonNull NativeCustomTemplateAd nativeCustomTemplateAd, @NonNull String str);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
    public interface OnCustomTemplateAdLoadedListener {
        void onCustomTemplateAdLoaded(@NonNull NativeCustomTemplateAd nativeCustomTemplateAd);
    }

    void destroy();

    @NonNull
    List<String> getAvailableAssetNames();

    @NonNull
    String getCustomTemplateId();

    @NonNull
    DisplayOpenMeasurement getDisplayOpenMeasurement();

    @NonNull
    NativeAd.Image getImage(@NonNull String str);

    @NonNull
    CharSequence getText(@NonNull String str);

    @NonNull
    VideoController getVideoController();

    @NonNull
    MediaView getVideoMediaView();

    void performClick(@NonNull String str);

    void recordImpression();
}
