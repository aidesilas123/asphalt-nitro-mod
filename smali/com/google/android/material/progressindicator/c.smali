###### Class com.google.android.material.progressindicator.c (com.google.android.material.progressindicator.c)
.class final Lcom/google/android/material/progressindicator/c;
.super Lcom/google/android/material/progressindicator/f;
.source "CircularIndeterminateAnimatorDelegate.java"


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

.field private static final f:[I

.field private static final g:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/c;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/c;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private i:Landroid/animation/ObjectAnimator;

.field private j:Landroid/animation/ObjectAnimator;

.field private final k:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

.field private final l:Lcom/google/android/material/progressindicator/a;

.field private m:I

.field private n:F

.field private o:F

.field p:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Float;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_2c

    sput-object v2, Lcom/google/android/material/progressindicator/c;->d:[I

    new-array v2, v1, [I

    fill-array-data v2, :array_38

    sput-object v2, Lcom/google/android/material/progressindicator/c;->e:[I

    new-array v1, v1, [I

    fill-array-data v1, :array_44

    sput-object v1, Lcom/google/android/material/progressindicator/c;->f:[I

    new-instance v1, Lcom/google/android/material/progressindicator/c$c;

    const-string v2, "animationFraction"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/progressindicator/c$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/progressindicator/c;->g:Landroid/util/Property;

    new-instance v1, Lcom/google/android/material/progressindicator/c$d;

    const-string v2, "completeEndFraction"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/progressindicator/c$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/progressindicator/c;->h:Landroid/util/Property;

    return-void

    nop

    :array_2c
    .array-data 4
        0x0
        0x546
        0xa8c
        0xfd2
    .end array-data

    :array_38
    .array-data 4
        0x29b
        0x7e1
        0xd27
        0x126d
    .end array-data

    :array_44
    .array-data 4
        0x3e8
        0x92e
        0xe74
        0x13ba
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .registers 3
    .param p1    # Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/f;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/progressindicator/c;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/c;->p:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    iput-object p1, p0, Lcom/google/android/material/progressindicator/c;->l:Lcom/google/android/material/progressindicator/a;

    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/c;->k:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    return-void
.end method

.method static synthetic e(Lcom/google/android/material/progressindicator/c;)I
    .registers 1

    iget p0, p0, Lcom/google/android/material/progressindicator/c;->m:I

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/progressindicator/c;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/material/progressindicator/c;->m:I

    return p1
.end method

.method static synthetic g(Lcom/google/android/material/progressindicator/c;)Lcom/google/android/material/progressindicator/a;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/progressindicator/c;->l:Lcom/google/android/material/progressindicator/a;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/progressindicator/c;)F
    .registers 1

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/c;->k()F

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/google/android/material/progressindicator/c;)F
    .registers 1

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/c;->l()F

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/google/android/material/progressindicator/c;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/c;->q(F)V

    return-void
.end method

.method private k()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/progressindicator/c;->n:F

    return v0
.end method

.method private l()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/progressindicator/c;->o:F

    return v0
.end method

.method private m()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/material/progressindicator/c;->i:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    if-nez v0, :cond_2d

    sget-object v0, Lcom/google/android/material/progressindicator/c;->g:Landroid/util/Property;

    new-array v2, v1, [F

    fill-array-data v2, :array_56

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/c;->i:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1518

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/c;->i:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/c;->i:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/c;->i:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/google/android/material/progressindicator/c$a;

    invoke-direct {v2, p0}, Lcom/google/android/material/progressindicator/c$a;-><init>(Lcom/google/android/material/progressindicator/c;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2d
    iget-object v0, p0, Lcom/google/android/material/progressindicator/c;->j:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_54

    sget-object v0, Lcom/google/android/material/progressindicator/c;->h:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_5e

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/c;->j:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/c;->j:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/c;->k:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/c;->j:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/c$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/c$b;-><init>(Lcom/google/android/material/progressindicator/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_54
    return-void

    nop

    :array_56
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private n(I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_65

    sget-object v2, Lcom/google/android/material/progressindicator/c;->f:[I

    aget v2, v2, v1

    const/16 v3, 0x14d

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/material/progressindicator/f;->b(III)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_62

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_62

    iget p1, p0, Lcom/google/android/material/progressindicator/c;->m:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/google/android/material/progressindicator/c;->l:Lcom/google/android/material/progressindicator/a;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/a;->c:[I

    array-length v3, p1

    rem-int/2addr v1, v3

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    rem-int/2addr v3, v4

    aget p1, p1, v1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/f;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result p1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/c;->l:Lcom/google/android/material/progressindicator/a;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/a;->c:[I

    aget v1, v1, v3

    iget-object v3, p0, Lcom/google/android/material/progressindicator/f;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/progressindicator/c;->k:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v3, v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/progressindicator/f;->c:[I

    invoke-static {}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v2, p1, v1}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v3, v0

    goto :goto_65

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_65
    :goto_65
    return-void
.end method

.method private q(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/progressindicator/c;->o:F

    return-void
.end method

.method private r(I)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->b:[F

    iget v1, p0, Lcom/google/android/material/progressindicator/c;->n:F

    const/high16 v2, 0x44be0000    # 1520.0f

    mul-float v3, v1, v2

    const/high16 v4, -0x3e600000    # -20.0f

    add-float/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v0, v4

    mul-float v1, v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v0, 0x0

    :goto_14
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4c

    sget-object v1, Lcom/google/android/material/progressindicator/c;->d:[I

    aget v1, v1, v0

    const/16 v3, 0x29b

    invoke-virtual {p0, p1, v1, v3}, Lcom/google/android/material/progressindicator/f;->b(III)F

    move-result v1

    iget-object v5, p0, Lcom/google/android/material/progressindicator/f;->b:[F

    aget v6, v5, v2

    iget-object v7, p0, Lcom/google/android/material/progressindicator/c;->k:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v7, v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v7, 0x437a0000    # 250.0f

    mul-float v1, v1, v7

    add-float/2addr v6, v1

    aput v6, v5, v2

    sget-object v1, Lcom/google/android/material/progressindicator/c;->e:[I

    aget v1, v1, v0

    invoke-virtual {p0, p1, v1, v3}, Lcom/google/android/material/progressindicator/f;->b(III)F

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/progressindicator/f;->b:[F

    aget v5, v3, v4

    iget-object v6, p0, Lcom/google/android/material/progressindicator/c;->k:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v6, v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float v1, v1, v7

    add-float/2addr v5, v1

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_4c
    iget-object p1, p0, Lcom/google/android/material/progressindicator/f;->b:[F

    aget v0, p1, v4

    aget v1, p1, v2

    aget v3, p1, v4

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/google/android/material/progressindicator/c;->o:F

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    aput v0, p1, v4

    aget v0, p1, v4

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    aput v0, p1, v4

    aget v0, p1, v2

    div-float/2addr v0, v1

    aput v0, p1, v2

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/progressindicator/c;->i:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method d()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/c;->m()V

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/c;->o()V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/c;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method o()V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/progressindicator/c;->m:I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/f;->c:[I

    iget-object v2, p0, Lcom/google/android/material/progressindicator/c;->l:Lcom/google/android/material/progressindicator/a;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/a;->c:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/material/progressindicator/f;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/progressindicator/c;->o:F

    return-void
.end method

.method p(F)V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/google/android/material/progressindicator/c;->n:F

    const v0, 0x45a8c000    # 5400.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/c;->r(I)V

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/c;->n(I)V

    iget-object p1, p0, Lcom/google/android/material/progressindicator/f;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
