package com.kidoz.sdk.api.general.animations;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.constraintlayout.motion.widget.Key;
import com.kidoz.sdk.api.ui_views.panel_view.PANEL_TYPE;

/* JADX INFO: loaded from: classes4.dex */
public class GenAnimator {
    public static String PRESS_IN_OUT = "pressInOut";
    public static String PRESS_LEFT = "pressLeft";
    public static String PRESS_RIGHT = "pressRight";
    public static String PRESS_TOP = "pressTop";
    public static String ROTATE_HORIZONTAL = "rotateHorizontal";

    /* JADX INFO: renamed from: com.kidoz.sdk.api.general.animations.GenAnimator$9, reason: invalid class name */
    static /* synthetic */ class AnonymousClass9 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE;

        static {
            int[] iArr = new int[PANEL_TYPE.values().length];
            $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE = iArr;
            try {
                iArr[PANEL_TYPE.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE[PANEL_TYPE.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public interface IOnClickAnimFinishListener {
        void onClickFinished();
    }

    public interface ViewAnimationListener {
        void onAnimationEnd();

        void onAnimationStart();
    }

    public static AnimatorSet animateHandleClose(View view, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        float width = view.getWidth() / 2;
        float height = view.getHeight() / 2;
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "pivotX", width), ObjectAnimator.ofFloat(view, "pivotY", height), ObjectAnimator.ofFloat(view, Key.ROTATION, 0.0f, 0.0f));
        animatorSet.setDuration(300L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet animateHandleOpen(View view, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        float width = view.getWidth() / 2;
        float height = view.getHeight() / 2;
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "pivotX", width), ObjectAnimator.ofFloat(view, "pivotY", height), ObjectAnimator.ofFloat(view, Key.ROTATION, 0.0f, 0.0f));
        animatorSet.setDuration(300L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet animateItem(View view, int i, final ViewAnimationListener viewAnimationListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        long j = i;
        animatorSet.setStartDelay(j);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.8f), ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.8f));
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(ObjectAnimator.ofFloat(view, "scaleX", 0.8f, 1.0f), ObjectAnimator.ofFloat(view, "scaleY", 0.8f, 1.0f));
        animatorSet.playSequentially(animatorSet2, animatorSet3);
        animatorSet.setDuration(j);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.general.animations.GenAnimator.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ViewAnimationListener viewAnimationListener2 = viewAnimationListener;
                if (viewAnimationListener2 != null) {
                    viewAnimationListener2.onAnimationEnd();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ViewAnimationListener viewAnimationListener2 = viewAnimationListener;
                if (viewAnimationListener2 != null) {
                    viewAnimationListener2.onAnimationStart();
                }
            }
        });
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet animateLongDurationClick(View view, int i, final ViewAnimationListener viewAnimationListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.95f), ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.95f));
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(ObjectAnimator.ofFloat(view, "scaleX", 0.95f, 1.0f), ObjectAnimator.ofFloat(view, "scaleY", 0.95f, 1.0f));
        animatorSet.playSequentially(animatorSet2, animatorSet3);
        animatorSet.setDuration(i);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.general.animations.GenAnimator.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ViewAnimationListener viewAnimationListener2 = viewAnimationListener;
                if (viewAnimationListener2 != null) {
                    viewAnimationListener2.onAnimationEnd();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ViewAnimationListener viewAnimationListener2 = viewAnimationListener;
                if (viewAnimationListener2 != null) {
                    viewAnimationListener2.onAnimationStart();
                }
            }
        });
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet animateWalking(View view, int i, float f2, float f3, final ViewAnimationListener viewAnimationListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(i);
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.play(ObjectAnimator.ofFloat(view, "translationX", f2, f3));
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.general.animations.GenAnimator.4
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ViewAnimationListener viewAnimationListener2 = viewAnimationListener;
                if (viewAnimationListener2 != null) {
                    viewAnimationListener2.onAnimationEnd();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ViewAnimationListener viewAnimationListener2 = viewAnimationListener;
                if (viewAnimationListener2 != null) {
                    viewAnimationListener2.onAnimationStart();
                }
            }
        });
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet clickItemAnimation(View view, int i, final ViewAnimationListener viewAnimationListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.8f), ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.8f));
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(ObjectAnimator.ofFloat(view, "scaleX", 0.8f, 1.0f), ObjectAnimator.ofFloat(view, "scaleY", 0.8f, 1.0f));
        animatorSet.playSequentially(animatorSet2, animatorSet3);
        animatorSet.setDuration(i);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.general.animations.GenAnimator.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ViewAnimationListener viewAnimationListener2 = viewAnimationListener;
                if (viewAnimationListener2 != null) {
                    viewAnimationListener2.onAnimationEnd();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ViewAnimationListener viewAnimationListener2 = viewAnimationListener;
                if (viewAnimationListener2 != null) {
                    viewAnimationListener2.onAnimationStart();
                }
            }
        });
        animatorSet.start();
        return animatorSet;
    }

    public static void closePanelView(View view, long j, View view2, PANEL_TYPE panel_type, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        int i = AnonymousClass9.$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE[panel_type.ordinal()];
        if (i == 1) {
            animatorSet.play(ObjectAnimator.ofFloat(view, "translationY", 0.0f, -view2.getHeight()));
        } else if (i == 2) {
            animatorSet.play(ObjectAnimator.ofFloat(view, "translationY", 0.0f, view2.getHeight()));
        }
        animatorSet.setInterpolator(new AccelerateInterpolator());
        animatorSet.setDuration(j);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
    }

    public static AnimatorSet fade(boolean z, View view, int i, Animator.AnimatorListener animatorListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(view, "alpha", z ? 0.0f : 1.0f, z ? 1.0f : 0.0f));
        animatorSet.setDuration(i);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet flexiBounceAnimation(View view, int i, TimeInterpolator timeInterpolator) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "translationY", view.getTranslationY(), view.getTranslationY(), view.getTranslationY() - 30.0f, view.getTranslationY(), view.getTranslationY() - 15.0f, view.getTranslationY(), view.getTranslationY()));
        animatorSet.setDuration(i);
        if (timeInterpolator != null) {
            animatorSet.setInterpolator(timeInterpolator);
        }
        return animatorSet;
    }

    public static AnimatorSet flexiFlashAnimation(View view, int i, TimeInterpolator timeInterpolator) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f, 1.0f, 0.0f, 1.0f));
        animatorSet.setDuration(i);
        if (timeInterpolator != null) {
            animatorSet.setInterpolator(timeInterpolator);
        }
        return animatorSet;
    }

    public static AnimatorSet flexiPulseAnimation(View view, int i, TimeInterpolator timeInterpolator) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 1.1f, 1.0f, 1.1f, 1.0f), ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 1.1f, 1.0f, 1.1f, 1.0f));
        animatorSet.setDuration(i);
        if (timeInterpolator != null) {
            animatorSet.setInterpolator(timeInterpolator);
        }
        return animatorSet;
    }

    public static AnimatorSet flexiSwingAnimation(View view, int i, TimeInterpolator timeInterpolator) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, Key.ROTATION, 0.0f, 10.0f, -10.0f, 6.0f, -6.0f, 3.0f, -3.0f, 0.0f));
        animatorSet.setDuration(i);
        if (timeInterpolator != null) {
            animatorSet.setInterpolator(timeInterpolator);
        }
        return animatorSet;
    }

    public static AnimatorSet flexiTadaAnimation(View view, int i, TimeInterpolator timeInterpolator) {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", view.getTranslationY(), view.getTranslationY(), view.getTranslationY() - 30.0f, view.getTranslationY(), view.getTranslationY() - 15.0f, view.getTranslationY(), view.getTranslationY());
        objectAnimatorOfFloat.setStartDelay(300L);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "translationY", view.getTranslationY(), view.getTranslationY(), view.getTranslationY() - 30.0f, view.getTranslationY(), view.getTranslationY() - 15.0f, view.getTranslationY(), view.getTranslationY());
        objectAnimatorOfFloat2.setStartDelay(300L);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.9f, 0.9f, 1.1f, 1.1f, 1.1f, 1.1f, 1.1f, 1.1f, 1.0f), ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.9f, 0.9f, 1.1f, 1.1f, 1.1f, 1.1f, 1.1f, 1.1f, 1.0f), ObjectAnimator.ofFloat(view, Key.ROTATION, 0.0f, -3.0f, -3.0f, 3.0f, -3.0f, 3.0f, -3.0f, 3.0f, -3.0f, 0.0f));
        animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2, animatorSet2);
        animatorSet.setDuration(i);
        if (timeInterpolator != null) {
            animatorSet.setInterpolator(timeInterpolator);
        }
        return animatorSet;
    }

    public static AnimatorSet getBanner(View view, int i, int i2, TimeInterpolator timeInterpolator, Animator.AnimatorListener animatorListener) {
        final AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSet animatorSet2 = new AnimatorSet();
        float f2 = -i;
        animatorSet2.playTogether(ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.5f, 0.5f, 0.5f, 1.0f), ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.5f, 0.5f, 0.5f, 1.0f), ObjectAnimator.ofFloat(view, Key.ROTATION, 360.0f, 0.0f), ObjectAnimator.ofFloat(view, "translationX", 0.0f, f2));
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.5f, 0.5f, 0.5f, 1.0f), ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.5f, 0.5f, 0.5f, 1.0f), ObjectAnimator.ofFloat(view, Key.ROTATION, 0.0f, 360.0f), ObjectAnimator.ofFloat(view, "translationX", f2, 0.0f));
        animatorSet3.setStartDelay(i2 / 2);
        animatorSet.playSequentially(animatorSet2, animatorSet3);
        animatorSet.setDuration(i2);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.setStartDelay(1500L);
        if (timeInterpolator != null) {
            animatorSet.setInterpolator(timeInterpolator);
        }
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        } else {
            animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.general.animations.GenAnimator.7
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animatorSet.start();
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            });
        }
        return animatorSet;
    }

    public static AnimatorSet hideTopBar(View view, int i, int i2, TimeInterpolator timeInterpolator, Animator.AnimatorListener animatorListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(view, "translationY", 0.0f, i));
        animatorSet.setDuration(i2);
        if (timeInterpolator != null) {
            animatorSet.setInterpolator(timeInterpolator);
        }
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static void openPanelView(View view, View view2, PANEL_TYPE panel_type, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        int i = AnonymousClass9.$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE[panel_type.ordinal()];
        if (i == 1) {
            animatorSet.play(ObjectAnimator.ofFloat(view, "translationY", -view2.getHeight(), 0.0f));
        } else if (i == 2) {
            animatorSet.play(ObjectAnimator.ofFloat(view, "translationY", view2.getHeight(), 0.0f));
        }
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.setDuration(200L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
    }

    public static AnimatorSet playBounceInLeftAnimation(View view, Animator.AnimatorListener animatorListener, int i) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "translationX", view.getWidth(), -30.0f, 10.0f, 0.0f), ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f, 1.0f, 1.0f));
        animatorSet.setDuration(i);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playBounceInRightAnimation(View view, Animator.AnimatorListener animatorListener, int i) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "translationX", -view.getWidth(), 30.0f, -10.0f, 0.0f), ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f, 1.0f, 1.0f));
        animatorSet.setDuration(i);
        animatorSet.setInterpolator(new AccelerateInterpolator());
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playClickAnimation(View view, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.setInterpolator(new DecelerateInterpolator());
        animatorSet2.playTogether(ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.8f), ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.8f));
        animatorSet2.setDuration(90L);
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.setInterpolator(new AccelerateInterpolator());
        animatorSet3.playTogether(ObjectAnimator.ofFloat(view, "scaleX", 0.8f, 1.0f), ObjectAnimator.ofFloat(view, "scaleY", 0.8f, 1.0f));
        animatorSet3.setDuration(90L);
        animatorSet.playSequentially(animatorSet2, animatorSet3);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playClickAnimation(View view, final IOnClickAnimFinishListener iOnClickAnimFinishListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.setInterpolator(new DecelerateInterpolator());
        animatorSet2.playTogether(ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.8f), ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.8f));
        animatorSet2.setDuration(90L);
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.setInterpolator(new AccelerateInterpolator());
        animatorSet3.playTogether(ObjectAnimator.ofFloat(view, "scaleX", 0.8f, 1.0f), ObjectAnimator.ofFloat(view, "scaleY", 0.8f, 1.0f));
        animatorSet3.setDuration(90L);
        animatorSet.playSequentially(animatorSet2, animatorSet3);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.general.animations.GenAnimator.6
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                iOnClickAnimFinishListener.onClickFinished();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playDropAnimation(View view, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new BounceInterpolator());
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "translationY", -view.getHeight(), 0.0f));
        animatorSet.setDuration(800L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playGrowAnimation(View view, long j, long j2, Interpolator interpolator, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new AccelerateInterpolator());
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "scaleX", 0.0f, 1.0f), ObjectAnimator.ofFloat(view, "scaleY", 0.0f, 1.0f));
        animatorSet.setDuration(j);
        animatorSet.setStartDelay(j2);
        if (interpolator != null) {
            animatorSet.setInterpolator(interpolator);
        }
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playOnBoardingCloudDropAnimation(View view, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "translationY", -view.getHeight(), 0.0f));
        animatorSet.setDuration(800L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playPanelButtonClickAnimation(View view, PANEL_TYPE panel_type, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new DecelerateInterpolator());
        int i = AnonymousClass9.$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE[panel_type.ordinal()];
        if (i == 1) {
            float width = view.getWidth() / 2;
            animatorSet.playTogether(ObjectAnimator.ofFloat(view, "pivotX", width, width, width, width), ObjectAnimator.ofFloat(view, "pivotY", 0.0f, 0.0f, 0.0f, 0.0f), ObjectAnimator.ofFloat(view, "rotationX", -15.0f, -30.0f, -15.0f, 0.0f));
        } else if (i == 2) {
            float width2 = view.getWidth() / 2;
            float height = view.getHeight();
            animatorSet.playTogether(ObjectAnimator.ofFloat(view, "pivotX", width2, width2, width2, width2), ObjectAnimator.ofFloat(view, "pivotY", height, height, height, height), ObjectAnimator.ofFloat(view, "rotationX", 15.0f, 30.0f, 15.0f, 0.0f));
        }
        animatorSet.setDuration(200L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playPopInFromRightBottom(View view, int[] iArr, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        int width = view.getWidth() - iArr[0];
        int height = view.getHeight() - iArr[1];
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new DecelerateInterpolator());
        float f2 = width;
        float f3 = height;
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "pivotX", f2, f2), ObjectAnimator.ofFloat(view, "pivotY", f3, f3), ObjectAnimator.ofFloat(view, "scaleX", 0.0f, 1.0f), ObjectAnimator.ofFloat(view, "scaleY", 0.0f, 1.0f));
        animatorSet.setDuration(270L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playPopInFromRightTop(View view, int[] iArr, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        int i = (-view.getLeft()) + iArr[0];
        int i2 = (-view.getTop()) + iArr[1];
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new DecelerateInterpolator());
        float f2 = i;
        float f3 = i2;
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "pivotX", f2, f2), ObjectAnimator.ofFloat(view, "pivotY", f3, f3), ObjectAnimator.ofFloat(view, "scaleX", 0.0f, 1.0f), ObjectAnimator.ofFloat(view, "scaleY", 0.0f, 1.0f));
        animatorSet.setDuration(270L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playPopOutAnimation(View view, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new AccelerateInterpolator());
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "translationY", 0.0f, -view.getHeight()));
        animatorSet.setDuration(450L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playPopOutToRightBottom(View view, int[] iArr, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        int width = view.getWidth() - iArr[0];
        int height = view.getHeight() - iArr[1];
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new AccelerateInterpolator());
        float f2 = width;
        float f3 = height;
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "pivotX", f2, f2), ObjectAnimator.ofFloat(view, "pivotY", f3, f3), ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.0f), ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.0f));
        animatorSet.setDuration(320L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playPopOutToRightTop(View view, int[] iArr, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        int i = (-view.getLeft()) + iArr[0];
        int i2 = (-view.getTop()) + iArr[1];
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new AccelerateInterpolator());
        float f2 = i;
        float f3 = i2;
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "pivotX", f2, f2), ObjectAnimator.ofFloat(view, "pivotY", f3, f3), ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.0f), ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.0f));
        animatorSet.setDuration(320L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playPressLeftAnimation(View view, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        float width = view.getWidth();
        float height = view.getHeight() / 2;
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "pivotX", width), ObjectAnimator.ofFloat(view, "pivotY", height), ObjectAnimator.ofFloat(view, "rotationY", -5.0f, -10.0f, -5.0f, 0.0f));
        animatorSet.setDuration(250L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playPressRightAnimation(View view, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        float height = view.getHeight() / 2;
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "pivotX", 0.0f), ObjectAnimator.ofFloat(view, "pivotY", height), ObjectAnimator.ofFloat(view, "rotationY", 5.0f, 10.0f, 5.0f, 0.0f));
        animatorSet.setDuration(250L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playPressTopAnimation(View view, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        float width = (((view.getWidth() - view.getPaddingLeft()) - view.getPaddingRight()) / 2) + view.getPaddingLeft();
        float height = view.getHeight();
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "pivotX", width), ObjectAnimator.ofFloat(view, "pivotY", height), ObjectAnimator.ofFloat(view, "rotationX", 15.0f, 30.0f, 15.0f, 0.0f));
        animatorSet.setDuration(250L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playShrinkAnimation(View view, long j, TimeInterpolator timeInterpolator, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        if (timeInterpolator != null) {
            animatorSet.setInterpolator(timeInterpolator);
        }
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.0f), ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.0f));
        animatorSet.setDuration(j);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playSlideInLeftAnimation(View view, Animator.AnimatorListener animatorListener, int i) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f), ObjectAnimator.ofFloat(view, "translationX", -(view.getWidth() - view.getLeft()), 0.0f));
        animatorSet.setDuration(i);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playSlideInRightAnimation(View view, Animator.AnimatorListener animatorListener, int i) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f), ObjectAnimator.ofFloat(view, "translationX", view.getWidth() - view.getLeft(), 0.0f));
        animatorSet.setDuration(i);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playSlideOutLeftAnimation(View view, Animator.AnimatorListener animatorListener, int i) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f), ObjectAnimator.ofFloat(view, "translationX", 0.0f, -view.getWidth()));
        animatorSet.setDuration(i);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playSlideOutRightAnimation(View view, Animator.AnimatorListener animatorListener, int i) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f), ObjectAnimator.ofFloat(view, "translationX", 0.0f, view.getWidth() - view.getLeft()));
        animatorSet.setDuration(i);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playStandUpAnimation(View view, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        float width = (((view.getWidth() - view.getPaddingLeft()) - view.getPaddingRight()) / 2) + view.getPaddingLeft();
        float paddingBottom = view.getPaddingBottom();
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "pivotX", width), ObjectAnimator.ofFloat(view, "pivotY", paddingBottom, paddingBottom), ObjectAnimator.ofFloat(view, "rotationX", -15.0f, -30.0f, -15.0f, 0.0f, 15.0f, 0.0f, -15.0f, 0.0f, 10.0f, 0.0f, -10.0f, 0.0f, 5.0f, 0.0f, -5.0f, 0.0f));
        animatorSet.setDuration(750L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet playStandUpAnimationBottom(View view, Animator.AnimatorListener animatorListener) {
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        float width = (((view.getWidth() - view.getPaddingLeft()) - view.getPaddingRight()) / 2) + view.getPaddingLeft();
        float height = view.getHeight();
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "pivotX", width), ObjectAnimator.ofFloat(view, "pivotY", height, height), ObjectAnimator.ofFloat(view, "rotationX", 15.0f, 30.0f, 15.0f, 0.0f, -15.0f, 0.0f, 15.0f, 0.0f));
        animatorSet.setDuration(550L);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }

    public static void playWormAnimation(final View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 1.1f, 0.2f, 0.6f, 0.5f, 0.5f, 0.5f, 0.5f, 1.0f), ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 1.1f, 0.2f, 0.6f, 0.5f, 0.5f, 0.5f, 0.5f, 1.0f));
        animatorSet.setDuration(1000L);
        animatorSet.setStartDelay(1000L);
        animatorSet.setInterpolator(new AccelerateInterpolator());
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.general.animations.GenAnimator.8
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                GenAnimator.playWormAnimation(view);
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

    public static AnimatorSet recycleItemAnimation(View view, final ViewAnimationListener viewAnimationListener) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "scaleX", 0.52f, 1.0f);
        objectAnimatorOfFloat.setDuration(250L);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "scaleY", 0.52f, 1.0f);
        objectAnimatorOfFloat2.setDuration(250L);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, "alpha", 0.2f, 1.0f);
        objectAnimatorOfFloat3.setDuration(250L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.general.animations.GenAnimator.5
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ViewAnimationListener viewAnimationListener2 = viewAnimationListener;
                if (viewAnimationListener2 != null) {
                    viewAnimationListener2.onAnimationEnd();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ViewAnimationListener viewAnimationListener2 = viewAnimationListener;
                if (viewAnimationListener2 != null) {
                    viewAnimationListener2.onAnimationStart();
                }
            }
        });
        animatorSet.start();
        return animatorSet;
    }

    public static AnimatorSet showTopBar(View view, int i, int i2, TimeInterpolator timeInterpolator, Animator.AnimatorListener animatorListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(view, "translationY", -i, 0.0f));
        animatorSet.setDuration(i2);
        if (timeInterpolator != null) {
            animatorSet.setInterpolator(timeInterpolator);
        }
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        return animatorSet;
    }
}
