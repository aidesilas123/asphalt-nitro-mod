package com.kidoz.sdk.api.dialogs;

import android.R;
import android.animation.Animator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kidoz.events.EventManager;
import com.kidoz.sdk.api.general.BaseDialog;
import com.kidoz.sdk.api.general.EventMessage;
import com.kidoz.sdk.api.general.WidgetEventMessage;
import com.kidoz.sdk.api.general.animations.GenAnimator;
import com.kidoz.sdk.api.general.assets_handling.StringAssetsUtils;
import com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardView;
import com.kidoz.sdk.api.general.enums.WidgetType;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.ScreenUtils;
import com.kidoz.sdk.api.general.utils.SdkAnimationsUtils;
import com.kidoz.sdk.api.general.utils.SdkToast;
import com.kidoz.sdk.api.general.utils.SharedPreferencesUtils;
import com.kidoz.sdk.api.general.utils.Utils;
import java.util.Random;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes4.dex */
public class ParentalLockDialog extends BaseDialog {
    private static final int DIALOG_BACKGROUND = Color.parseColor("#0fcaf7");
    private static final int DIALOG_BACKGROUND_CORNER_RADIUS = 4;
    public static final String PARENTAL_LOCK_ACTIVE_KEY = "PARENTAL_LOCK_ACTIVE_KEY_BOOLEAN";
    public static final float PIVOT_X_FACTOR = 0.722f;
    public static final float PIVOT_Y_FACTOR = 0.04f;
    private final int NUMBER_OF_COLUMNS;
    private final String TAG;
    private View mAnimatableView;
    private int mCounter;
    private TextView mDialogMessage;
    private TextView mDialogTitleTextView;
    private LinearLayout mEquationContainerView;
    private TextView mEquationTextView;
    private TextView mFeedbackMessage;
    private TextView mFeedbackMessageAction;
    private View mFeedbackMessageContainer;
    private Handler mHandler;
    private RelativeLayout mInnerViewContainer;
    private boolean mIsGateToGooglePlay;
    private boolean mIsLockActive;
    private boolean mIsLockChangeSuccessfully;
    private ParentLockDialogListener mParentLockDialogListener;
    private int[] mPopLocation;
    private TextView mResTextView1;
    private TextView mResTextView2;
    private TextView mResTextView3;
    private TextView mResTextView4;
    private int mRightResultIndex;
    private View mRootView;
    private int mSize;
    private Random random;

    public interface IOnParentalDialogListener {
        void onCloseDialog();

        void onInputPass(boolean z);
    }

    public interface ParentLockDialogListener {
        void onPasswordEntered(boolean z);
    }

