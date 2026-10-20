###### Class com.google.android.material.shape.ShapeAppearanceModel.b (com.google.android.material.shape.ShapeAppearanceModel$b)
.class public final Lcom/google/android/material/shape/ShapeAppearanceModel$b;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/google/android/material/shape/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/google/android/material/shape/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/google/android/material/shape/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/google/android/material/shape/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private e:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private f:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private g:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private i:Lcom/google/android/material/shape/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private j:Lcom/google/android/material/shape/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private k:Lcom/google/android/material/shape/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private l:Lcom/google/android/material/shape/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->a:Lcom/google/android/material/shape/d;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->b:Lcom/google/android/material/shape/d;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->c:Lcom/google/android/material/shape/d;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->d:Lcom/google/android/material/shape/d;

    new-instance v0, Lcom/google/android/material/shape/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->e:Lcom/google/android/material/shape/c;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->f:Lcom/google/android/material/shape/c;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->g:Lcom/google/android/material/shape/c;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->h:Lcom/google/android/material/shape/c;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->i:Lcom/google/android/material/shape/f;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->j:Lcom/google/android/material/shape/f;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->k:Lcom/google/android/material/shape/f;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->l:Lcom/google/android/material/shape/f;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 4
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->a:Lcom/google/android/material/shape/d;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->b:Lcom/google/android/material/shape/d;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->c:Lcom/google/android/material/shape/d;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->d:Lcom/google/android/material/shape/d;

    new-instance v0, Lcom/google/android/material/shape/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->e:Lcom/google/android/material/shape/c;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->f:Lcom/google/android/material/shape/c;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->g:Lcom/google/android/material/shape/c;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->h:Lcom/google/android/material/shape/c;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->i:Lcom/google/android/material/shape/f;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->j:Lcom/google/android/material/shape/f;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->k:Lcom/google/android/material/shape/f;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->l:Lcom/google/android/material/shape/f;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->b:Lcom/google/android/material/shape/d;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->a:Lcom/google/android/material/shape/d;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->c:Lcom/google/android/material/shape/d;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->b:Lcom/google/android/material/shape/d;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->d:Lcom/google/android/material/shape/d;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->c:Lcom/google/android/material/shape/d;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/d;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->d:Lcom/google/android/material/shape/d;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->f:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->e:Lcom/google/android/material/shape/c;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->g:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->f:Lcom/google/android/material/shape/c;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->h:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->g:Lcom/google/android/material/shape/c;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->i:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->h:Lcom/google/android/material/shape/c;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->j:Lcom/google/android/material/shape/f;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->i:Lcom/google/android/material/shape/f;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->k:Lcom/google/android/material/shape/f;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->j:Lcom/google/android/material/shape/f;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->l:Lcom/google/android/material/shape/f;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->k:Lcom/google/android/material/shape/f;

    iget-object p1, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->m:Lcom/google/android/material/shape/f;

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->l:Lcom/google/android/material/shape/f;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/d;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->a:Lcom/google/android/material/shape/d;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/f;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->j:Lcom/google/android/material/shape/f;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/f;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->k:Lcom/google/android/material/shape/f;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/f;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->l:Lcom/google/android/material/shape/f;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/d;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->b:Lcom/google/android/material/shape/d;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/d;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->c:Lcom/google/android/material/shape/d;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/d;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->d:Lcom/google/android/material/shape/d;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/c;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->e:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/c;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->f:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/c;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->g:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/c;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->h:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method static synthetic l(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/f;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->i:Lcom/google/android/material/shape/f;

    return-object p0
.end method

.method private static n(Lcom/google/android/material/shape/d;)F
    .registers 2

    instance-of v0, p0, Lcom/google/android/material/shape/j;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/google/android/material/shape/j;

    iget p0, p0, Lcom/google/android/material/shape/j;->a:F

    return p0

    :cond_9
    instance-of v0, p0, Lcom/google/android/material/shape/e;

    if-eqz v0, :cond_12

    check-cast p0, Lcom/google/android/material/shape/e;

    iget p0, p0, Lcom/google/android/material/shape/e;->a:F

    return p0

    :cond_12
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method public A(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 3
    .param p1    # Lcom/google/android/material/shape/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->a:Lcom/google/android/material/shape/d;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->n(Lcom/google/android/material/shape/d;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->B(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    :cond_f
    return-object p0
.end method

.method public B(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 3
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->e:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public C(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 2
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->e:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public D(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 3
    .param p2    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->a(I)Lcom/google/android/material/shape/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->E(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->G(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p1

    return-object p1
.end method

.method public E(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 3
    .param p1    # Lcom/google/android/material/shape/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->b:Lcom/google/android/material/shape/d;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->n(Lcom/google/android/material/shape/d;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->F(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    :cond_f
    return-object p0
.end method

.method public F(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 3
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->f:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public G(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 2
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->f:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public m()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$b;Lcom/google/android/material/shape/ShapeAppearanceModel$a;)V

    return-object v0
.end method

.method public o(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 3
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->B(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->F(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->x(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->t(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 3
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->C(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->G(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->y(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->u(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p1

    return-object p1
.end method

.method public q(Lcom/google/android/material/shape/f;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 2
    .param p1    # Lcom/google/android/material/shape/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->k:Lcom/google/android/material/shape/f;

    return-object p0
.end method

.method public r(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 3
    .param p2    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->a(I)Lcom/google/android/material/shape/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->s(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->u(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p1

    return-object p1
.end method

.method public s(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 3
    .param p1    # Lcom/google/android/material/shape/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->d:Lcom/google/android/material/shape/d;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->n(Lcom/google/android/material/shape/d;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->t(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    :cond_f
    return-object p0
.end method

.method public t(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 3
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->h:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public u(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 2
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->h:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public v(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 3
    .param p2    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->a(I)Lcom/google/android/material/shape/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->w(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->y(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 3
    .param p1    # Lcom/google/android/material/shape/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->c:Lcom/google/android/material/shape/d;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->n(Lcom/google/android/material/shape/d;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->x(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    :cond_f
    return-object p0
.end method

.method public x(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 3
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->g:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public y(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 2
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->g:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public z(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 3
    .param p2    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->a(I)Lcom/google/android/material/shape/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->A(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->C(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p1

    return-object p1
.end method
