package com.kidoz.sdk.api.ui_views;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.kidoz.events.EventManager;
import com.kidoz.sdk.api.dialogs.ParentalLockDialog;
import com.kidoz.sdk.api.general.animations.GenAnimator;
import com.kidoz.sdk.api.general.assets_handling.StyleParser;
import com.kidoz.sdk.api.general.utils.ScreenUtils;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.ui_views.ExitButton;
import com.kidoz.sdk.api.ui_views.ParentalLockButton;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class KidozTopBar extends RelativeLayout {
    public static final float BACKGROUND_RATIO = 0.061458334f;
    private ExitButton mExitButton;
    private boolean mIsClicksBlocked;
    private boolean mIsParentalLockVisible;
    private KidozTopBarListener mKidozTopBarListener;
    private ParentalLockButton mParentalLockButton;
    private JSONObject mPropertiesObject;
    private String mStyleId;
    private TitleView mTitleView;
    private String mWidgetType;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.ui_views.KidozTopBar$2, reason: invalid class name */
    class AnonymousClass2 implements Utils.OnGlobalLayoutFinishedListener {
        AnonymousClass2() {
        }

        @Override // com.kidoz.sdk.api.general.utils.Utils.OnGlobalLayoutFinishedListener
        public void onLayoutFinished() {
            KidozTopBar.this.mParentalLockButton.setVisibility(4);
            if (KidozTopBar.this.mIsParentalLockVisible) {
                KidozTopBar.this.mParentalLockButton.postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.KidozTopBar.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        GenAnimator.playDropAnimation(KidozTopBar.this.mParentalLockButton, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.KidozTopBar.2.1.1
                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                KidozTopBar.this.mParentalLockButton.setVisibility(0);
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationRepeat(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                                KidozTopBar.this.mParentalLockButton.setVisibility(0);
                            }
                        });
                    }
                }, 320L);
            }
            KidozTopBar.this.mExitButton.setVisibility(4);
            KidozTopBar.this.mExitButton.postDelayed(new Runnable() { // from class: com.kidoz.sdk.api.ui_views.KidozTopBar.2.2
                @Override // java.lang.Runnable
                public void run() {
                    GenAnimator.playDropAnimation(KidozTopBar.this.mExitButton, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.KidozTopBar.2.2.1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            KidozTopBar.this.mExitButton.setVisibility(0);
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            KidozTopBar.this.mExitButton.setVisibility(0);
                        }
                    });
                }
            }, 240L);
        }
    }

    public interface KidozTopBarListener {
        void onExitClicked(View view);
    }

    public KidozTopBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mWidgetType = null;
        this.mStyleId = null;
        initView(false);
    }

    public KidozTopBar(Context context, boolean z, String str, JSONObject jSONObject) {
        super(context);
        this.mWidgetType = null;
        this.mStyleId = null;
        this.mWidgetType = str;
        this.mPropertiesObject = jSONObject;
        if (jSONObject != null) {
            this.mStyleId = jSONObject.optString(StyleParser.STYLE_ID, null);
        }
        initView(z);
    }

    private void addBackground() {
        float scaleFactor = ScreenUtils.getScaleFactor(getContext());
        View view = new View(getContext());
        view.setBackgroundColor(Color.parseColor("#04a0e1"));
        addView(view, new RelativeLayout.LayoutParams(-1, (int) (scaleFactor * 118.0f)));
    }

    private void initExitButton(boolean z) {
        ExitButton exitButton = new ExitButton(getContext(), null, null, new ExitButton.ExitButtonListener() { // from class: com.kidoz.sdk.api.ui_views.KidozTopBar.4
            @Override // com.kidoz.sdk.api.ui_views.ExitButton.ExitButtonListener
            public void onClickEnd() {
                if (KidozTopBar.this.mIsClicksBlocked) {
                    return;
                }
                KidozTopBar.this.mIsClicksBlocked = true;
                EventManager.getInstance(KidozTopBar.this.getContext()).h(KidozTopBar.this.getContext(), KidozTopBar.this.mWidgetType, KidozTopBar.this.mStyleId, EventManager.b, null, "SDK", "Click", "Exit");
                if (KidozTopBar.this.mKidozTopBarListener != null) {
                    KidozTopBar.this.mKidozTopBarListener.onExitClicked(null);
                }
                KidozTopBar.this.mIsClicksBlocked = false;
            }

            @Override // com.kidoz.sdk.api.ui_views.ExitButton.ExitButtonListener
            public void onClickStarted() {
            }
        }, z);
        this.mExitButton = exitButton;
        exitButton.setId(Utils.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.rightMargin = (int) (ScreenUtils.getScaleFactor(getContext()) * 5.0f);
        addView(this.mExitButton, layoutParams);
    }

    private void initLockButton() {
        this.mIsParentalLockVisible = true;
        ParentalLockButton parentalLockButton = new ParentalLockButton(getContext(), null, null, new ParentalLockButton.ParentalLockButtonListener() { // from class: com.kidoz.sdk.api.ui_views.KidozTopBar.3
            @Override // com.kidoz.sdk.api.ui_views.ParentalLockButton.ParentalLockButtonListener
            public void onClickEnd() {
                if (KidozTopBar.this.mIsClicksBlocked) {
                    return;
                }
                KidozTopBar.this.mIsClicksBlocked = true;
                EventManager.getInstance(KidozTopBar.this.getContext()).a(KidozTopBar.this.getContext(), KidozTopBar.this.mWidgetType, KidozTopBar.this.mStyleId, EventManager.b, "Parental Lock", "Click", "Lock Button", ParentalLockDialog.isParentalLockActive(KidozTopBar.this.getContext()) ? 1 : 0);
                ParentalLockDialog.startParentalDialog(KidozTopBar.this.getContext(), false, 0.722f, 0.04f, new ParentalLockDialog.IOnParentalDialogListener() { // from class: com.kidoz.sdk.api.ui_views.KidozTopBar.3.1
                    @Override // com.kidoz.sdk.api.dialogs.ParentalLockDialog.IOnParentalDialogListener
                    public void onCloseDialog() {
                        KidozTopBar.this.mIsClicksBlocked = false;
                        KidozTopBar.this.mParentalLockButton.setIsLockActive(ParentalLockDialog.isParentalLockActive(KidozTopBar.this.getContext()));
                    }

                    @Override // com.kidoz.sdk.api.dialogs.ParentalLockDialog.IOnParentalDialogListener
                    public void onInputPass(boolean z) {
                        KidozTopBar.this.mParentalLockButton.setIsLockActive(ParentalLockDialog.isParentalLockActive(KidozTopBar.this.getContext()));
                    }
                });
            }

            @Override // com.kidoz.sdk.api.ui_views.ParentalLockButton.ParentalLockButtonListener
            public void onClickStarted() {
            }
        });
        this.mParentalLockButton = parentalLockButton;
        parentalLockButton.setId(Utils.generateViewId());
        this.mParentalLockButton.setIsLockActive(ParentalLockDialog.isParentalLockActive(getContext()));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(0, this.mExitButton.getId());
        layoutParams.rightMargin = (int) (ScreenUtils.getScaleFactor(getContext()) * 5.0f);
        addView(this.mParentalLockButton, layoutParams);
    }

    private void initRootView() {
        setOnTouchListener(new View.OnTouchListener() { // from class: com.kidoz.sdk.api.ui_views.KidozTopBar.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return KidozTopBar.this.mIsClicksBlocked;
            }
        });
        Utils.setOnGlobalLayoutFinishListener(this, new AnonymousClass2());
    }

    private void initTitle() {
        this.mTitleView = new TitleView(getContext(), null);
        addView(this.mTitleView, new RelativeLayout.LayoutParams(-2, -2));
        if (this.mPropertiesObject != null) {
            this.mTitleView.setTitleColor(Color.parseColor("#04a0e1"));
        }
    }

    private void initView(boolean z) {
        initRootView();
        addBackground();
        initExitButton(z);
        initLockButton();
        initTitle();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 1) {
            clearAnimation();
            setTranslationY(0.0f);
        }
    }

    public void setKidozTopBarListener(KidozTopBarListener kidozTopBarListener) {
        this.mKidozTopBarListener = kidozTopBarListener;
    }

    public void setTitle(String str) {
        TitleView titleView = this.mTitleView;
        if (titleView != null) {
            titleView.setTitle(str);
            invalidate();
        }
    }

    public void setTopBarBackgroundColor(int i) {
    }

    public void showParentalLockIcon(boolean z) {
        this.mIsParentalLockVisible = z;
        if (z) {
            this.mParentalLockButton.setVisibility(0);
        } else {
            this.mParentalLockButton.setVisibility(4);
        }
    }
}
