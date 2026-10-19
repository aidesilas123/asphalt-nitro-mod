package com.kidoz.sdk.api.general.utils;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;

/* JADX INFO: loaded from: classes4.dex */
public class SdkAnimationsUtils {
    public static final int ENTER_ANIMATION_TIME = 100;
    public static final int EXIT_ANIMATION_TIME = 150;
    public static final int TOUCH_DELAY_ANIMATION_TIME = 2500;

    public static void animateClick(final View view, final Animator.AnimatorListener animatorListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.85f), ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.85f));
        animatorSet.setDuration(100L);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.general.utils.SdkAnimationsUtils.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                animatorSet2.playTogether(ObjectAnimator.ofFloat(view, "scaleY", 0.85f, 1.0f), ObjectAnimator.ofFloat(view, "scaleX", 0.85f, 1.0f));
                animatorSet2.setDuration(150L);
                animatorSet2.setInterpolator(new AccelerateInterpolator());
                Animator.AnimatorListener animatorListener2 = animatorListener;
                if (animatorListener2 != null) {
                    animatorSet2.addListener(animatorListener2);
                }
                animatorSet2.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        animatorSet.start();
    }

    public static void animateClick(final View view, final Animator.AnimatorListener animatorListener, int i, final int i2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.85f), ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.85f));
        animatorSet.setDuration(i);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.general.utils.SdkAnimationsUtils.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                animatorSet2.playTogether(ObjectAnimator.ofFloat(view, "scaleY", 0.85f, 1.0f), ObjectAnimator.ofFloat(view, "scaleX", 0.85f, 1.0f));
                animatorSet2.setDuration(i2);
                animatorSet2.setInterpolator(new AccelerateInterpolator());
                Animator.AnimatorListener animatorListener2 = animatorListener;
                if (animatorListener2 != null) {
                    animatorSet2.addListener(animatorListener2);
                }
                animatorSet2.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        animatorSet.start();
    }

    public static void animateFade(View view, boolean z, long j, Animator.AnimatorListener animatorListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (z) {
            animatorSet.playTogether(ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f));
            animatorSet.setInterpolator(new DecelerateInterpolator());
            animatorSet.setDuration(j);
            animatorSet.addListener(animatorListener);
            animatorSet.start();
            return;
        }
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f));
        animatorSet.setInterpolator(new AccelerateInterpolator());
        animatorSet.setDuration(j);
        animatorSet.addListener(animatorListener);
        animatorSet.start();
    }

    public static AnimatorSet animateListItem(Context context, View view, Animator.AnimatorListener animatorListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "scaleX", 0.52f, 1.0f).setDuration(350L), ObjectAnimator.ofFloat(view, "scaleY", 0.52f, 1.0f).setDuration(350L), ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f).setDuration(470L));
        animatorSet.setTarget(view);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static void animateRelatedContainerLandscapeSlideIn(View view) {
        view.animate().translationY(0.0f).setDuration(100L).setInterpolator(new DecelerateInterpolator());
    }

    public static void animateRelatedContainerLandscapeSlideOut(View view, int i) {
        view.animate().translationY(i).setDuration(150L).setInterpolator(new AccelerateInterpolator());
    }

    public static void animateRotate(View view) {
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(450L);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        view.startAnimation(rotateAnimation);
    }

    public static void animateTopBarSlideIn(View view) {
        view.animate().translationY(0.0f).setDuration(100L).setInterpolator(new DecelerateInterpolator());
    }

    public static void animateTopBarSlideOut(View view) {
        view.animate().translationY(view.getMeasuredHeight() * (-1)).setDuration(150L).setInterpolator(new AccelerateInterpolator());
    }
}
