package com.applovin.mediation.nativeAds;

import android.view.View;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;

/* JADX INFO: loaded from: classes.dex */
public class MaxNativeAdViewBinder {

    @IdRes
    protected final int advertiserTextViewId;

    @IdRes
    protected final int bodyTextViewId;

    @IdRes
    protected final int callToActionButtonId;

    @IdRes
    protected final int iconContentViewId;

    @IdRes
    protected final int iconImageViewId;

    @LayoutRes
    protected final int layoutResourceId;
    protected final View mainView;

    @IdRes
    protected final int mediaContentFrameLayoutId;

    @IdRes
    protected final int mediaContentViewGroupId;

    @IdRes
    protected final int optionsContentFrameLayoutId;

    @IdRes
    protected final int optionsContentViewGroupId;

    @IdRes
    protected final int starRatingContentViewGroupId;
    protected final String templateType;

    @IdRes
    protected final int titleTextViewId;

    public static class Builder {

        @IdRes
        private int advertiserTextViewId;

        @IdRes
        private int bodyTextViewId;

        @IdRes
        private int callToActionButtonId;

        @IdRes
        private int iconContentViewId;

        @IdRes
        private int iconImageViewId;

        @LayoutRes
        private final int layoutResourceId;
        private final View mainView;

        @IdRes
        private int mediaContentFrameLayoutId;

        @IdRes
        private int mediaContentViewGroupId;

        @IdRes
        private int optionsContentFrameLayoutId;

        @IdRes
        private int optionsContentViewGroupId;

        @IdRes
        private int starRatingContentViewGroupId;
        private String templateType;

        @IdRes
        private int titleTextViewId;

        public Builder(@LayoutRes int i) {
            this(i, null);
        }

        private Builder(@LayoutRes int i, View view) {
            this.titleTextViewId = -1;
            this.advertiserTextViewId = -1;
            this.bodyTextViewId = -1;
            this.iconImageViewId = -1;
            this.iconContentViewId = -1;
            this.optionsContentViewGroupId = -1;
            this.optionsContentFrameLayoutId = -1;
            this.starRatingContentViewGroupId = -1;
            this.mediaContentViewGroupId = -1;
            this.mediaContentFrameLayoutId = -1;
            this.callToActionButtonId = -1;
            this.layoutResourceId = i;
            this.mainView = view;
        }

        public Builder(View view) {
            this(-1, view);
        }

        public MaxNativeAdViewBinder build() {
            return new MaxNativeAdViewBinder(this.mainView, this.layoutResourceId, this.titleTextViewId, this.advertiserTextViewId, this.bodyTextViewId, this.iconImageViewId, this.iconContentViewId, this.starRatingContentViewGroupId, this.optionsContentViewGroupId, this.optionsContentFrameLayoutId, this.mediaContentViewGroupId, this.mediaContentFrameLayoutId, this.callToActionButtonId, this.templateType);
        }

        public Builder setAdvertiserTextViewId(@IdRes int i) {
            this.advertiserTextViewId = i;
            return this;
        }

        public Builder setBodyTextViewId(@IdRes int i) {
            this.bodyTextViewId = i;
            return this;
        }

        public Builder setCallToActionButtonId(@IdRes int i) {
            this.callToActionButtonId = i;
            return this;
        }

        @Deprecated
        protected Builder setIconContentViewId(@IdRes int i) {
            this.iconContentViewId = i;
            return this;
        }

        public Builder setIconImageViewId(@IdRes int i) {
            this.iconImageViewId = i;
            return this;
        }

        @Deprecated
        protected Builder setMediaContentFrameLayoutId(@IdRes int i) {
            this.mediaContentFrameLayoutId = i;
            return this;
        }

        public Builder setMediaContentViewGroupId(@IdRes int i) {
            this.mediaContentViewGroupId = i;
            return this;
        }

        @Deprecated
        protected Builder setOptionsContentFrameLayoutId(@IdRes int i) {
            this.optionsContentFrameLayoutId = i;
            return this;
        }

        public Builder setOptionsContentViewGroupId(@IdRes int i) {
            this.optionsContentViewGroupId = i;
            return this;
        }

        public Builder setStarRatingContentViewGroupId(@IdRes int i) {
            this.starRatingContentViewGroupId = i;
            return this;
        }

        protected Builder setTemplateType(String str) {
            this.templateType = str;
            return this;
        }

        public Builder setTitleTextViewId(@IdRes int i) {
            this.titleTextViewId = i;
            return this;
        }
    }

    private MaxNativeAdViewBinder(View view, @LayoutRes int i, @IdRes int i2, @IdRes int i3, @IdRes int i4, @IdRes int i5, @IdRes int i6, @IdRes int i7, @IdRes int i8, @IdRes int i9, @IdRes int i10, @IdRes int i11, @IdRes int i12, String str) {
        this.mainView = view;
        this.layoutResourceId = i;
        this.titleTextViewId = i2;
        this.advertiserTextViewId = i3;
        this.bodyTextViewId = i4;
        this.iconImageViewId = i5;
        this.iconContentViewId = i6;
        this.starRatingContentViewGroupId = i7;
        this.optionsContentViewGroupId = i8;
        this.optionsContentFrameLayoutId = i9;
        this.mediaContentViewGroupId = i10;
        this.mediaContentFrameLayoutId = i11;
        this.callToActionButtonId = i12;
        this.templateType = str;
    }
}
