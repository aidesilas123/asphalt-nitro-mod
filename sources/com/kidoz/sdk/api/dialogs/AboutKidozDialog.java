package com.kidoz.sdk.api.dialogs;

import android.R;
import android.animation.Animator;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.net.MailTo;
import com.google.android.gms.drive.DriveFile;
import com.kidoz.sdk.api.general.BaseDialog;
import com.kidoz.sdk.api.general.animations.GenAnimator;
import com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardView;
import com.kidoz.sdk.api.general.utils.ScreenUtils;
import com.kidoz.sdk.api.general.utils.SdkDeviceUtils;
import com.kidoz.sdk.api.general.utils.TestUtils;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.players.web_player.KidozWebView;
import com.kidoz.sdk.api.ui_views.AboutKidozWebViewContainer;
import com.kidoz.sdk.api.ui_views.custom_drawables.XViewDrawable;

/* JADX INFO: loaded from: classes4.dex */
public class AboutKidozDialog extends BaseDialog {
    private final String TAG;
    private AboutKidozWebViewContainer mContainer;
    private KidozCardView mKidozCardView;
    private int[] mPopLocation;
    private RelativeLayout mRootView;

    public AboutKidozDialog(Context context, int[] iArr) {
        super(context, R.style.Theme.Translucent);
        this.TAG = AboutKidozDialog.class.getSimpleName();
        setCancelable(true);
        setCanceledOnTouchOutside(true);
        requestWindowFeature(1);
        if (getWindow() != null) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            if (attributes != null) {
                attributes.dimAmount = 0.7f;
                getWindow().setAttributes(attributes);
            }
            getWindow().addFlags(2);
        }
        this.mPopLocation = iArr;
    }

    private void initBackgroundkidozCardView() {
        KidozCardView kidozCardView = new KidozCardView(getContext());
        this.mKidozCardView = kidozCardView;
        kidozCardView.setCardBackgroundColor(Color.parseColor("#ffffff"));
        this.mKidozCardView.setRadius(Utils.dpTOpx(getContext(), 4.0f));
        int iDpTOpx = Utils.dpTOpx(getContext(), 10.0f);
        this.mKidozCardView.setPadding(iDpTOpx, iDpTOpx, iDpTOpx, iDpTOpx);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(iDpTOpx, iDpTOpx, iDpTOpx, iDpTOpx);
        layoutParams.addRule(13);
        this.mRootView.addView(this.mKidozCardView, layoutParams);
        AboutKidozWebViewContainer aboutKidozWebViewContainer = new AboutKidozWebViewContainer(getContext());
        this.mContainer = aboutKidozWebViewContainer;
        this.mKidozCardView.addView(aboutKidozWebViewContainer, new FrameLayout.LayoutParams(-1, -1));
    }

    private void initCloseButton() {
        Point screenSize = SdkDeviceUtils.getScreenSize(getContext());
        int iMin = (int) (((double) Math.min(screenSize.x, screenSize.y)) * 0.058d);
        XViewDrawable xViewDrawable = new XViewDrawable(getContext(), Color.parseColor("#04a0e1"));
        final ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setImageDrawable(xViewDrawable);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.dialogs.AboutKidozDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GenAnimator.clickItemAnimation(view, 100, new GenAnimator.ViewAnimationListener() { // from class: com.kidoz.sdk.api.dialogs.AboutKidozDialog.1.1
                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                    public void onAnimationEnd() {
                        AboutKidozDialog.this.dismiss();
                    }

                    @Override // com.kidoz.sdk.api.general.animations.GenAnimator.ViewAnimationListener
                    public void onAnimationStart() {
                    }
                });
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iMin, iMin);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, Utils.dpTOpx(getContext(), 5.0f), Utils.dpTOpx(getContext(), 5.0f), 0);
        this.mContainer.addView(imageView, layoutParams);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.dialogs.AboutKidozDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                imageView.performClick();
            }
        });
        relativeLayout.setBackgroundColor(0);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(Utils.dpTOpx(getContext(), 55.0f), Utils.dpTOpx(getContext(), 55.0f));
        layoutParams2.gravity = 5;
        this.mKidozCardView.addView(relativeLayout, layoutParams2);
    }

    private void initDialog() {
        initRootView();
        initBackgroundkidozCardView();
        initWebView();
        initCloseButton();
        prepareSize();
    }

    private void initRootView() {
        this.mRootView = new RelativeLayout(getContext());
    }

    private void initWebView() {
        KidozWebView kidozWebView = new KidozWebView(getContext());
        kidozWebView.getSettings().setUseWideViewPort(true);
        kidozWebView.getSettings().setLoadWithOverviewMode(true);
        kidozWebView.getSettings().setSupportZoom(false);
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            kidozWebView.getSettings().setMixedContentMode(0);
        }
        kidozWebView.setWebViewClient(new WebViewClient() { // from class: com.kidoz.sdk.api.dialogs.AboutKidozDialog.3
            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                return (TestUtils.isMultiEnv() || !str.startsWith("http://")) ? super.shouldInterceptRequest(webView, str) : new WebResourceResponse(null, null, null);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (!TestUtils.isMultiEnv() && str.startsWith("http://")) {
                    return true;
                }
                if (str.startsWith(MailTo.MAILTO_SCHEME)) {
                    Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse(str));
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    AboutKidozDialog.this.getContext().startActivity(intent);
                } else {
                    Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    intent2.addFlags(DriveFile.MODE_READ_ONLY);
                    AboutKidozDialog.this.getContext().startActivity(intent2);
                }
                return true;
            }
        });
        kidozWebView.setOnTouchListener(new View.OnTouchListener() { // from class: com.kidoz.sdk.api.dialogs.AboutKidozDialog.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return false;
            }
        });
        kidozWebView.setLongClickable(true);
        kidozWebView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.kidoz.sdk.api.dialogs.AboutKidozDialog.5
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                return true;
            }
        });
        kidozWebView.setVerticalScrollBarEnabled(true);
        kidozWebView.setHorizontalScrollBarEnabled(false);
        kidozWebView.setScrollbarFadingEnabled(true);
        kidozWebView.loadUrl("https://kidoz.net/v3policy/");
        if (i >= 21) {
            kidozWebView.getSettings().setMixedContentMode(0);
        }
        this.mContainer.addView(kidozWebView, new RelativeLayout.LayoutParams(-1, -2));
    }

    private void prepareSize() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mKidozCardView.getLayoutParams();
        if (getContext().getResources().getConfiguration().orientation == 1) {
            layoutParams.width = (int) (Math.min(ScreenUtils.getScreenSize(getContext(), true), ScreenUtils.getScreenSize(getContext(), false)) * 0.8f);
            layoutParams.height = (int) (Math.max(ScreenUtils.getScreenSize(getContext(), true), ScreenUtils.getScreenSize(getContext(), false)) * 0.5f);
        } else if (!ScreenUtils.getIsTablet(getContext())) {
            layoutParams.width = (int) (Math.max(ScreenUtils.getScreenSize(getContext(), true), ScreenUtils.getScreenSize(getContext(), false)) * 0.8f);
            layoutParams.height = -2;
        } else {
            int iMax = (int) (Math.max(ScreenUtils.getScreenSize(getContext(), true), ScreenUtils.getScreenSize(getContext(), false)) * 0.7f);
            layoutParams.width = iMax;
            layoutParams.height = iMax;
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        int[] iArr = this.mPopLocation;
        if (iArr != null) {
            GenAnimator.playPopOutToRightTop(this.mKidozCardView, iArr, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.dialogs.AboutKidozDialog.7
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AboutKidozDialog.super.dismiss();
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            });
        } else {
            super.dismiss();
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initDialog();
        setContentView(this.mRootView);
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog
    protected void onDialogOrientationChange(boolean z) {
        super.onDialogOrientationChange(z);
        prepareSize();
    }

    @Override // com.kidoz.sdk.api.general.BaseDialog, android.app.Dialog
    public void show() {
        super.openDialog();
        this.mKidozCardView.setVisibility(4);
        Utils.setOnGlobalLayoutFinishListener(this.mKidozCardView, new Utils.OnGlobalLayoutFinishedListener() { // from class: com.kidoz.sdk.api.dialogs.AboutKidozDialog.6
            @Override // com.kidoz.sdk.api.general.utils.Utils.OnGlobalLayoutFinishedListener
            public void onLayoutFinished() {
                if (AboutKidozDialog.this.mPopLocation != null) {
                    GenAnimator.playPopInFromRightTop(AboutKidozDialog.this.mKidozCardView, AboutKidozDialog.this.mPopLocation, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.dialogs.AboutKidozDialog.6.1
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
                            AboutKidozDialog.this.mKidozCardView.setVisibility(0);
                        }
                    });
                } else {
                    AboutKidozDialog.this.mKidozCardView.setVisibility(0);
                }
            }
        });
    }
}