    public ParentalLockDialog(Context context, boolean z, int[] iArr) {
        super(context, R.style.Theme.Translucent.NoTitleBar.Fullscreen);
        this.TAG = ParentalLockDialog.class.getSimpleName();
        this.NUMBER_OF_COLUMNS = 4;
        this.random = new Random();
        setCancelable(true);
        setCanceledOnTouchOutside(true);
        requestWindowFeature(1);
        this.mPopLocation = iArr;
        this.mIsGateToGooglePlay = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateFeedBackMessageBack() {
        this.mFeedbackMessageContainer.setVisibility(4);
        this.mEquationContainerView.setVisibility(0);
    }

    private void animateFeedBackMessageError() {
        this.mCounter++;
        EventManager.getInstance(getContext()).a(getContext(), null, null, EventManager.b, "Parental Lock", "Incorrect Password", null, this.mCounter);
        String langString = StringAssetsUtils.getLangString(getContext(), StringAssetsUtils.PLD_TITLE_WRONG_SELECTION_TRY_AGAIN);
        SpannableString spannableString = new SpannableString(StringAssetsUtils.getLangString(getContext(), StringAssetsUtils.PLD_TITLE_WRONG_SELECTION));
        SpannableString spannableString2 = new SpannableString(langString);
        spannableString2.setSpan(new StyleSpan(1), 0, spannableString2.length(), 0);
        this.mFeedbackMessage.setText(spannableString);
        this.mFeedbackMessageAction.setText(spannableString2);
        this.mFeedbackMessageContainer.setVisibility(0);
        this.mEquationContainerView.setVisibility(4);
    }

    private void animateFeedBackMessageSuccess(boolean z) {
        if (z) {
            closeParentalDialog();
            SdkToast.getSdkInstance(getContext()).showToast(StringAssetsUtils.getLangString(getContext(), StringAssetsUtils.PLD_TITLE_LOCK_DEACTIVATED), 1);
        } else {
            closeParentalDialog();
            SdkToast.getSdkInstance(getContext()).showToast(StringAssetsUtils.getLangString(getContext(), StringAssetsUtils.PLD_TITLE_LOCK_ACTIVATED), 1);
        }
        this.mFeedbackMessageContainer.setVisibility(0);
        this.mInnerViewContainer.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkResolutionResult(int i) {
        try {
            if (i != this.mRightResultIndex) {
                animateFeedBackMessageError();
                return;
            }
            this.mIsLockChangeSuccessfully = true;
            if (this.mIsGateToGooglePlay) {
                closeParentalDialog();
            } else {
                if (this.mIsLockActive) {
                    saveParentalLockState(getContext(), false);
                } else {
                    saveParentalLockState(getContext(), true);
                }
                animateFeedBackMessageSuccess(this.mIsLockActive);
                ParentLockDialogListener parentLockDialogListener = this.mParentLockDialogListener;
                if (parentLockDialogListener != null) {
                    parentLockDialogListener.onPasswordEntered(true);
                    EventManager.getInstance(getContext()).a(getContext(), null, null, EventManager.b, "Parental Lock", "Correct Password", null, this.mCounter);
                }
            }
            ParentLockDialogListener parentLockDialogListener2 = this.mParentLockDialogListener;
            if (parentLockDialogListener2 != null) {
                parentLockDialogListener2.onPasswordEntered(true);
                this.mCounter++;
                EventManager.getInstance(getContext()).a(getContext(), null, null, EventManager.b, "Parental Lock", "Correct Password", null, this.mCounter);
            }
        } catch (Exception e2) {
            SDKLogger.printErrorLog(this.TAG, "Error when trying to handle lock icon click: " + e2.getMessage());
        }
    }

    private void generateQuestionAnswerSequence() {
        int[] iArr = new int[20];
        int[] iArr2 = new int[4];
        int iNextInt = this.random.nextInt(9);
        int iNextInt2 = this.random.nextInt(9);
        int iNextInt3 = this.random.nextInt(3);
        this.mRightResultIndex = iNextInt3;
        iArr2[iNextInt3] = iNextInt + iNextInt2;
        for (int i = 0; i < 4; i++) {
            if (i != this.mRightResultIndex) {
                while (true) {
                    iArr2[i] = this.random.nextInt(19);
                    if (iArr[iArr2[i]] == 0 && iArr2[i] != iArr2[this.mRightResultIndex]) {
                        break;
                    }
                }
                iArr[iArr2[i]] = 1;
            }
        }
        this.mEquationTextView.setText("" + iNextInt + " + " + iNextInt2 + " = ?");
        for (int i2 = 0; i2 < 4; i2++) {
            if (i2 == 0) {
                this.mResTextView1.setText("" + iArr2[0]);
            } else if (i2 == 1) {
                this.mResTextView2.setText("" + iArr2[1]);
            } else if (i2 == 2) {
                this.mResTextView3.setText("" + iArr2[2]);
            } else if (i2 == 3) {
                this.mResTextView4.setText("" + iArr2[3]);
            }
        }
    }

    private void initDialog() {
        this.mHandler = new Handler();
        initDialogBackgroundView();
        initTitle();
        initDialogWidth();
        initExitButton();
        initQuestionAnswerView();
        initMessageTextView();
        initFeedbackMessageView();
        prepareDialog();
        this.mCounter = 0;
    }

    private void initDialogBackgroundView() {
        KidozCardView kidozCardView = (KidozCardView) this.mRootView.findViewById(ParentalLockLayoutGenerator.PARENTAL_CARDVIEW_ID);
        kidozCardView.setRadius(Utils.dpTOpx(getContext(), 4.0f));
        kidozCardView.setCardBackgroundColor(DIALOG_BACKGROUND);
    }

    private void initDialogWidth() {
        this.mAnimatableView = this.mRootView.findViewById(ParentalLockLayoutGenerator.ANIMATABLE_VIEW);
        if (ScreenUtils.getIsTablet(getContext())) {
            this.mAnimatableView.getLayoutParams().width = (int) (Math.min(ScreenUtils.getScreenSize(getContext(), true), ScreenUtils.getScreenSize(getContext(), false)) * 0.8f);
        } else {
            this.mAnimatableView.getLayoutParams().width = Math.min(ScreenUtils.getScreenSize(getContext(), true), ScreenUtils.getScreenSize(getContext(), false));
        }
    }

    private void initExitButton() {
        this.mRootView.findViewById(ParentalLockLayoutGenerator.EXIT_BUTTON_ID).setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SdkAnimationsUtils.animateClick(view, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.2.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ParentalLockDialog.this.closeParentalDialog();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
            }
        });
    }

