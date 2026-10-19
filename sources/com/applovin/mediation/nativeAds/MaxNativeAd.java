package com.applovin.mediation.nativeAds;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.applovin.impl.mediation.nativeAds.MaxNativeAdImpl;
import com.applovin.mediation.MaxAdFormat;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MaxNativeAd extends MaxNativeAdImpl {
    private static final float MINIMUM_STARS_TO_RENDER = 3.0f;
    private final String advertiser;
    private final String body;
    private final String callToAction;
    private final MaxAdFormat format;
    private final MaxNativeAdImage icon;
    private final View iconView;
    private boolean isExpired;
    private final MaxNativeAdImage mainImage;
    private final float mediaContentAspectRatio;
    private final View mediaView;
    private MaxNativeAdView nativeAdView;
    private final View optionsView;
    private final Double starRating;
    private final String title;

    public static class Builder {
        private MaxAdFormat adFormat;
        private String advertiser;
        private String body;
        private String callToAction;
        private MaxNativeAdImage icon;
        private View iconView;
        private MaxNativeAdImage mainImage;
        private float mediaContentAspectRatio;
        private View mediaView;
        private View optionsView;
        private Double starRating;
        private String title;

        public MaxNativeAd build() {
            return new MaxNativeAd(this);
        }

        public Builder setAdFormat(MaxAdFormat maxAdFormat) {
            this.adFormat = maxAdFormat;
            return this;
        }

        public Builder setAdvertiser(String str) {
            this.advertiser = str;
            return this;
        }

        public Builder setBody(String str) {
            this.body = str;
            return this;
        }

        public Builder setCallToAction(String str) {
            this.callToAction = str;
            return this;
        }

        public Builder setIcon(MaxNativeAdImage maxNativeAdImage) {
            this.icon = maxNativeAdImage;
            return this;
        }

        public Builder setIconView(View view) {
            this.iconView = view;
            return this;
        }

        public Builder setMainImage(MaxNativeAdImage maxNativeAdImage) {
            this.mainImage = maxNativeAdImage;
            return this;
        }

        public Builder setMediaContentAspectRatio(float f2) {
            this.mediaContentAspectRatio = f2;
            return this;
        }

        public Builder setMediaView(View view) {
            this.mediaView = view;
            return this;
        }

        public Builder setOptionsView(View view) {
            this.optionsView = view;
            return this;
        }

        public Builder setStarRating(Double d2) {
            this.starRating = d2;
            return this;
        }

        public Builder setTitle(String str) {
            this.title = str;
            return this;
        }
    }

    public static class MaxNativeAdImage {
        private Drawable aYD;
        private Uri ef;

        public MaxNativeAdImage(Drawable drawable) {
            this.aYD = drawable;
        }

        public MaxNativeAdImage(Uri uri) {
            this.ef = uri;
        }

        @Nullable
        public Drawable getDrawable() {
            return this.aYD;
        }

        @Nullable
        public Uri getUri() {
            return this.ef;
        }
    }

    public MaxNativeAd(Builder builder) {
        this.format = builder.adFormat;
        this.title = builder.title;
        this.advertiser = builder.advertiser;
        this.body = builder.body;
        this.callToAction = builder.callToAction;
        this.icon = builder.icon;
        this.iconView = builder.iconView;
        this.optionsView = builder.optionsView;
        this.mediaView = builder.mediaView;
        this.mainImage = builder.mainImage;
        this.mediaContentAspectRatio = builder.mediaContentAspectRatio;
        Double d2 = builder.starRating;
        this.starRating = (d2 == null || d2.doubleValue() < 3.0d) ? null : d2;
    }

    @Nullable
    public final String getAdvertiser() {
        return this.advertiser;
    }

    @Nullable
    public final String getBody() {
        return this.body;
    }

    @Nullable
    public final String getCallToAction() {
        return this.callToAction;
    }

    @NonNull
    public final MaxAdFormat getFormat() {
        return this.format;
    }

    @Nullable
    public final MaxNativeAdImage getIcon() {
        return this.icon;
    }

    @Nullable
    public final View getIconView() {
        return this.iconView;
    }

    @Nullable
    public final MaxNativeAdImage getMainImage() {
        return this.mainImage;
    }

    public final float getMediaContentAspectRatio() {
        return this.mediaContentAspectRatio;
    }

    @Nullable
    public final View getMediaView() {
        return this.mediaView;
    }

    @Nullable
    public final View getOptionsView() {
        return this.optionsView;
    }

    @Nullable
    public final Double getStarRating() {
        return this.starRating;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public boolean isContainerClickable() {
        return false;
    }

    public final boolean isExpired() {
        return this.isExpired;
    }

    @UiThread
    public void performClick() {
        Button callToActionButton;
        MaxNativeAdView maxNativeAdView = this.nativeAdView;
        if (maxNativeAdView == null || (callToActionButton = maxNativeAdView.getCallToActionButton()) == null) {
            return;
        }
        callToActionButton.performClick();
    }

    public boolean prepareForInteraction(List<View> list, ViewGroup viewGroup) {
        return false;
    }

    @Deprecated
    public void prepareViewForInteraction(MaxNativeAdView maxNativeAdView) {
    }

    public void setExpired() {
        this.isExpired = true;
    }

    public void setNativeAdView(MaxNativeAdView maxNativeAdView) {
        this.nativeAdView = maxNativeAdView;
    }

    public boolean shouldPrepareViewForInteractionOnMainThread() {
        return true;
    }
}
