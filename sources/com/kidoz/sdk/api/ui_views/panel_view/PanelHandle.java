package com.kidoz.sdk.api.ui_views.panel_view;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Point;
import android.os.Looper;
import android.view.View;
import android.widget.RelativeLayout;
import com.kidoz.sdk.api.general.animations.GenAnimator;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.ui_views.custom_drawables.DefaultPanelDrawable;
import com.kidoz.sdk.api.ui_views.parental_lock.AssetView;

/* JADX INFO: loaded from: classes4.dex */
public class PanelHandle extends RelativeLayout {
    private static final float DEFAULT_HANDLE_SCALE_SIZE = 0.15f;
    private IOnPanelHandleClickListener mClickListener;
    private AssetView mCloseAssetBgView;
    private AssetView mCloseAssetFrgView;
    private DefaultPanelDrawable mCloseDefaultDrawable;
    private int mColor;
    private int mHandleSize;
    private Utils.StaticHandler mHandler;
    private RelativeLayout.LayoutParams mInnerCloseBtnLayParams;
    private RelativeLayout.LayoutParams mInnerOpenBtnLayParams;
    private boolean mIsLegacyAssets;
    private DefaultPanelDrawable mLegacyCloseDefaultDrawable;
    private DefaultPanelDrawable mLegacyOpenDefaultDrawable;
    private AssetView mOpenAssetBgView;
    private AssetView mOpenAssetFrgView;
    private DefaultPanelDrawable mOpenDefaultDrawable;
    private PANEL_TYPE mPanelType;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$2, reason: invalid class name */
    class AnonymousClass2 implements AssetView.IOnAssetLoadedListener {
        final /* synthetic */ LocalAssetHelper val$helper;
        final /* synthetic */ IonPanelHandlePreparedListener val$listener;

        AnonymousClass2(LocalAssetHelper localAssetHelper, IonPanelHandlePreparedListener ionPanelHandlePreparedListener) {
            this.val$helper = localAssetHelper;
            this.val$listener = ionPanelHandlePreparedListener;
        }