    private void initFeedbackMessageView() {
        View viewFindViewById = this.mRootView.findViewById(ParentalLockLayoutGenerator.FEEDBACK_MESSAGE_CONTAINER_ID);
        this.mFeedbackMessageContainer = viewFindViewById;
        viewFindViewById.setSoundEffectsEnabled(false);
        this.mFeedbackMessageContainer.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ParentalLockDialog.this.prepareDialog();
                if (ParentalLockDialog.this.mIsLockChangeSuccessfully) {
                    ParentalLockDialog.this.mIsLockChangeSuccessfully = false;
                }
                ParentalLockDialog.this.animateFeedBackMessageBack();
            }
        });
        this.mFeedbackMessage = (TextView) this.mRootView.findViewById(ParentalLockLayoutGenerator.FEEDBACK_MESSAGE_TEXT_VIEW_ID);
        this.mFeedbackMessageAction = (TextView) this.mRootView.findViewById(ParentalLockLayoutGenerator.FEEDBACK_ACTION_TEXT_VIEW_ID);
        RelativeLayout relativeLayout = (RelativeLayout) this.mRootView.findViewById(ParentalLockLayoutGenerator.INNER_VIEW_CONTAINER_ID);
        this.mInnerViewContainer = relativeLayout;
        relativeLayout.getLayoutParams().width = this.mSize;
        this.mInnerViewContainer.getLayoutParams().height = (int) ((this.mSize / 4) * 1.85f);
    }

    private void initMessageTextView() {
        this.mDialogMessage = (TextView) this.mRootView.findViewById(ParentalLockLayoutGenerator.PARENTAL_LOCK_DIALOG_MESSAGE_TEXTVIEW_ID);
    }

    private void initQuestionAnswerView() {
        this.mEquationContainerView = (LinearLayout) this.mRootView.findViewById(ParentalLockLayoutGenerator.EQUATION_VIEW_CONTAINER_ID);
        this.mEquationTextView = (TextView) this.mRootView.findViewById(ParentalLockLayoutGenerator.EQUATION_TEXT_VIEW_ID);
        TextView textView = (TextView) this.mRootView.findViewById(ParentalLockLayoutGenerator.ANSWER_1_TEXT_VIEW_ID);
        this.mResTextView1 = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GenAnimator.playClickAnimation(view, new GenAnimator.IOnClickAnimFinishListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.3.1
                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.IOnClickAnimFinishListener
                    public void onClickFinished() {
                        ParentalLockDialog.this.checkResolutionResult(0);
                    }
                });
            }
        });
        TextView textView2 = (TextView) this.mRootView.findViewById(ParentalLockLayoutGenerator.ANSWER_2_TEXT_VIEW_ID);
        this.mResTextView2 = textView2;
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GenAnimator.playClickAnimation(view, new GenAnimator.IOnClickAnimFinishListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.4.1
                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.IOnClickAnimFinishListener
                    public void onClickFinished() {
                        ParentalLockDialog.this.checkResolutionResult(1);
                    }
                });
            }
        });
        TextView textView3 = (TextView) this.mRootView.findViewById(ParentalLockLayoutGenerator.ANSWER_3_TEXT_VIEW_ID);
        this.mResTextView3 = textView3;
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GenAnimator.playClickAnimation(view, new GenAnimator.IOnClickAnimFinishListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.5.1
                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.IOnClickAnimFinishListener
                    public void onClickFinished() {
                        ParentalLockDialog.this.checkResolutionResult(2);
                    }
                });
            }
        });
        TextView textView4 = (TextView) this.mRootView.findViewById(ParentalLockLayoutGenerator.ANSWER_4_TEXT_VIEW_ID);
        this.mResTextView4 = textView4;
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GenAnimator.playClickAnimation(view, new GenAnimator.IOnClickAnimFinishListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.6.1
                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.IOnClickAnimFinishListener
                    public void onClickFinished() {
                        ParentalLockDialog.this.checkResolutionResult(3);
                    }
                });
            }
        });
    }

    private void initTitle() {
        this.mDialogTitleTextView = (TextView) this.mRootView.findViewById(ParentalLockLayoutGenerator.PARENTAL_DIALOG_TITLE_ID);
    }

    public static boolean isLockStateChanged(Context context) {
        return SharedPreferencesUtils.hasBooleanSharedPreferencesData(context, PARENTAL_LOCK_ACTIVE_KEY);
    }

    public static boolean isParentalLockActive(Context context) {
        return SharedPreferencesUtils.loadBooleanValue(context, PARENTAL_LOCK_ACTIVE_KEY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareDialog() {
        try {
            boolean zIsParentalLockActive = isParentalLockActive(getContext());
            this.mIsLockActive = zIsParentalLockActive;
            if (this.mIsGateToGooglePlay) {
                this.mDialogTitleTextView.setText(StringAssetsUtils.getLangString(getContext(), StringAssetsUtils.PLD_TITLE_FOR_GOOGLE_PLAY));
            } else if (zIsParentalLockActive) {
                this.mDialogTitleTextView.setText(StringAssetsUtils.getLangString(getContext(), StringAssetsUtils.PLD_TITLE_DEACTIVATE));
            } else {
                this.mDialogTitleTextView.setText(StringAssetsUtils.getLangString(getContext(), StringAssetsUtils.PLD_TITLE_ACTIVATE));
            }
            if (this.mIsGateToGooglePlay) {
                this.mDialogMessage.setText(StringAssetsUtils.getLangString(getContext(), StringAssetsUtils.PLD_TITLE_GOOGLE_PLAY_GATE_NEW));
            } else if (this.mIsLockActive) {
                this.mDialogMessage.setText(StringAssetsUtils.getLangString(getContext(), StringAssetsUtils.PLD_TITLE_LOCK_DEACTIVATION_NEW));
            } else {
                this.mDialogMessage.setText(StringAssetsUtils.getLangString(getContext(), StringAssetsUtils.PLD_TITLE_LOCK_ACTIVATION_NEW));
            }
        } catch (Exception e2) {
            SDKLogger.printErrorLog(this.TAG, "Error when trying to prepareDialog: " + e2.getMessage());
        }
        generateQuestionAnswerSequence();
    }

    public static void saveParentalLockState(Context context, boolean z) {
        SharedPreferencesUtils.saveBooleanValue(context, PARENTAL_LOCK_ACTIVE_KEY, z);
    }

    public static ParentalLockDialog startParentalDialog(Context context, boolean z, float f2, float f3, final IOnParentalDialogListener iOnParentalDialogListener) {
        ParentalLockDialog parentalLockDialog = new ParentalLockDialog(context, z, new int[]{(int) (ScreenUtils.getScreenSize(context, true) * f2), (int) (ScreenUtils.getScreenSize(context, false) * f3)});
        parentalLockDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.8
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                iOnParentalDialogListener.onCloseDialog();
            }
        });
        parentalLockDialog.setParentLockDialogListener(new ParentLockDialogListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.9
            @Override // com.kidoz.sdk.api.dialogs.ParentalLockDialog.ParentLockDialogListener
            public void onPasswordEntered(boolean z2) {
                iOnParentalDialogListener.onInputPass(z2);
            }
        });
        parentalLockDialog.show();
        return parentalLockDialog;
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog
    public void closeDialog() {
        try {
            EventBus.getDefault().k(new WidgetEventMessage(EventMessage.MessageType.PARENTAL_DIALOG_CLOSE, WidgetType.WIDGET_TYPE_INTERSTITIAL));
        } catch (Exception e2) {
            SDKLogger.printErrorLog(this.TAG, "Error when trying to send parental dialog close message: " + e2.getMessage());
        }
        super.closeDialog();
    }

    public void closeParentalDialog() {
        this.mHandler.removeCallbacksAndMessages(null);
        ParentLockDialogListener parentLockDialogListener = this.mParentLockDialogListener;
        if (parentLockDialogListener != null) {
            parentLockDialogListener.onPasswordEntered(false);
        }
        EventManager.getInstance(this.mCallingActivity).a(this.mCallingActivity, null, null, EventManager.b, "Parental Lock", "Dialog Dismiss", null, this.mCounter);
        closeDialog();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mSize = Math.min(ScreenUtils.getScreenSize(getContext(), true), ScreenUtils.getScreenSize(getContext(), false));
        if (ScreenUtils.getIsTablet(getContext())) {
            this.mSize = (int) (this.mSize * 0.8f);
        }
        View viewGenerateParentalLockView = ParentalLockLayoutGenerator.generateParentalLockView(getContext(), this.mSize);
        this.mRootView = viewGenerateParentalLockView;
        setContentView(viewGenerateParentalLockView);
        initDialog();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
    }

    public void setParentLockDialogListener(ParentLockDialogListener parentLockDialogListener) {
        this.mParentLockDialogListener = parentLockDialogListener;
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog, android.app.Dialog
    public void show() {
        super.openDialog();
        EventManager.getInstance(getContext()).a(getContext(), null, null, EventManager.b, "Parental Lock", "Dialog Show", null, this.mCounter);
        this.mAnimatableView.setVisibility(0);
        Utils.setOnGlobalLayoutFinishListener(this.mAnimatableView, new Utils.OnGlobalLayoutFinishedListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.7
            @Override // com.kidoz.sdk.api.general.utils.Utils.OnGlobalLayoutFinishedListener
            public void onLayoutFinished() {
                if (ParentalLockDialog.this.mPopLocation != null) {
                    GenAnimator.playPopInFromRightTop(ParentalLockDialog.this.mAnimatableView, ParentalLockDialog.this.mPopLocation, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.dialogs.ParentalLockDialog.7.1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            ParentalLockDialog.this.mAnimatableView.setVisibility(0);
                        }
                    });
                } else {
                    ParentalLockDialog.this.mAnimatableView.setVisibility(0);
                }
            }
        });
    }
}
