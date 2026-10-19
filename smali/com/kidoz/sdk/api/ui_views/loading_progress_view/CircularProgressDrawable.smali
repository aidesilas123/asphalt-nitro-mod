###### Class com.kidoz.sdk.api.ui_views.loading_progress_view.CircularProgressDrawable (com.kidoz.sdk.api.ui_views.loading_progress_view.CircularProgressDrawable)
.class public Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ANGLE_ANIMATOR_DURATION:I = 0x7d0

.field private static final ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MIN_SWEEP_ANGLE:I = 0x1e

.field private static final SWEEP_ANIMATOR_DURATION:I = 0x258

.field private static final SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final fBounds:Landroid/graphics/RectF;

.field private mAngleProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mBorderWidth:F

.field private mCurrentGlobalAngle:F

.field private mCurrentGlobalAngleOffset:F

.field private mCurrentSweepAngle:F

.field private mModeAppearing:Z

.field private mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

.field private mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

.field private mPaint:Landroid/graphics/Paint;

.field private mRunning:Z

.field private mSweepProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 6

    const-class v0, Ljava/lang/Float;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable$1;

    const-string v2, "angle"

    invoke-direct {v1, p0, v0, v2}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable$1;-><init>(Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mAngleProperty:Landroid/util/Property;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable$2;

    const-string v2, "arc"

    invoke-direct {v1, p0, v0, v2}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable$2;-><init>(Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mSweepProperty:Landroid/util/Property;

    iput p2, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mBorderWidth:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->setupAnimations()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->toggleAppearingMode()V

    return-void
.end method

.method private setupAnimations()V
    .registers 7

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mAngleProperty:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mSweepProperty:Landroid/util/Property;

    new-array v3, v1, [F

    const/high16 v5, 0x43960000    # 300.0f

    aput v5, v3, v4

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable$3;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable$3;-><init>(Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private toggleAppearingMode()V
    .registers 3

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mModeAppearing:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mModeAppearing:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mCurrentGlobalAngleOffset:F

    const/high16 v1, 0x42700000    # 60.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mCurrentGlobalAngleOffset:F

    :cond_12
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mCurrentGlobalAngle:F

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mCurrentGlobalAngleOffset:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mCurrentSweepAngle:F

    iget-boolean v2, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mModeAppearing:Z

    const/high16 v3, 0x41f00000    # 30.0f

    if-nez v2, :cond_13

    add-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, v1

    sub-float/2addr v2, v3

    goto :goto_15

    :cond_13
    add-float v2, v1, v3

    :goto_15
    move v5, v0

    move v6, v2

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getCurrentGlobalAngle()F
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mCurrentGlobalAngle:F

    return v0
.end method

.method public getCurrentSweepAngle()F
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mCurrentSweepAngle:F

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mBorderWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    add-float/2addr v1, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    div-float v5, v2, v3

    sub-float/2addr v1, v5

    sub-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    div-float v5, v2, v3

    add-float/2addr v1, v5

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    sub-float/2addr p1, v4

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setCurrentGlobalAngle(F)V
    .registers 2

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mCurrentGlobalAngle:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCurrentSweepAngle(F)V
    .registers 2

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mCurrentSweepAngle:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setPaintColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public start()V
    .registers 2

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mRunning:Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .registers 2

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mRunning:Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