        @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
        public void onAssetLoaded(boolean z) {
            if (z) {
                PanelHandle.this.mCloseAssetFrgView.loadAsset(this.val$helper.legacyBtnCloseAsset, PanelHandle.this.mLegacyCloseDefaultDrawable, new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.2.2
                    @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
                    public void onAssetLoaded(boolean z2) {
                        IonPanelHandlePreparedListener ionPanelHandlePreparedListener = AnonymousClass2.this.val$listener;
                        if (ionPanelHandlePreparedListener != null) {
                            ionPanelHandlePreparedListener.onPanelPrepared();
                        }
                    }
                });
            } else {
                PanelHandle.this.mOpenAssetFrgView.loadAsset(this.val$helper.legacyBtnDefaultOpenSponsoredAsset, null, new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.2.1
                    @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
                    public void onAssetLoaded(boolean z2) {
                        if (z2) {
                            PanelHandle.this.mLegacyOpenDefaultDrawable.setDrawSign(false);
                        } else {
                            PanelHandle.this.mOpenAssetFrgView.setVisibility(4);
                        }
                        AssetView assetView = PanelHandle.this.mCloseAssetFrgView;
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        assetView.loadAsset(anonymousClass2.val$helper.legacyBtnCloseAsset, PanelHandle.this.mLegacyCloseDefaultDrawable, new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.2.1.1
                            @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
                            public void onAssetLoaded(boolean z3) {
                                IonPanelHandlePreparedListener ionPanelHandlePreparedListener = AnonymousClass2.this.val$listener;
                                if (ionPanelHandlePreparedListener != null) {
                                    ionPanelHandlePreparedListener.onPanelPrepared();
                                }
                            }
                        });
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$3, reason: invalid class name */
    class AnonymousClass3 implements AssetView.IOnAssetLoadedListener {
        final /* synthetic */ LocalAssetHelper val$helper;
        final /* synthetic */ IonPanelHandlePreparedListener val$listener;

        /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$3$1, reason: invalid class name */
        class AnonymousClass1 implements AssetView.IOnAssetLoadedListener {
            AnonymousClass1() {
            }

            @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
            public void onAssetLoaded(boolean z) {
                PanelHandle.this.mCloseAssetFrgView.loadAsset(AnonymousClass3.this.val$helper.closeBtnAssetFrg, null, new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.3.1.1
                    @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
                    public void onAssetLoaded(boolean z2) {
                        if (z2) {
                            PanelHandle.this.mCloseDefaultDrawable.setDrawSign(false);
                        } else {
                            PanelHandle.this.mCloseDefaultDrawable.setDrawSign(true);
                        }
                        AssetView assetView = PanelHandle.this.mCloseAssetBgView;
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        assetView.loadAsset(anonymousClass3.val$helper.closeBtnAssetBg, PanelHandle.this.mCloseDefaultDrawable, new AssetView.IOnAssetLoadedListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.3.1.1.1
                            @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
                            public void onAssetLoaded(boolean z3) {
                                IonPanelHandlePreparedListener ionPanelHandlePreparedListener = AnonymousClass3.this.val$listener;
                                if (ionPanelHandlePreparedListener != null) {
                                    ionPanelHandlePreparedListener.onPanelPrepared();
                                }
                            }
                        });
                    }
                });
            }
        }

        AnonymousClass3(LocalAssetHelper localAssetHelper, IonPanelHandlePreparedListener ionPanelHandlePreparedListener) {
            this.val$helper = localAssetHelper;
            this.val$listener = ionPanelHandlePreparedListener;
        }

        @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
        public void onAssetLoaded(boolean z) {
            if (z) {
                PanelHandle.this.mOpenDefaultDrawable.setDrawSign(false);
            } else {
                PanelHandle.this.mOpenDefaultDrawable.setDrawSign(true);
            }
            PanelHandle.this.mOpenAssetBgView.loadAsset(this.val$helper.openBtnAssetBg, PanelHandle.this.mOpenDefaultDrawable, new AnonymousClass1());
        }
    }

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE;
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PanelHandle$PANEL_HANDLE_VIEW_STATE;

