package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.same.c.b;
import com.mbridge.msdk.foundation.same.c.c;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.t;

/* JADX INFO: loaded from: classes4.dex */
public class MBridgeBaitClickView extends RelativeLayout {
    public static final int ANIMATION_TYPE_DOUBLE_CLICK = 4;
    public static final int ANIMATION_TYPE_FAST_SCALE = 1;
    public static final int ANIMATION_TYPE_ROTATE = 5;
    public static final int ANIMATION_TYPE_SLOW_SCALE = 2;
    public static final int ANIMATION_TYPE_SLOW_SCALE_WITH_PAUSE = 3;
    private MBridgeDyImageView a;
    private MBridgeDyImageView b;
    private TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6877d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6878e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6879f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6880g;
    private int h;
    private Animation i;
    private Animation j;
    private Animation k;
    private Animation l;

    public MBridgeBaitClickView(Context context) {
        super(context);
        this.f6877d = "";
        this.f6878e = "";
        this.f6879f = "Click now for details";
        this.f6880g = 1;
        this.h = 1342177280;
    }

    public MBridgeBaitClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6877d = "";
        this.f6878e = "";
        this.f6879f = "Click now for details";
        this.f6880g = 1;
        this.h = 1342177280;
    }

    public MBridgeBaitClickView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6877d = "";
        this.f6878e = "";
        this.f6879f = "Click now for details";
        this.f6880g = 1;
        this.h = 1342177280;
    }

    public MBridgeBaitClickView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f6877d = "";
        this.f6878e = "";
        this.f6879f = "Click now for details";
        this.f6880g = 1;
        this.h = 1342177280;
    }

    public void init() {
        try {
            setBackgroundColor(this.h);
            try {
                this.f6879f = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh") ? "点击查看详情" : "Click now for details";
            } catch (Throwable th) {
                aa.d("MBridgeAnimationClickView", th.getMessage());
            }
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
            int iB = af.b(getContext(), 55.0f);
            int iB2 = af.b(getContext(), 33.0f);
            this.b = new MBridgeDyImageView(getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iB, iB);
            layoutParams.setMargins(iB2, iB2, 0, 0);
            this.b.setLayoutParams(layoutParams);
            final int iA = t.a(getContext(), "mbridge_icon_click_circle", "drawable");
            if (TextUtils.isEmpty(this.f6878e)) {
                this.b.setImageResource(iA);
            } else {
                b.a(com.mbridge.msdk.foundation.controller.b.d().g()).a(this.f6877d, new c() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.1
                    @Override // com.mbridge.msdk.foundation.same.c.c
                    public void onFailedLoad(String str, String str2) {
                        MBridgeBaitClickView.this.b.setImageResource(iA);
                    }

                    @Override // com.mbridge.msdk.foundation.same.c.c
                    public void onSuccessLoad(Bitmap bitmap, String str) {
                        if (bitmap.isRecycled()) {
                            return;
                        }
                        MBridgeBaitClickView.this.b.setImageBitmap(bitmap);
                    }
                });
            }
            int iB3 = af.b(getContext(), 108.0f);
            int iB4 = af.b(getContext(), 35.0f);
            int iB5 = af.b(getContext(), 43.0f);
            this.a = new MBridgeDyImageView(getContext());
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iB3, iB3);
            layoutParams2.setMargins(iB4, iB5, 0, 0);
            this.a.setLayoutParams(layoutParams2);
            final int iA2 = t.a(getContext(), "mbridge_icon_click_hand", "drawable");
            if (TextUtils.isEmpty(this.f6877d)) {
                this.a.setImageResource(iA2);
            } else {
                b.a(com.mbridge.msdk.foundation.controller.b.d().g()).a(this.f6877d, new c() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.2
                    @Override // com.mbridge.msdk.foundation.same.c.c
                    public void onFailedLoad(String str, String str2) {
                        MBridgeBaitClickView.this.a.setImageResource(iA2);
                    }

                    @Override // com.mbridge.msdk.foundation.same.c.c
                    public void onSuccessLoad(Bitmap bitmap, String str) {
                        if (bitmap.isRecycled()) {
                            return;
                        }
                        MBridgeBaitClickView.this.a.setImageBitmap(bitmap);
                    }
                });
            }
            relativeLayout.addView(this.b);
            relativeLayout.addView(this.a);
            LinearLayout linearLayout = new LinearLayout(getContext());
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(13);
            linearLayout.setLayoutParams(layoutParams3);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(1);
            linearLayout.addView(relativeLayout);
            this.c = new TextView(getContext());
            this.c.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
            this.c.setText(this.f6879f);
            this.c.setTextColor(-1);
            this.c.setGravity(14);
            linearLayout.addView(this.c);
            addView(linearLayout);
        } catch (Throwable th2) {
            aa.d("MBridgeAnimationClickView", th2.getMessage());
        }
    }

    public void init(int i) {
        this.f6880g = i;
        init();
    }

    public void init(int i, int i2) {
        this.h = i;
        this.f6880g = i2;
        init();
    }

    public void init(int i, int i2, String str, String str2, String str3) {
        this.h = i;
        this.f6880g = i2;
        this.f6877d = str;
        this.f6878e = str2;
        this.f6879f = str3;
        init();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearAnimation();
        Animation animation = this.i;
        if (animation != null) {
            animation.cancel();
        }
        Animation animation2 = this.j;
        if (animation2 != null) {
            animation2.cancel();
        }
        Animation animation3 = this.k;
        if (animation3 != null) {
            animation3.cancel();
        }
        Animation animation4 = this.l;
        if (animation4 != null) {
            animation4.cancel();
        }
    }

    public void startAnimation() {
        int i = this.f6880g;
        if (i == 2) {
            this.b.setVisibility(4);
            ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
            this.i = scaleAnimation;
            scaleAnimation.setDuration(500L);
            this.i.setRepeatCount(-1);
            this.i.setRepeatMode(2);
            MBridgeDyImageView mBridgeDyImageView = this.a;
            if (mBridgeDyImageView != null) {
                mBridgeDyImageView.startAnimation(this.i);
                return;
            }
            return;
        }
        if (i == 3) {
            MBridgeDyImageView mBridgeDyImageView2 = this.b;
            if (mBridgeDyImageView2 != null) {
                mBridgeDyImageView2.setVisibility(4);
            }
            ScaleAnimation scaleAnimation2 = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
            this.i = scaleAnimation2;
            scaleAnimation2.setDuration(500L);
            this.i.setRepeatCount(1);
            this.i.setRepeatMode(2);
            ScaleAnimation scaleAnimation3 = new ScaleAnimation(0.0f, 1.5f, 0.0f, 1.5f, 1, 0.5f, 1, 0.5f);
            this.j = scaleAnimation3;
            scaleAnimation3.setDuration(1000L);
            this.j.setRepeatCount(0);
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            this.k = alphaAnimation;
            alphaAnimation.setDuration(1000L);
            this.k.setRepeatCount(0);
            final AnimationSet animationSet = new AnimationSet(true);
            animationSet.addAnimation(this.j);
            animationSet.addAnimation(this.k);
            this.j.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.3
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    if (MBridgeBaitClickView.this.b != null) {
                        MBridgeBaitClickView.this.b.setVisibility(4);
                    }
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                    if (MBridgeBaitClickView.this.b != null) {
                        MBridgeBaitClickView.this.b.setVisibility(0);
                    }
                }
            });
            this.i.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.4
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    MBridgeBaitClickView.this.postDelayed(new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.4.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MBridgeBaitClickView.this.a != null) {
                                MBridgeBaitClickView.this.a.startAnimation(MBridgeBaitClickView.this.i);
                            }
                        }
                    }, 1000L);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                    MBridgeBaitClickView.this.postDelayed(new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MBridgeBaitClickView.this.b != null) {
                                MBridgeBaitClickView.this.b.startAnimation(animationSet);
                            }
                        }
                    }, 550L);
                }
            });
            MBridgeDyImageView mBridgeDyImageView3 = this.a;
            if (mBridgeDyImageView3 != null) {
                mBridgeDyImageView3.startAnimation(this.i);
                return;
            }
            return;
        }
        if (i == 4) {
            this.b.setVisibility(4);
            ScaleAnimation scaleAnimation4 = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
            this.i = scaleAnimation4;
            scaleAnimation4.setDuration(200L);
            this.i.setRepeatCount(1);
            this.i.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.5
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    MBridgeBaitClickView.this.postDelayed(new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MBridgeBaitClickView.this.a != null) {
                                MBridgeBaitClickView.this.a.startAnimation(MBridgeBaitClickView.this.i);
                            }
                        }
                    }, 1000L);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            MBridgeDyImageView mBridgeDyImageView4 = this.a;
            if (mBridgeDyImageView4 != null) {
                mBridgeDyImageView4.startAnimation(this.i);
                return;
            }
            return;
        }
        if (i != 5) {
            ScaleAnimation scaleAnimation5 = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
            this.i = scaleAnimation5;
            scaleAnimation5.setDuration(200L);
            this.i.setRepeatCount(-1);
            this.i.setRepeatMode(2);
            MBridgeDyImageView mBridgeDyImageView5 = this.a;
            if (mBridgeDyImageView5 != null) {
                mBridgeDyImageView5.startAnimation(this.i);
            }
            ScaleAnimation scaleAnimation6 = new ScaleAnimation(0.0f, 1.2f, 0.0f, 1.2f, 1, 0.5f, 1, 0.5f);
            this.j = scaleAnimation6;
            scaleAnimation6.setDuration(400L);
            this.j.setRepeatCount(-1);
            AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.3f);
            this.k = alphaAnimation2;
            alphaAnimation2.setDuration(400L);
            this.k.setRepeatCount(-1);
            AnimationSet animationSet2 = new AnimationSet(true);
            animationSet2.addAnimation(this.j);
            animationSet2.addAnimation(this.k);
            MBridgeDyImageView mBridgeDyImageView6 = this.b;
            if (mBridgeDyImageView6 != null) {
                mBridgeDyImageView6.startAnimation(animationSet2);
                return;
            }
            return;
        }
        RotateAnimation rotateAnimation = new RotateAnimation(-10.0f, 30.0f, 1, 0.5f, 1, 0.5f);
        this.l = rotateAnimation;
        rotateAnimation.setDuration(300L);
        this.l.setRepeatMode(2);
        this.l.setRepeatCount(-1);
        ScaleAnimation scaleAnimation7 = new ScaleAnimation(0.0f, 1.2f, 0.0f, 1.2f, 1, 0.5f, 1, 0.5f);
        this.j = scaleAnimation7;
        scaleAnimation7.setDuration(600L);
        this.j.setRepeatCount(-1);
        AlphaAnimation alphaAnimation3 = new AlphaAnimation(1.0f, 0.0f);
        this.k = alphaAnimation3;
        alphaAnimation3.setDuration(600L);
        this.k.setRepeatCount(-1);
        AnimationSet animationSet3 = new AnimationSet(true);
        animationSet3.addAnimation(this.j);
        animationSet3.addAnimation(this.k);
        MBridgeDyImageView mBridgeDyImageView7 = this.a;
        if (mBridgeDyImageView7 != null) {
            mBridgeDyImageView7.startAnimation(this.l);
        }
        MBridgeDyImageView mBridgeDyImageView8 = this.b;
        if (mBridgeDyImageView8 != null) {
            mBridgeDyImageView8.startAnimation(animationSet3);
        }
    }
}
