###### Class com.google.android.material.progressindicator.h (com.google.android.material.progressindicator.h)
.class final Lcom/google/android/material/progressindicator/h;
.super Lcom/google/android/material/progressindicator/f;
.source "LinearIndeterminateContiguousAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/f<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/h;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Landroid/animation/ObjectAnimator;

.field private f:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

.field private final g:Lcom/google/android/material/progressindicator/a;

.field private h:I

.field private i:Z

.field private j:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/material/progressindicator/h$b;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/h$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/h;->d:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .registers 3
    .param p1    # Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/f;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/progressindicator/h;->h:I

    iput-object p1, p0, Lcom/google/android/material/progressindicator/h;->g:Lcom/google/android/material/progressindicator/a;

    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/h;->f:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    return-void
.end method

.method static synthetic e(Lcom/google/android/material/progressindicator/h;)I
    .registers 1

    iget p0, p0, Lcom/google/android/material/progressindicator/h;->h:I

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/progressindicator/h;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/material/progressindicator/h;->h:I

    return p1
.end method

.method static synthetic g(Lcom/google/android/material/progressindicator/h;)Lcom/google/android/material/progressindicator/a;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/progressindicator/h;->g:Lcom/google/android/material/progressindicator/a;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/progressindicator/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/h;->i:Z

    return p1
.end method

.method static synthetic i(Lcom/google/android/material/progressindicator/h;)F
    .registers 1

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/h;->j()F

    move-result p0

    return p0
.end method

.method private j()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/progressindicator/h;->j:F

    return v0
.end method

.method private k()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->e:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_2d

    sget-object v0, Lcom/google/android/material/progressindicator/h;->d:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_2e

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/h;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->e:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->e:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->e:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/h$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/h$a;-><init>(Lcom/google/android/material/progressindicator/h;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2d
    return-void

    :array_2e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private l()V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/h;->i:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->b:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->c:[I

    const/4 v1, 0x2

    const/4 v2, 0x1

    aget v3, v0, v2

    aput v3, v0, v1

    const/4 v1, 0x0

    aget v3, v0, v1

    aput v3, v0, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/h;->g:Lcom/google/android/material/progressindicator/a;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/a;->c:[I

    iget v3, p0, Lcom/google/android/material/progressindicator/h;->h:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/material/progressindicator/f;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v2

    aput v2, v0, v1

    iput-boolean v1, p0, Lcom/google/android/material/progressindicator/h;->i:Z

    :cond_32
    return-void
.end method

.method private o(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->b:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v0, 0x29b

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/material/progressindicator/f;->b(III)F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->b:[F

    iget-object v1, p0, Lcom/google/android/material/progressindicator/h;->f:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v1, p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const v0, 0x3eff9dbf

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->b:[F

    iget-object v1, p0, Lcom/google/android/material/progressindicator/h;->f:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v1, p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result p1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    iget-object p1, p0, Lcom/google/android/material/progressindicator/f;->b:[F

    const/4 v0, 0x5

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->e:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method public d()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/h;->k()V

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/h;->m()V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method m()V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/h;->i:Z

    iput v0, p0, Lcom/google/android/material/progressindicator/h;->h:I

    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->c:[I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/h;->g:Lcom/google/android/material/progressindicator/a;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/a;->c:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/f;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method n(F)V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/google/android/material/progressindicator/h;->j:F

    const v0, 0x43a68000    # 333.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/h;->o(I)V

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/h;->l()V

    iget-object p1, p0, Lcom/google/android/material/progressindicator/f;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

###### Class com.google.android.material.progressindicator.h.a (com.google.android.material.progressindicator.h$a)
.class Lcom/google/android/material/progressindicator/h$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LinearIndeterminateContiguousAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/h;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/progressindicator/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/h;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/progressindicator/h$a;->a:Lcom/google/android/material/progressindicator/h;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/google/android/material/progressindicator/h$a;->a:Lcom/google/android/material/progressindicator/h;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/h;->e(Lcom/google/android/material/progressindicator/h;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/h$a;->a:Lcom/google/android/material/progressindicator/h;

    invoke-static {v2}, Lcom/google/android/material/progressindicator/h;->g(Lcom/google/android/material/progressindicator/h;)Lcom/google/android/material/progressindicator/a;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/material/progressindicator/a;->c:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/h;->f(Lcom/google/android/material/progressindicator/h;I)I

    iget-object p1, p0, Lcom/google/android/material/progressindicator/h$a;->a:Lcom/google/android/material/progressindicator/h;

    invoke-static {p1, v1}, Lcom/google/android/material/progressindicator/h;->h(Lcom/google/android/material/progressindicator/h;Z)Z

    return-void
.end method

###### Class com.google.android.material.progressindicator.h.b (com.google.android.material.progressindicator.h$b)
.class Lcom/google/android/material/progressindicator/h$b;
.super Landroid/util/Property;
.source "LinearIndeterminateContiguousAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/progressindicator/h;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/progressindicator/h;)Ljava/lang/Float;
    .registers 2

    invoke-static {p1}, Lcom/google/android/material/progressindicator/h;->i(Lcom/google/android/material/progressindicator/h;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/android/material/progressindicator/h;Ljava/lang/Float;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/progressindicator/h;->n(F)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/material/progressindicator/h;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/h$b;->a(Lcom/google/android/material/progressindicator/h;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/google/android/material/progressindicator/h;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/h$b;->b(Lcom/google/android/material/progressindicator/h;Ljava/lang/Float;)V

    return-void
.end method
