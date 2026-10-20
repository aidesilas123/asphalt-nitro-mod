###### Class com.google.android.material.progressindicator.i (com.google.android.material.progressindicator.i)
.class final Lcom/google/android/material/progressindicator/i;
.super Lcom/google/android/material/progressindicator/f;
.source "LinearIndeterminateDisjointAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/f<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:[I

.field private static final e:[I

.field private static final f:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/i;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private g:Landroid/animation/ObjectAnimator;

.field private h:Landroid/animation/ObjectAnimator;

.field private final i:[Landroid/view/animation/Interpolator;

.field private final j:Lcom/google/android/material/progressindicator/a;

.field private k:I

.field private l:Z

.field private m:F

.field n:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_1c

    sput-object v1, Lcom/google/android/material/progressindicator/i;->d:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/google/android/material/progressindicator/i;->e:[I

    new-instance v0, Lcom/google/android/material/progressindicator/i$c;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/i$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/i;->f:Landroid/util/Property;

    return-void

    nop

    :array_1c
    .array-data 4
        0x215
        0x237
        0x352
        0x2ee
    .end array-data

    :array_28
    .array-data 4
        0x4f3
        0x3e8
        0x14d
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/f;-><init>(I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/progressindicator/i;->k:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/material/progressindicator/i;->n:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    iput-object p2, p0, Lcom/google/android/material/progressindicator/i;->j:Lcom/google/android/material/progressindicator/a;

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/view/animation/Interpolator;

    sget v2, Lcom/google/android/material/R$animator;->a:I

    invoke-static {p1, v2}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    aput-object v2, p2, v1

    sget v1, Lcom/google/android/material/R$animator;->b:I

    invoke-static {p1, v1}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p2, v2

    sget v1, Lcom/google/android/material/R$animator;->c:I

    invoke-static {p1, v1}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    aput-object v1, p2, v0

    sget v0, Lcom/google/android/material/R$animator;->d:I

    invoke-static {p1, v0}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, p2, v0

    iput-object p2, p0, Lcom/google/android/material/progressindicator/i;->i:[Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic e(Lcom/google/android/material/progressindicator/i;)I
    .registers 1

    iget p0, p0, Lcom/google/android/material/progressindicator/i;->k:I

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/progressindicator/i;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/material/progressindicator/i;->k:I

    return p1
.end method

.method static synthetic g(Lcom/google/android/material/progressindicator/i;)Lcom/google/android/material/progressindicator/a;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/progressindicator/i;->j:Lcom/google/android/material/progressindicator/a;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/progressindicator/i;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/i;->l:Z

    return p1
.end method

.method static synthetic i(Lcom/google/android/material/progressindicator/i;)F
    .registers 1

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/i;->j()F

    move-result p0

    return p0
.end method

.method private j()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/progressindicator/i;->m:F

    return v0
.end method

.method private k()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->g:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    const-wide/16 v2, 0x708

    if-nez v0, :cond_2d

    sget-object v0, Lcom/google/android/material/progressindicator/i;->f:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_54

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/i;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->g:Landroid/animation/ObjectAnimator;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->g:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/google/android/material/progressindicator/i$a;

    invoke-direct {v4, p0}, Lcom/google/android/material/progressindicator/i$a;-><init>(Lcom/google/android/material/progressindicator/i;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2d
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->h:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_53

    sget-object v0, Lcom/google/android/material/progressindicator/i;->f:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/i;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->h:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/i$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/i$b;-><init>(Lcom/google/android/material/progressindicator/i;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_53
    return-void

    :array_54
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private l()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/i;->l:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->c:[I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->j:Lcom/google/android/material/progressindicator/a;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/a;->c:[I

    iget v2, p0, Lcom/google/android/material/progressindicator/i;->k:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/f;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/i;->l:Z

    :cond_1e
    return-void
.end method

.method private o(I)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2a

    sget-object v1, Lcom/google/android/material/progressindicator/i;->e:[I

    aget v1, v1, v0

    sget-object v2, Lcom/google/android/material/progressindicator/i;->d:[I

    aget v2, v2, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/material/progressindicator/f;->b(III)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/i;->i:[Landroid/view/animation/Interpolator;

    aget-object v2, v2, v0

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/f;->b:[F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->g:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method public d()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/i;->k()V

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/i;->m()V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method m()V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/progressindicator/i;->k:I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->j:Lcom/google/android/material/progressindicator/a;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/a;->c:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/progressindicator/f;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/f;->c:[I

    aput v1, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    return-void
.end method

.method n(F)V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/google/android/material/progressindicator/i;->m:F

    const/high16 v0, 0x44e10000    # 1800.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/i;->o(I)V

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/i;->l()V

    iget-object p1, p0, Lcom/google/android/material/progressindicator/f;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
