package com.kidoz.sdk.api.ui_views.flexi_view;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.kidoz.sdk.api.dialogs.ParentalLockDialog;
import com.kidoz.sdk.api.general.animations.GenAnimator;
import com.kidoz.sdk.api.general.assets_handling.AssetUtil;
import com.kidoz.sdk.api.general.assets_handling.StyleParser;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.picasso_related.PicassoOk;
import com.kidoz.sdk.api.ui_views.parental_lock.AssetView;
import com.squareup.imagelib.e;
import com.squareup.imagelib.y;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MovableView extends RelativeLayout {
    private static final float CLOSE_BTN_RATIO = 0.32f;
    private static final float FLEXI_DEFAULT_THUMB_RATIO = 0.25f;
    private static final float PARENTAL_LOCK_RATIO = 0.32f;
    private static final float SHADOW_LAYER_OVAL_OFFSET = 1.235f;
    private static final float SHADOW_LAYER_RECTANGLE_OFFSET = 1.2f;
    private static final String TAG = MovableView.class.getSimpleName();
    private IMovableActionListener mActionListener;
    private AssetView mAnimateView;
    private String mBorderColor;
    private float mBrderWidth;
    private AssetView mCloseIconView;
    private float mCornersRadius;
    private String mFillColor;
    public y mImageTransformation;
    private boolean mIsCircle;
    private AssetView mLockIconView;
    private ImageView mMainThumbnailView;
    private JSONObject mPropertiesObject;
    private ImageView mShadowLayerView;
    private final Object mSyncObject;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.flexi_view.MovableView$2, reason: invalid class name */
    class AnonymousClass2 implements View.OnClickListener {
        AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GenAnimator.clickItemAnimation(view, 95, new GenAnimator.ViewAnimationListener() { // from class: com.kidoz.sdk.api.ui_views.flexi_view.MovableView.2.1
                @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                public void onAnimationEnd() {
                    ParentalLockDialog.startParentalDialog(MovableView.this.getContext(), false, 0.5f, 0.5f, new ParentalLockDialog.IOnParentalDialogListener() { // from class: com.kidoz.sdk.api.ui_views.flexi_view.MovableView.2.1.1
                        @Override // com.kidoz.sdk.api.dialogs.ParentalLockDialog.IOnParentalDialogListener
                        public void onCloseDialog() {
                            MovableView.this.updateLockIcon();
                        }

                        @Override // com.kidoz.sdk.api.dialogs.ParentalLockDialog.IOnParentalDialogListener
                        public void onInputPass(boolean z) {
                            MovableView.this.updateLockIcon();
                        }
                    });
                }

                @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                public void onAnimationStart() {
                }
            });
        }
    }

    public interface IMovableActionListener {
        void onCloseClick();
    }

    public interface IMovableAssetReadyListener {
        void onAssetsReady();
    }

    public MovableView(Context context, JSONObject jSONObject, IMovableActionListener iMovableActionListener) {
        super(context);
        this.mImageTransformation = null;
        this.mSyncObject = new Object();
        this.mActionListener = iMovableActionListener;
        this.mPropertiesObject = jSONObject;
        setVisibility(4);
        initView();
    }

    private void generateAndSetProperShadowBackground() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mShadowLayerView.getLayoutParams();
        if (this.mIsCircle) {
            gradientDrawable.setShape(1);
            layoutParams.setMargins(-Utils.dpTOpx(getContext(), SHADOW_LAYER_OVAL_OFFSET), 0, 0, -Utils.dpTOpx(getContext(), SHADOW_LAYER_OVAL_OFFSET));
        } else {
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(Utils.dpTOpx(getContext(), this.mCornersRadius + (this.mBrderWidth / 2.5f)));
            layoutParams.setMargins((Utils.dpTOpx(getContext(), this.mBrderWidth) / 2) - Utils.dpTOpx(getContext(), SHADOW_LAYER_RECTANGLE_OFFSET), (Utils.dpTOpx(getContext(), this.mBrderWidth) / 2) + Utils.dpTOpx(getContext(), 2.0f), (Utils.dpTOpx(getContext(), this.mBrderWidth) / 2) + Utils.dpTOpx(getContext(), 2.0f), (Utils.dpTOpx(getContext(), this.mBrderWidth) / 2) - Utils.dpTOpx(getContext(), SHADOW_LAYER_RECTANGLE_OFFSET));
        }
        gradientDrawable.setDither(true);
        gradientDrawable.mutate();
        gradientDrawable.setColor(ViewCompat.MEASURED_STATE_MASK);
        gradientDrawable.setAlpha(126);
        if (Build.VERSION.SDK_INT >= 16) {
            this.mShadowLayerView.setBackground(gradientDrawable);
        } else {
            this.mShadowLayerView.setBackgroundDrawable(gradientDrawable);
        }
    }

    private void initAnimatedView(int i) {
        AssetView assetView = new AssetView(getContext());
        this.mAnimateView = assetView;
        assetView.setScaleType(ImageView.ScaleType.FIT_XY);
        this.mAnimateView.setId(Utils.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(13);
        addView(this.mAnimateView, layoutParams);
    }

    private void initBottomShadowLayerView(int i) {
        ImageView imageView = new ImageView(getContext());
        this.mShadowLayerView = imageView;
        imageView.setId(Utils.generateViewId());
        this.mShadowLayerView.setScaleType(ImageView.ScaleType.FIT_XY);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(7, this.mMainThumbnailView.getId());
        layoutParams.addRule(6, this.mMainThumbnailView.getId());
        layoutParams.addRule(8, this.mMainThumbnailView.getId());
        layoutParams.addRule(5, this.mMainThumbnailView.getId());
        addView(this.mShadowLayerView, 0, layoutParams);
    }

    private void initCloseView(int i, int i2) {
        AssetView assetView = new AssetView(getContext());
        this.mCloseIconView = assetView;
        assetView.setId(Utils.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(6, this.mAnimateView.getId());
        layoutParams.addRule(7, this.mAnimateView.getId());
        if (Build.VERSION.SDK_INT > 16) {
            layoutParams.addRule(19, this.mAnimateView.getId());
        }
        layoutParams.setMargins(0, i2, i2, 0);
        addView(this.mCloseIconView, layoutParams);
        this.mCloseIconView.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.flexi_view.MovableView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GenAnimator.clickItemAnimation(view, 95, new GenAnimator.ViewAnimationListener() { // from class: com.kidoz.sdk.api.ui_views.flexi_view.MovableView.1.1
                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                    public void onAnimationEnd() {
                        if (MovableView.this.mActionListener != null) {
                            MovableView.this.mActionListener.onCloseClick();
                        }
                    }

                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                    public void onAnimationStart() {
                    }
                });
            }
        });
    }

    private void initMainThumbView(int i) {
        ImageView imageView = new ImageView(getContext());
        this.mMainThumbnailView = imageView;
        imageView.setId(Utils.generateViewId());
        this.mMainThumbnailView.setScaleType(ImageView.ScaleType.FIT_XY);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(13);
        addView(this.mMainThumbnailView, layoutParams);
    }

    private void initParentalLockView(int i, int i2) {
        AssetView assetView = new AssetView(getContext());
        this.mLockIconView = assetView;
        assetView.setId(Utils.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(8, this.mAnimateView.getId());
        layoutParams.addRule(7, this.mAnimateView.getId());
        if (Build.VERSION.SDK_INT > 16) {
            layoutParams.addRule(19, this.mAnimateView.getId());
        }
        layoutParams.setMargins(0, 0, i2, i2);
        addView(this.mLockIconView, layoutParams);
        this.mLockIconView.setOnClickListener(new AnonymousClass2());
    }

    private void initView() {
        JSONObject jSONObject = this.mPropertiesObject;
        if (jSONObject != null) {
            this.mIsCircle = jSONObject.optInt(StyleParser.IS_CIRCLE, 1) == 1;
            this.mBrderWidth = (float) this.mPropertiesObject.optDouble(StyleParser.BORDER_WIDTH, 0.0d);
            this.mCornersRadius = (float) this.mPropertiesObject.optDouble(StyleParser.CORNER_ROUND_RADIUS, 0.0d);
            this.mBorderColor = this.mPropertiesObject.optString(StyleParser.BORDER_COLOR, "#ffffff");
            this.mFillColor = this.mPropertiesObject.optString(StyleParser.FILL_COLOR, "#ffffff");
            Point screenSize = Utils.getScreenSize(getContext());
            int iMin = (int) (Math.min(screenSize.x, screenSize.y) * ((float) this.mPropertiesObject.optDouble(StyleParser.CONTENT_THUMB_RATIO, 0.25d)));
            initMainThumbView(iMin);
            if (this.mIsCircle) {
                initBottomShadowLayerView(iMin);
            } else {
                initBottomShadowLayerView(iMin);
            }
            int iOptDouble = (int) (((double) iMin) * this.mPropertiesObject.optDouble(StyleParser.ANIM_OVERLAY_RATIO, 1.0d));
            initAnimatedView(iOptDouble);
            int i = (iOptDouble - iMin) / 2;
            int i2 = (int) (iMin * 0.32f);
            int i3 = i2 / 2;
            int i4 = i > i3 ? i - i3 : 0;
            initParentalLockView(i2, i4);
            if (i > i3) {
                i4 = i - i3;
            }
            initCloseView(i2, i4);
            generateAndSetProperShadowBackground();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLockIcon() {
        try {
            if (ParentalLockDialog.isParentalLockActive(getContext())) {
                this.mLockIconView.loadAsset(AssetUtil.getAssetFile(getContext(), this.mPropertiesObject.optString(StyleParser.LOCK_CLOSE_BUTTON)), new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.flexi_view.MovableView.7
                    @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
                    public void onAssetLoaded(boolean z) {
                    }
                });
            } else {
                this.mLockIconView.loadAsset(AssetUtil.getAssetFile(getContext(), this.mPropertiesObject.optString(StyleParser.LOCK_OPEN_BUTTON)), new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.flexi_view.MovableView.8
                    @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
                    public void onAssetLoaded(boolean z) {
                    }
                });
            }
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to load parental lock image: " + e2.getMessage());
        }
    }

    public void loadMainAsset(String str, final IMovableAssetReadyListener iMovableAssetReadyListener) {
        if (this.mImageTransformation == null) {
            if (this.mIsCircle) {
                this.mImageTransformation = new CircleTransformation(Utils.dpTOpx(getContext(), this.mBrderWidth), this.mBorderColor, this.mFillColor, this.mMainThumbnailView.getWidth());
            } else {
                this.mImageTransformation = new RoundedCornerTransformation(Utils.dpTOpx(getContext(), this.mBrderWidth), this.mBorderColor, this.mFillColor, Utils.dpTOpx(getContext(), this.mCornersRadius), this.mMainThumbnailView.getWidth());
            }
        }
        PicassoOk.getPicasso(getContext()).k(str).l(this.mImageTransformation).h(this.mMainThumbnailView, new e() { // from class: com.kidoz.sdk.api.ui_views.flexi_view.MovableView.6
            @Override // com.squareup.imagelib.e
            public void onError() {
            }

            @Override // com.squareup.imagelib.e
            public void onSuccess() {
                iMovableAssetReadyListener.onAssetsReady();
            }
        });
    }

    public void loadSecondaryAssets(final IMovableAssetReadyListener iMovableAssetReadyListener) {
        this.mLockIconView.loadAsset(AssetUtil.getAssetFile(getContext(), ParentalLockDialog.isParentalLockActive(getContext()) ? this.mPropertiesObject.optString(StyleParser.LOCK_CLOSE_BUTTON) : this.mPropertiesObject.optString(StyleParser.LOCK_OPEN_BUTTON)), new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.flexi_view.MovableView.3
            @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
            public void onAssetLoaded(boolean z) {
                synchronized (MovableView.this.mSyncObject) {
                    if (MovableView.this.mAnimateView.getIsAssetLoaded() && MovableView.this.mLockIconView.getIsAssetLoaded() && MovableView.this.mCloseIconView.getIsAssetLoaded()) {
                        iMovableAssetReadyListener.onAssetsReady();
                    }
                }
            }
        });
        this.mCloseIconView.loadAsset(AssetUtil.getAssetFile(getContext(), this.mPropertiesObject.optString(StyleParser.CLOSE_BTN)), new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.flexi_view.MovableView.4
            @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
            public void onAssetLoaded(boolean z) {
                synchronized (MovableView.this.mSyncObject) {
                    if (MovableView.this.mAnimateView.getIsAssetLoaded() && MovableView.this.mLockIconView.getIsAssetLoaded() && MovableView.this.mCloseIconView.getIsAssetLoaded()) {
                        iMovableAssetReadyListener.onAssetsReady();
                    }
                }
            }
        });
        this.mAnimateView.loadAsset(AssetUtil.getAssetFile(getContext(), this.mPropertiesObject.optString(StyleParser.ANIMATION_OVERLAY)), new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.flexi_view.MovableView.5
            @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
            public void onAssetLoaded(boolean z) {
                synchronized (MovableView.this.mSyncObject) {
                    if (MovableView.this.mAnimateView.getIsAssetLoaded() && MovableView.this.mLockIconView.getIsAssetLoaded() && MovableView.this.mCloseIconView.getIsAssetLoaded()) {
                        iMovableAssetReadyListener.onAssetsReady();
                    }
                }
            }
        });
    }

    public void playOrStopTheGifAnimationIfExists(boolean z) {
        AssetView assetView = this.mAnimateView;
        if (assetView != null) {
            if (z) {
                assetView.resumeGifAnim();
            } else {
                assetView.pauseGifAnim();
            }
        }
    }

    public void showCloseBtn(boolean z) {
        AssetView assetView = this.mCloseIconView;
        if (assetView != null) {
            if (z) {
                assetView.setVisibility(0);
            } else {
                assetView.setVisibility(8);
            }
        }
    }
}
