package com.kidoz.sdk.api.ui_views;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.kidoz.sdk.api.general.EventMessage;
import com.kidoz.sdk.api.general.animations.GenAnimator;
import com.kidoz.sdk.api.general.enums.WidgetType;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.ui_views.parental_lock.AssetView;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.k;

/* JADX INFO: loaded from: classes4.dex */
public class KidozButton extends RelativeLayout {
    public static final String TAG = KidozButton.class.getSimpleName();
    private final float BUTTON_SIZE_RATIO;
    private AssetView mAssetView;
    private boolean mIsAlreadySentButtonReady;
    private boolean mIsButtonReady;
    private KidozButtonListener mKidozButtonListener;
    private WidgetType mWidgetType;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.KidozButton$2, reason: invalid class name */
    class AnonymousClass2 implements AssetView.IOnAssetLoadedListener {
        AnonymousClass2() {
        }

        @Override // com.kidoz.sdk.api.ui_views.parental_lock.AssetView.IOnAssetLoadedListener
        public void onAssetLoaded(boolean z) {
            GenAnimator.playGrowAnimation(KidozButton.this, 350L, 0L, null, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.KidozButton.2.1
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    KidozButton.this.requestFocus();
                    KidozButton.this.bringToFront();
                    KidozButton.this.mIsButtonReady = true;
                    if (KidozButton.this.mKidozButtonListener == null || KidozButton.this.mIsAlreadySentButtonReady) {
                        return;
                    }
                    KidozButton.this.mIsAlreadySentButtonReady = true;
                    KidozButton.this.mKidozButtonListener.onButtonReady();
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    KidozButton.this.setVisibility(0);
                    KidozButton.this.requestFocus();
                    KidozButton.this.bringToFront();
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.KidozButton$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$general$enums$WidgetType;

        static {
            int[] iArr = new int[WidgetType.values().length];
            $SwitchMap$com$kidoz$sdk$api$general$enums$WidgetType = iArr;
            try {
                iArr[WidgetType.WIDGET_TYPE_VIDEO_UNIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public interface KidozButtonListener {
        void onButtonReady();

        void onClick();
    }

    public KidozButton(Context context) {
        super(context);
        this.BUTTON_SIZE_RATIO = 0.2f;
        initView();
    }

    public KidozButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.BUTTON_SIZE_RATIO = 0.2f;
        initView();
    }

    public KidozButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.BUTTON_SIZE_RATIO = 0.2f;
        initView();
    }

    private void initAssetView(RelativeLayout.LayoutParams layoutParams) {
        AssetView assetView = new AssetView(getContext());
        this.mAssetView = assetView;
        assetView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        addView(this.mAssetView, layoutParams);
    }

    private void initRootView(RelativeLayout.LayoutParams layoutParams) {
        setLayoutParams(layoutParams);
        setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.KidozButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(final View view) {
                view.setClickable(false);
                GenAnimator.clickItemAnimation(KidozButton.this, 70, new GenAnimator.ViewAnimationListener() { // from class: com.kidoz.sdk.api.ui_views.KidozButton.1.1
                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                    public void onAnimationEnd() {
                        view.setClickable(true);
                        KidozButton.this.mKidozButtonListener.onClick();
                    }

                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                    public void onAnimationStart() {
                    }
                });
            }
        });
    }

    private void initView() {
        setVisibility(4);
        Point screenSize = Utils.getScreenSize(getContext());
        int iMin = (int) (Math.min(screenSize.x, screenSize.y) * 0.2f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iMin, iMin);
        initRootView(layoutParams);
        initAssetView(layoutParams);
        loadAssetView();
    }

    private void loadAssetView() {
        setVisibility(4);
        WidgetType widgetType = this.mWidgetType;
        if (widgetType != null) {
            int i = AnonymousClass3.$SwitchMap$com$kidoz$sdk$api$general$enums$WidgetType[widgetType.ordinal()];
        }
        if (EventBus.getDefault().i(this)) {
            return;
        }
        EventBus.getDefault().o(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (EventBus.getDefault().i(this)) {
            EventBus.getDefault().q(this);
        }
    }

    @k
    public void onHandleEvent(EventMessage eventMessage) {
        if (eventMessage.getMessageType() == EventMessage.MessageType.VIDEO_UNIT_BUTTON_READY) {
            loadAssetView();
            if (EventBus.getDefault().i(this)) {
                EventBus.getDefault().q(this);
            }
        }
    }

    public void setKidozButtonListener(KidozButtonListener kidozButtonListener) {
        this.mKidozButtonListener = kidozButtonListener;
        if (kidozButtonListener == null || this.mIsAlreadySentButtonReady || !this.mIsButtonReady) {
            return;
        }
        this.mIsAlreadySentButtonReady = true;
        kidozButtonListener.onButtonReady();
    }

    public void setWidgetType(WidgetType widgetType) {
        this.mWidgetType = widgetType;
        loadAssetView();
    }
}
