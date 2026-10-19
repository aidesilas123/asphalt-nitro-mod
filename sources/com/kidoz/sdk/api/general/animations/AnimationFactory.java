package com.kidoz.sdk.api.general.animations;

import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ViewAnimator;
import com.kidoz.sdk.api.general.animations.FlipAnimation;

/* JADX INFO: loaded from: classes4.dex */
public class AnimationFactory {
    private static final int DEFAULT_FLIP_TRANSITION_DURATION = 500;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.general.animations.AnimationFactory$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$general$animations$AnimationFactory$FlipDirection;

        static {
            int[] iArr = new int[FlipDirection.values().length];
            $SwitchMap$com$kidoz$sdk$api$general$animations$AnimationFactory$FlipDirection = iArr;
            try {
                iArr[FlipDirection.LEFT_RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$animations$AnimationFactory$FlipDirection[FlipDirection.TOP_BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$animations$AnimationFactory$FlipDirection[FlipDirection.RIGHT_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$animations$AnimationFactory$FlipDirection[FlipDirection.BOTTOM_TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum FlipDirection {
        LEFT_RIGHT,
        RIGHT_LEFT,
        TOP_BOTTOM,
        BOTTOM_TOP;

        public float getEndDegreeForFirstView() {
            int i = AnonymousClass4.$SwitchMap$com$kidoz$sdk$api$general$animations$AnimationFactory$FlipDirection[ordinal()];
            if (i == 1 || i == 2) {
                return 90.0f;
            }
            return (i == 3 || i == 4) ? -90.0f : 0.0f;
        }

        public float getEndDegreeForSecondView() {
            return 0.0f;
        }

        public float getStartDegreeForFirstView() {
            return 0.0f;
        }

        public float getStartDegreeForSecondView() {
            int i = AnonymousClass4.$SwitchMap$com$kidoz$sdk$api$general$animations$AnimationFactory$FlipDirection[ordinal()];
            if (i == 1 || i == 2) {
                return -90.0f;
            }
            return (i == 3 || i == 4) ? 90.0f : 0.0f;
        }

        public FlipDirection theOtherDirection() {
            int i = AnonymousClass4.$SwitchMap$com$kidoz$sdk$api$general$animations$AnimationFactory$FlipDirection[ordinal()];
            if (i == 1) {
                return RIGHT_LEFT;
            }
            if (i == 2) {
                return BOTTOM_TOP;
            }
            if (i == 3) {
                return LEFT_RIGHT;
            }
            if (i != 4) {
                return null;
            }
            return TOP_BOTTOM;
        }
    }

    public static void fadeIn(View view) {
        if (view == null) {
            return;
        }
        view.startAnimation(fadeInAnimation(500L, view));
    }

    public static Animation fadeInAnimation(long j, long j2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setInterpolator(new DecelerateInterpolator());
        alphaAnimation.setDuration(j);
        alphaAnimation.setStartOffset(j2);
        return alphaAnimation;
    }

    public static Animation fadeInAnimation(long j, final View view) {
        Animation animationFadeInAnimation = fadeInAnimation(500L, 0L);
        animationFadeInAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.kidoz.sdk.api.general.animations.AnimationFactory.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.setVisibility(0);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                view.setVisibility(8);
            }
        });
        return animationFadeInAnimation;
    }

    public static void fadeInThenOut(final View view, long j) {
        if (view == null) {
            return;
        }
        view.setVisibility(0);
        AnimationSet animationSet = new AnimationSet(true);
        Animation[] animationArrFadeInThenOutAnimation = fadeInThenOutAnimation(500L, j);
        animationSet.addAnimation(animationArrFadeInThenOutAnimation[0]);
        animationSet.addAnimation(animationArrFadeInThenOutAnimation[1]);
        animationSet.setAnimationListener(new Animation.AnimationListener() { // from class: com.kidoz.sdk.api.general.animations.AnimationFactory.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.setVisibility(8);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                view.setVisibility(0);
            }
        });
        view.startAnimation(animationSet);
    }

    public static Animation[] fadeInThenOutAnimation(long j, long j2) {
        return new Animation[]{fadeInAnimation(j, 0L), fadeOutAnimation(j, j2 + j)};
    }

    public static void fadeOut(View view) {
        if (view == null) {
            return;
        }
        view.startAnimation(fadeOutAnimation(500L, view));
    }

    public static Animation fadeOutAnimation(long j, long j2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        alphaAnimation.setStartOffset(j2);
        alphaAnimation.setDuration(j);
        return alphaAnimation;
    }

    public static Animation fadeOutAnimation(long j, final View view) {
        Animation animationFadeOutAnimation = fadeOutAnimation(500L, 0L);
        animationFadeOutAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.kidoz.sdk.api.general.animations.AnimationFactory.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.setVisibility(8);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                view.setVisibility(0);
            }
        });
        return animationFadeOutAnimation;
    }

    public static Animation[] flipAnimation(View view, View view2, FlipDirection flipDirection, long j, Interpolator interpolator) {
        Animation[] animationArr = new Animation[2];
        float width = view.getWidth() / 2.0f;
        float height = view.getHeight() / 2.0f;
        FlipAnimation flipAnimation = new FlipAnimation(flipDirection.getStartDegreeForFirstView(), flipDirection.getEndDegreeForFirstView(), width, height, 0.75f, FlipAnimation.ScaleUpDownEnum.SCALE_DOWN);
        flipAnimation.setDuration(j);
        flipAnimation.setFillAfter(true);
        flipAnimation.setInterpolator(interpolator == null ? new AccelerateInterpolator() : interpolator);
        FlipDirection flipDirection2 = FlipDirection.BOTTOM_TOP;
        if (flipDirection == flipDirection2 || flipDirection == FlipDirection.TOP_BOTTOM) {
            flipAnimation.setDirection(0);
        } else {
            flipAnimation.setDirection(1);
        }
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(flipAnimation);
        animationArr[0] = animationSet;
        FlipAnimation flipAnimation2 = new FlipAnimation(flipDirection.getStartDegreeForSecondView(), flipDirection.getEndDegreeForSecondView(), width, height, 0.75f, FlipAnimation.ScaleUpDownEnum.SCALE_UP);
        flipAnimation2.setDuration(j);
        flipAnimation2.setFillAfter(true);
        flipAnimation2.setInterpolator(interpolator == null ? new AccelerateInterpolator() : interpolator);
        flipAnimation2.setStartOffset(j);
        if (flipDirection == flipDirection2 || flipDirection == FlipDirection.TOP_BOTTOM) {
            flipAnimation2.setDirection(0);
        } else {
            flipAnimation2.setDirection(1);
        }
        AnimationSet animationSet2 = new AnimationSet(true);
        animationSet2.addAnimation(flipAnimation2);
        animationArr[1] = animationSet2;
        return animationArr;
    }

    public static void flipTransition(ViewAnimator viewAnimator, FlipDirection flipDirection) {
        flipTransition(viewAnimator, flipDirection, 500L);
    }

    public static void flipTransition(ViewAnimator viewAnimator, FlipDirection flipDirection, long j) {
        View currentView = viewAnimator.getCurrentView();
        int displayedChild = viewAnimator.getDisplayedChild();
        int childCount = (displayedChild + 1) % viewAnimator.getChildCount();
        View childAt = viewAnimator.getChildAt(childCount);
        if (childCount < displayedChild) {
            flipDirection = flipDirection.theOtherDirection();
        }
        Animation[] animationArrFlipAnimation = flipAnimation(currentView, childAt, flipDirection, j, null);
        viewAnimator.setOutAnimation(animationArrFlipAnimation[0]);
        viewAnimator.setInAnimation(animationArrFlipAnimation[1]);
        viewAnimator.showNext();
    }

    public static Animation inFromLeftAnimation(long j, Interpolator interpolator) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, -1.0f, 2, 0.0f, 2, 0.0f, 2, 0.0f);
        translateAnimation.setDuration(j);
        if (interpolator == null) {
            interpolator = new AccelerateInterpolator();
        }
        translateAnimation.setInterpolator(interpolator);
        return translateAnimation;
    }

    public static Animation inFromRightAnimation(long j, Interpolator interpolator) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 1.0f, 2, 0.0f, 2, 0.0f, 2, 0.0f);
        translateAnimation.setDuration(j);
        if (interpolator == null) {
            interpolator = new AccelerateInterpolator();
        }
        translateAnimation.setInterpolator(interpolator);
        return translateAnimation;
    }

    public static Animation inFromTopAnimation(long j, Interpolator interpolator) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.0f, 2, -1.0f, 2, 0.0f);
        translateAnimation.setDuration(j);
        if (interpolator == null) {
            interpolator = new AccelerateInterpolator();
        }
        translateAnimation.setInterpolator(interpolator);
        return translateAnimation;
    }

    public static Animation outToLeftAnimation(long j, Interpolator interpolator) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, -1.0f, 2, 0.0f, 2, 0.0f);
        translateAnimation.setDuration(j);
        if (interpolator == null) {
            interpolator = new AccelerateInterpolator();
        }
        translateAnimation.setInterpolator(interpolator);
        return translateAnimation;
    }

    public static Animation outToRightAnimation(long j, Interpolator interpolator) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 1.0f, 2, 0.0f, 2, 0.0f);
        translateAnimation.setDuration(j);
        if (interpolator == null) {
            interpolator = new AccelerateInterpolator();
        }
        translateAnimation.setInterpolator(interpolator);
        return translateAnimation;
    }

    public static Animation outToTopAnimation(long j, Interpolator interpolator) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.0f, 2, 0.0f, 2, -1.0f);
        translateAnimation.setDuration(j);
        if (interpolator == null) {
            interpolator = new AccelerateInterpolator();
        }
        translateAnimation.setInterpolator(interpolator);
        return translateAnimation;
    }
}
