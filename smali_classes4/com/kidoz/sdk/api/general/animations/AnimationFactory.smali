###### Class com.kidoz.sdk.api.general.animations.AnimationFactory (com.kidoz.sdk.api.general.animations.AnimationFactory)
.class public Lcom/kidoz/sdk/api/general/animations/AnimationFactory;
.super Ljava/lang/Object;
.source "AnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLIP_TRANSITION_DURATION:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1, p0}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory;->fadeInAnimation(JLandroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static fadeInAnimation(JJ)Landroid/view/animation/Animation;
    .registers 7

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-object v0
.end method

.method public static fadeInAnimation(JLandroid/view/View;)Landroid/view/animation/Animation;
    .registers 5

    const-wide/16 p0, 0x1f4

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory;->fadeInAnimation(JJ)Landroid/view/animation/Animation;

    move-result-object p0

    new-instance p1, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$1;

    invoke-direct {p1, p2}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object p0
.end method

.method public static fadeInThenOut(Landroid/view/View;J)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4, p1, p2}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory;->fadeInThenOutAnimation(JJ)[Landroid/view/animation/Animation;

    move-result-object p1

    aget-object p2, p1, v0

    invoke-virtual {v1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$3;

    invoke-direct {p1, p0}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static fadeInThenOutAnimation(JJ)[Landroid/view/animation/Animation;
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/animation/Animation;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory;->fadeInAnimation(JJ)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    add-long/2addr p2, p0

    invoke-static {p0, p1, p2, p3}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory;->fadeOutAnimation(JJ)Landroid/view/animation/Animation;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    return-object v0
.end method

.method public static fadeOut(Landroid/view/View;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1, p0}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory;->fadeOutAnimation(JLandroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static fadeOutAnimation(JJ)Landroid/view/animation/Animation;
    .registers 7

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method public static fadeOutAnimation(JLandroid/view/View;)Landroid/view/animation/Animation;
    .registers 5

    const-wide/16 p0, 0x1f4

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory;->fadeOutAnimation(JJ)Landroid/view/animation/Animation;

    move-result-object p0

    new-instance p1, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$2;

    invoke-direct {p1, p2}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object p0
.end method

.method public static flipAnimation(Landroid/view/View;Landroid/view/View;Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;JLandroid/view/animation/Interpolator;)[Landroid/view/animation/Animation;
    .registers 23

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v5, v6, v5

    new-instance v13, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;

    invoke-virtual/range {p2 .. p2}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->getStartDegreeForFirstView()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->getEndDegreeForFirstView()F

    move-result v8

    sget-object v12, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->SCALE_DOWN:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    const/high16 v11, 0x3f400000    # 0.75f

    move-object v6, v13

    move v9, v4

    move v10, v5

    invoke-direct/range {v6 .. v12}, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;-><init>(FFFFFLcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;)V

    invoke-virtual {v13, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-nez p5, :cond_39

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_3b

    :cond_39
    move-object/from16 v6, p5

    :goto_3b
    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    sget-object v15, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->BOTTOM_TOP:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    const/4 v12, 0x0

    if-eq v0, v15, :cond_4c

    sget-object v6, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->TOP_BOTTOM:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    if-ne v0, v6, :cond_48

    goto :goto_4c

    :cond_48
    invoke-virtual {v13, v14}, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->setDirection(I)V

    goto :goto_4f

    :cond_4c
    :goto_4c
    invoke-virtual {v13, v12}, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->setDirection(I)V

    :goto_4f
    new-instance v6, Landroid/view/animation/AnimationSet;

    invoke-direct {v6, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v6, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    aput-object v6, v3, v12

    new-instance v13, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;

    invoke-virtual/range {p2 .. p2}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->getStartDegreeForSecondView()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->getEndDegreeForSecondView()F

    move-result v8

    const/high16 v11, 0x3f400000    # 0.75f

    sget-object v16, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->SCALE_UP:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    move-object v6, v13

    move v9, v4

    move v10, v5

    const/4 v4, 0x0

    move-object/from16 v12, v16

    invoke-direct/range {v6 .. v12}, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;-><init>(FFFFFLcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;)V

    invoke-virtual {v13, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v13, v14}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-nez p5, :cond_7e

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_80

    :cond_7e
    move-object/from16 v5, p5

    :goto_80
    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v13, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    if-eq v0, v15, :cond_91

    sget-object v1, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->TOP_BOTTOM:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    if-ne v0, v1, :cond_8d

    goto :goto_91

    :cond_8d
    invoke-virtual {v13, v14}, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->setDirection(I)V

    goto :goto_94

    :cond_91
    :goto_91
    invoke-virtual {v13, v4}, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->setDirection(I)V

    :goto_94
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    aput-object v0, v3, v14

    return-object v3
.end method

.method public static flipTransition(Landroid/widget/ViewAnimator;Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;)V
    .registers 4

    const-wide/16 v0, 0x1f4

    invoke-static {p0, p1, v0, v1}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory;->flipTransition(Landroid/widget/ViewAnimator;Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;J)V

    return-void
.end method

.method public static flipTransition(Landroid/widget/ViewAnimator;Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;J)V
    .registers 10

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ge v2, v1, :cond_19

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->theOtherDirection()Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    move-result-object p1

    :cond_19
    move-object v2, p1

    const/4 v5, 0x0

    move-object v1, v3

    move-wide v3, p2

    invoke-static/range {v0 .. v5}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory;->flipAnimation(Landroid/view/View;Landroid/view/View;Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;JLandroid/view/animation/Interpolator;)[Landroid/view/animation/Animation;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p2, p1, p2

    invoke-virtual {p0, p2}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->showNext()V

    return-void
.end method

.method public static inFromLeftAnimation(JLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 13

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    if-nez p2, :cond_19

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :cond_19
    invoke-virtual {v9, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v9
.end method

.method public static inFromRightAnimation(JLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 13

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    if-nez p2, :cond_19

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :cond_19
    invoke-virtual {v9, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v9
.end method

.method public static inFromTopAnimation(JLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 13

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    if-nez p2, :cond_19

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :cond_19
    invoke-virtual {v9, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v9
.end method

.method public static outToLeftAnimation(JLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 13

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    if-nez p2, :cond_19

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :cond_19
    invoke-virtual {v9, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v9
.end method

.method public static outToRightAnimation(JLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 13

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    if-nez p2, :cond_19

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :cond_19
    invoke-virtual {v9, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v9
.end method

.method public static outToTopAnimation(JLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 13

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, -0x40800000    # -1.0f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    if-nez p2, :cond_19

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :cond_19
    invoke-virtual {v9, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v9
.end method