        static {
            int[] iArr = new int[PANEL_HANDLE_VIEW_STATE.values().length];
            $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PanelHandle$PANEL_HANDLE_VIEW_STATE = iArr;
            try {
                iArr[PANEL_HANDLE_VIEW_STATE.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PanelHandle$PANEL_HANDLE_VIEW_STATE[PANEL_HANDLE_VIEW_STATE.OPENED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[PANEL_TYPE.values().length];
            $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE = iArr2;
            try {
                iArr2[PANEL_TYPE.BOTTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE[PANEL_TYPE.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public interface IOnPanelHandleClickListener {
        void onHandleClick();
    }

    public interface IonPanelHandlePreparedListener {
        void onPanelPrepared();
    }

    public enum PANEL_HANDLE_VIEW_STATE {
        OPENED,
        CLOSED
    }

    public PanelHandle(Context context, PANEL_TYPE panel_type, int i, IOnPanelHandleClickListener iOnPanelHandleClickListener) {
        super(context);
        this.mHandleSize = 0;
        this.mColor = -1;
        this.mIsLegacyAssets = true;
        this.mHandler = new Utils.StaticHandler(Looper.getMainLooper());
        this.mHandleSize = i;
        this.mPanelType = panel_type;
        this.mClickListener = iOnPanelHandleClickListener;
        initHandle();
    }

    private void initHandle() {
        if (this.mHandleSize == 0) {
            Point screenSize = Utils.getScreenSize(getContext());
            this.mHandleSize = (int) (Math.min(screenSize.x, screenSize.y) * DEFAULT_HANDLE_SCALE_SIZE);
        }
        int i = this.mHandleSize;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        this.mInnerOpenBtnLayParams = layoutParams;
        layoutParams.addRule(13);
        int i2 = this.mHandleSize;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i2, i2);
        this.mInnerCloseBtnLayParams = layoutParams2;
        layoutParams2.addRule(13);
        AssetView assetView = new AssetView(getContext());
        this.mOpenAssetBgView = assetView;
        assetView.setVisibility(4);
        AssetView assetView2 = new AssetView(getContext());
        this.mOpenAssetFrgView = assetView2;
        assetView2.setVisibility(4);
        AssetView assetView3 = new AssetView(getContext());
        this.mCloseAssetBgView = assetView3;
        assetView3.setVisibility(4);
        AssetView assetView4 = new AssetView(getContext());
        this.mCloseAssetFrgView = assetView4;
        assetView4.setVisibility(4);
        addView(this.mCloseAssetBgView, this.mInnerCloseBtnLayParams);
        addView(this.mCloseAssetFrgView, this.mInnerCloseBtnLayParams);
        addView(this.mOpenAssetBgView, this.mInnerOpenBtnLayParams);
        addView(this.mOpenAssetFrgView, this.mInnerOpenBtnLayParams);
        setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.1
            @Override // android.view.View.OnClickListener
            public void onClick(final View view) {
                PanelHandle.this.mHandler.postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PanelHandle.this.playHandleClickAnimation(view);
                    }
                }, 180L);
            }
        });
    }

    private void loadHandleAssets(LocalAssetHelper localAssetHelper, IonPanelHandlePreparedListener ionPanelHandlePreparedListener) {
        Context context = getContext();
        PANEL_TYPE panel_type = PANEL_TYPE.BOTTOM;
        DefaultPanelDrawable defaultPanelDrawable = new DefaultPanelDrawable(context, panel_type, DefaultPanelDrawable.PanelDrawableType.OPEN_VIEW);
        this.mOpenDefaultDrawable = defaultPanelDrawable;
        defaultPanelDrawable.setBaseColor(this.mColor);
        this.mOpenDefaultDrawable.setDrawSign(false);
        DefaultPanelDrawable defaultPanelDrawable2 = new DefaultPanelDrawable(getContext(), panel_type, DefaultPanelDrawable.PanelDrawableType.CLOSE_VIEW);
        this.mCloseDefaultDrawable = defaultPanelDrawable2;
        defaultPanelDrawable2.setBaseColor(this.mColor);
        this.mCloseDefaultDrawable.setDrawSign(false);
        this.mOpenAssetFrgView.loadAsset(localAssetHelper.openBtnAssetFrg, null, new AnonymousClass3(localAssetHelper, ionPanelHandlePreparedListener));
    }

    private void loadHandleLegacyAssets(LocalAssetHelper localAssetHelper, IonPanelHandlePreparedListener ionPanelHandlePreparedListener) {
        DefaultPanelDrawable defaultPanelDrawable = new DefaultPanelDrawable(getContext(), this.mPanelType, DefaultPanelDrawable.PanelDrawableType.OPEN_VIEW);
        this.mLegacyOpenDefaultDrawable = defaultPanelDrawable;
        defaultPanelDrawable.setBaseColor(this.mColor);
        DefaultPanelDrawable defaultPanelDrawable2 = new DefaultPanelDrawable(getContext(), this.mPanelType, DefaultPanelDrawable.PanelDrawableType.CLOSE_VIEW);
        this.mLegacyCloseDefaultDrawable = defaultPanelDrawable2;
        defaultPanelDrawable2.setBaseColor(this.mColor);
        this.mOpenAssetBgView.setVisibility(8);
        this.mCloseAssetBgView.setVisibility(4);
        this.mOpenAssetFrgView.setVisibility(4);
        this.mCloseAssetFrgView.setVisibility(4);
        this.mOpenAssetBgView.loadAsset(localAssetHelper.legacyBtnOpenAsset, this.mLegacyOpenDefaultDrawable, new AnonymousClass2(localAssetHelper, ionPanelHandlePreparedListener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playHandleClickAnimation(View view) {
        GenAnimator.playPanelButtonClickAnimation(view, this.mPanelType, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.4
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (PanelHandle.this.mClickListener != null) {
                    PanelHandle.this.mClickListener.onHandleClick();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
    }

    private void postInvalidateLayers() {
        this.mOpenAssetBgView.postInvalidate();
        this.mOpenAssetFrgView.postInvalidate();
        this.mCloseAssetBgView.postInvalidate();
        this.mCloseAssetFrgView.postInvalidate();
    }

    private void setCorrectRotation() {
        if (!this.mIsLegacyAssets) {
            int i = AnonymousClass5.$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE[this.mPanelType.ordinal()];
            if (i == 1) {
                this.mOpenAssetBgView.setRotation(0.0f);
                this.mCloseAssetBgView.setRotation(0.0f);
            } else if (i == 2) {
                this.mOpenAssetBgView.setRotation(180.0f);
                this.mCloseAssetBgView.setRotation(180.0f);
            }
        }
        postInvalidate();
    }

    public void loadAssets(LocalAssetHelper localAssetHelper, IonPanelHandlePreparedListener ionPanelHandlePreparedListener) {
        boolean zIsLegacyParams = localAssetHelper.isLegacyParams();
        this.mIsLegacyAssets = zIsLegacyParams;
        if (zIsLegacyParams) {
            loadHandleLegacyAssets(localAssetHelper, ionPanelHandlePreparedListener);
        } else {
            loadHandleAssets(localAssetHelper, ionPanelHandlePreparedListener);
        }
        setCorrectRotation();
    }

    public void setBaseColor(int i) {
        this.mColor = i;
        DefaultPanelDrawable defaultPanelDrawable = this.mOpenDefaultDrawable;
        if (defaultPanelDrawable != null && this.mCloseDefaultDrawable != null) {
            defaultPanelDrawable.setBaseColor(i);
            this.mCloseDefaultDrawable.setBaseColor(i);
        }
        DefaultPanelDrawable defaultPanelDrawable2 = this.mLegacyCloseDefaultDrawable;
        if (defaultPanelDrawable2 != null && this.mLegacyOpenDefaultDrawable != null) {
            defaultPanelDrawable2.setBaseColor(i);
            this.mLegacyOpenDefaultDrawable.setBaseColor(i);
        }
        postInvalidate();
    }

    public void setPanelButtonState(PANEL_HANDLE_VIEW_STATE panel_handle_view_state) {
        int i = AnonymousClass5.$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PanelHandle$PANEL_HANDLE_VIEW_STATE[panel_handle_view_state.ordinal()];
        if (i != 1) {
            if (i == 2) {
                if (this.mIsLegacyAssets) {
                    this.mOpenAssetBgView.setVisibility(4);
                    this.mOpenAssetFrgView.setVisibility(4);
                    this.mCloseAssetFrgView.setVisibility(0);
                } else {
                    this.mOpenAssetBgView.setVisibility(4);
                    this.mOpenAssetFrgView.setVisibility(4);
                    this.mCloseAssetBgView.setVisibility(0);
                    this.mCloseAssetFrgView.setVisibility(0);
                }
            }
        } else if (this.mIsLegacyAssets) {
            this.mOpenAssetBgView.setVisibility(0);
            this.mOpenAssetFrgView.setVisibility(0);
            this.mCloseAssetFrgView.setVisibility(4);
        } else {
            this.mOpenAssetBgView.setVisibility(0);
            this.mOpenAssetFrgView.setVisibility(0);
            this.mCloseAssetBgView.setVisibility(4);
            this.mCloseAssetFrgView.setVisibility(4);
        }
        postInvalidate();
    }

    public void setPanelType(PANEL_TYPE panel_type) {
        DefaultPanelDrawable defaultPanelDrawable;
        this.mPanelType = panel_type;
        if (this.mLegacyOpenDefaultDrawable != null && (defaultPanelDrawable = this.mLegacyCloseDefaultDrawable) != null) {
            defaultPanelDrawable.setPanelType(panel_type);
            this.mLegacyOpenDefaultDrawable.setPanelType(this.mPanelType);
        }
        setCorrectRotation();
    }
}
