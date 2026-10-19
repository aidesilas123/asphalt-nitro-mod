###### Class com.google.android.material.shape.k (com.google.android.material.shape.k)
.class public Lcom/google/android/material/shape/k;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/k$d;,
        Lcom/google/android/material/shape/k$e;,
        Lcom/google/android/material/shape/k$f;,
        Lcom/google/android/material/shape/k$b;,
        Lcom/google/android/material/shape/k$c;,
        Lcom/google/android/material/shape/k$g;
    }
.end annotation


# instance fields
.field public a:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/k$f;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/k$g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/k;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/k;->h:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/shape/k;->n(FF)V

    return-void
.end method

.method private b(F)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/material/shape/k;->g()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/google/android/material/shape/k;->g()F

    move-result v0

    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1a

    return-void

    :cond_1a
    new-instance v1, Lcom/google/android/material/shape/k$d;

    invoke-virtual {p0}, Lcom/google/android/material/shape/k;->i()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/shape/k;->j()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/shape/k;->i()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/shape/k;->j()F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/material/shape/k$d;-><init>(FFFF)V

    invoke-direct {p0}, Lcom/google/android/material/shape/k;->g()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/shape/k$d;->f(Lcom/google/android/material/shape/k$d;F)V

    invoke-static {v1, v0}, Lcom/google/android/material/shape/k$d;->g(Lcom/google/android/material/shape/k$d;F)V

    iget-object v0, p0, Lcom/google/android/material/shape/k;->h:Ljava/util/List;

    new-instance v2, Lcom/google/android/material/shape/k$b;

    invoke-direct {v2, v1}, Lcom/google/android/material/shape/k$b;-><init>(Lcom/google/android/material/shape/k$d;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/k;->p(F)V

    return-void
.end method

.method private c(Lcom/google/android/material/shape/k$g;FF)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/k;->b(F)V

    iget-object p2, p0, Lcom/google/android/material/shape/k;->h:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p3}, Lcom/google/android/material/shape/k;->p(F)V

    return-void
.end method

.method private g()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/shape/k;->e:F

    return v0
.end method

.method private h()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/shape/k;->f:F

    return v0
.end method

.method private p(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/shape/k;->e:F

    return-void
.end method

.method private q(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/shape/k;->f:F

    return-void
.end method

.method private r(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/shape/k;->c:F

    return-void
.end method

.method private s(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/shape/k;->d:F

    return-void
.end method

.method private t(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/shape/k;->a:F

    return-void
.end method

.method private u(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/shape/k;->b:F

    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .registers 11

    new-instance v0, Lcom/google/android/material/shape/k$d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/material/shape/k$d;-><init>(FFFF)V

    invoke-static {v0, p5}, Lcom/google/android/material/shape/k$d;->f(Lcom/google/android/material/shape/k$d;F)V

    invoke-static {v0, p6}, Lcom/google/android/material/shape/k$d;->g(Lcom/google/android/material/shape/k$d;F)V

    iget-object v1, p0, Lcom/google/android/material/shape/k;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/material/shape/k$b;

    invoke-direct {v1, v0}, Lcom/google/android/material/shape/k$b;-><init>(Lcom/google/android/material/shape/k$d;)V

    add-float v0, p5, p6

    const/4 v2, 0x0

    cmpg-float p6, p6, v2

    if-gez p6, :cond_1e

    const/4 p6, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p6, 0x0

    :goto_1f
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43340000    # 180.0f

    if-eqz p6, :cond_27

    add-float/2addr p5, v3

    rem-float/2addr p5, v2

    :cond_27
    if-eqz p6, :cond_2c

    add-float/2addr v3, v0

    rem-float/2addr v3, v2

    goto :goto_2d

    :cond_2c
    move v3, v0

    :goto_2d
    invoke-direct {p0, v1, p5, v3}, Lcom/google/android/material/shape/k;->c(Lcom/google/android/material/shape/k$g;FF)V

    add-float p5, p1, p3

    const/high16 p6, 0x3f000000    # 0.5f

    mul-float p5, p5, p6

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float p3, p3, v2

    add-float/2addr p5, p3

    invoke-direct {p0, p5}, Lcom/google/android/material/shape/k;->r(F)V

    add-float p3, p2, p4

    mul-float p3, p3, p6

    sub-float/2addr p4, p2

    div-float/2addr p4, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p4, p4, p1

    add-float/2addr p3, p4

    invoke-direct {p0, p3}, Lcom/google/android/material/shape/k;->s(F)V

    return-void
.end method

.method public d(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/material/shape/k;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/google/android/material/shape/k;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/shape/k$f;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/material/shape/k$f;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/material/shape/k;->i:Z

    return v0
.end method

.method f(Landroid/graphics/Matrix;)Lcom/google/android/material/shape/k$g;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/material/shape/k;->h()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/k;->b(F)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/shape/k;->h:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/google/android/material/shape/k$a;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/material/shape/k$a;-><init>(Lcom/google/android/material/shape/k;Ljava/util/List;Landroid/graphics/Matrix;)V

    return-object v1
.end method

.method i()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/shape/k;->c:F

    return v0
.end method

.method j()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/shape/k;->d:F

    return v0
.end method

.method k()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/shape/k;->a:F

    return v0
.end method

.method l()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/shape/k;->b:F

    return v0
.end method

.method public m(FF)V
    .registers 7

    new-instance v0, Lcom/google/android/material/shape/k$e;

    invoke-direct {v0}, Lcom/google/android/material/shape/k$e;-><init>()V

    invoke-static {v0, p1}, Lcom/google/android/material/shape/k$e;->c(Lcom/google/android/material/shape/k$e;F)F

    invoke-static {v0, p2}, Lcom/google/android/material/shape/k$e;->e(Lcom/google/android/material/shape/k$e;F)F

    iget-object v1, p0, Lcom/google/android/material/shape/k;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/material/shape/k$c;

    invoke-virtual {p0}, Lcom/google/android/material/shape/k;->i()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/shape/k;->j()F

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/shape/k$c;-><init>(Lcom/google/android/material/shape/k$e;FF)V

    invoke-virtual {v1}, Lcom/google/android/material/shape/k$c;->c()F

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/google/android/material/shape/k$c;->c()F

    move-result v3

    add-float/2addr v3, v2

    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/material/shape/k;->c(Lcom/google/android/material/shape/k$g;FF)V

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/k;->r(F)V

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/k;->s(F)V

    return-void
.end method

.method public n(FF)V
    .registers 5

    const/high16 v0, 0x43870000    # 270.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/shape/k;->o(FFFF)V

    return-void
.end method

.method public o(FFFF)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/k;->t(F)V

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/k;->u(F)V

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/k;->r(F)V

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/k;->s(F)V

    invoke-direct {p0, p3}, Lcom/google/android/material/shape/k;->p(F)V

    add-float/2addr p3, p4

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p3, p1

    invoke-direct {p0, p3}, Lcom/google/android/material/shape/k;->q(F)V

    iget-object p1, p0, Lcom/google/android/material/shape/k;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/google/android/material/shape/k;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/shape/k;->i:Z

    return-void
.end method
