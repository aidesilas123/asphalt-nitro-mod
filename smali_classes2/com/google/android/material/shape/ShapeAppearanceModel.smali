###### Class com.google.android.material.shape.ShapeAppearanceModel (com.google.android.material.shape.ShapeAppearanceModel)
.class public Lcom/google/android/material/shape/ShapeAppearanceModel;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearanceModel$c;,
        Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/material/shape/c;


# instance fields
.field b:Lcom/google/android/material/shape/d;

.field c:Lcom/google/android/material/shape/d;

.field d:Lcom/google/android/material/shape/d;

.field e:Lcom/google/android/material/shape/d;

.field f:Lcom/google/android/material/shape/c;

.field g:Lcom/google/android/material/shape/c;

.field h:Lcom/google/android/material/shape/c;

.field i:Lcom/google/android/material/shape/c;

.field j:Lcom/google/android/material/shape/f;

.field k:Lcom/google/android/material/shape/f;

.field l:Lcom/google/android/material/shape/f;

.field m:Lcom/google/android/material/shape/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/material/shape/i;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/i;-><init>(F)V

    sput-object v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->a:Lcom/google/android/material/shape/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->b:Lcom/google/android/material/shape/d;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->c:Lcom/google/android/material/shape/d;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->d:Lcom/google/android/material/shape/d;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/d;

    new-instance v0, Lcom/google/android/material/shape/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->f:Lcom/google/android/material/shape/c;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->g:Lcom/google/android/material/shape/c;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->h:Lcom/google/android/material/shape/c;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->i:Lcom/google/android/material/shape/c;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->j:Lcom/google/android/material/shape/f;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->k:Lcom/google/android/material/shape/f;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->l:Lcom/google/android/material/shape/f;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->m:Lcom/google/android/material/shape/f;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)V
    .registers 3
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->a(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->b:Lcom/google/android/material/shape/d;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->e(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->c:Lcom/google/android/material/shape/d;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->f(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->d:Lcom/google/android/material/shape/d;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->g(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/d;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->h(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->f:Lcom/google/android/material/shape/c;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->i(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->g:Lcom/google/android/material/shape/c;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->j(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->h:Lcom/google/android/material/shape/c;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->k(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->i:Lcom/google/android/material/shape/c;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->l(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->j:Lcom/google/android/material/shape/f;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->b(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->k:Lcom/google/android/material/shape/f;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->c(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->l:Lcom/google/android/material/shape/f;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->d(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->m:Lcom/google/android/material/shape/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel$b;Lcom/google/android/material/shape/ShapeAppearanceModel$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)V

    return-void
.end method

.method private static a(Landroid/content/Context;III)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 5
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/shape/a;

    int-to-float p3, p3

    invoke-direct {v0, p3}, Lcom/google/android/material/shape/a;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->b(Landroid/content/Context;IILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;IILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 10
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p2, :cond_9

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    :cond_9
    sget-object p2, Lcom/google/android/material/R$styleable;->p4:[I

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_f
    sget p1, Lcom/google/android/material/R$styleable;->q4:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget p2, Lcom/google/android/material/R$styleable;->t4:I

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget v0, Lcom/google/android/material/R$styleable;->u4:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v1, Lcom/google/android/material/R$styleable;->s4:I

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Lcom/google/android/material/R$styleable;->r4:I

    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget v2, Lcom/google/android/material/R$styleable;->v4:I

    invoke-static {p0, v2, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->h(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/c;

    move-result-object p3

    sget v2, Lcom/google/android/material/R$styleable;->y4:I

    invoke-static {p0, v2, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->h(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/c;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$styleable;->z4:I

    invoke-static {p0, v3, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->h(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/c;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$styleable;->x4:I

    invoke-static {p0, v4, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->h(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/c;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$styleable;->w4:I

    invoke-static {p0, v5, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->h(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/c;

    move-result-object p3

    new-instance v5, Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    invoke-direct {v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;-><init>()V

    invoke-virtual {v5, p2, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->z(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p2

    invoke-virtual {p2, v0, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->D(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p2

    invoke-virtual {p2, v1, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->v(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->r(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p1
    :try_end_61
    .catchall {:try_start_f .. :try_end_61} :catchall_65

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_65
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static builder()Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;-><init>()V

    return-object v0
.end method

.method public static builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->a(Landroid/content/Context;III)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p0

    return-object p0
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p0

    return-object p0
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/shape/a;

    int-to-float p4, p4

    invoke-direct {v0, p4}, Lcom/google/android/material/shape/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p0

    return-object p0
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/material/R$styleable;->w3:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$styleable;->x3:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    sget v0, Lcom/google/android/material/R$styleable;->y3:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, p2, p3, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->b(Landroid/content/Context;IILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p0

    return-object p0
.end method

.method private static h(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/c;
    .registers 5
    .param p2    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_7

    return-object p2

    :cond_7
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_21

    new-instance p2, Lcom/google/android/material/shape/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lcom/google/android/material/shape/a;-><init>(F)V

    return-object p2

    :cond_21
    const/4 p0, 0x6

    if-ne v0, p0, :cond_30

    new-instance p0, Lcom/google/android/material/shape/i;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/i;-><init>(F)V

    return-object p0

    :cond_30
    return-object p2
.end method


# virtual methods
.method public c()Lcom/google/android/material/shape/f;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->l:Lcom/google/android/material/shape/f;

    return-object v0
.end method

.method public d()Lcom/google/android/material/shape/d;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/d;

    return-object v0
.end method

.method public e()Lcom/google/android/material/shape/c;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->i:Lcom/google/android/material/shape/c;

    return-object v0
.end method

.method public f()Lcom/google/android/material/shape/d;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->d:Lcom/google/android/material/shape/d;

    return-object v0
.end method

.method public g()Lcom/google/android/material/shape/c;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->h:Lcom/google/android/material/shape/c;

    return-object v0
.end method

.method public i()Lcom/google/android/material/shape/f;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->m:Lcom/google/android/material/shape/f;

    return-object v0
.end method

.method public j()Lcom/google/android/material/shape/f;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->k:Lcom/google/android/material/shape/f;

    return-object v0
.end method

.method public k()Lcom/google/android/material/shape/f;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->j:Lcom/google/android/material/shape/f;

    return-object v0
.end method

.method public l()Lcom/google/android/material/shape/d;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->b:Lcom/google/android/material/shape/d;

    return-object v0
.end method

.method public m()Lcom/google/android/material/shape/c;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->f:Lcom/google/android/material/shape/c;

    return-object v0
.end method

.method public n()Lcom/google/android/material/shape/d;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->c:Lcom/google/android/material/shape/d;

    return-object v0
.end method

.method public o()Lcom/google/android/material/shape/c;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->g:Lcom/google/android/material/shape/c;

    return-object v0
.end method

.method public p(Landroid/graphics/RectF;)Z
    .registers 7
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-class v0, Lcom/google/android/material/shape/f;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->m:Lcom/google/android/material/shape/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->k:Lcom/google/android/material/shape/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->j:Lcom/google/android/material/shape/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->l:Lcom/google/android/material/shape/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->f:Lcom/google/android/material/shape/c;

    invoke-interface {v1, p1}, Lcom/google/android/material/shape/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->g:Lcom/google/android/material/shape/c;

    invoke-interface {v4, p1}, Lcom/google/android/material/shape/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_5d

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->i:Lcom/google/android/material/shape/c;

    invoke-interface {v4, p1}, Lcom/google/android/material/shape/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_5d

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->h:Lcom/google/android/material/shape/c;

    invoke-interface {v4, p1}, Lcom/google/android/material/shape/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_5d

    const/4 p1, 0x1

    goto :goto_5e

    :cond_5d
    const/4 p1, 0x0

    :goto_5e
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->c:Lcom/google/android/material/shape/d;

    instance-of v1, v1, Lcom/google/android/material/shape/j;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->b:Lcom/google/android/material/shape/d;

    instance-of v1, v1, Lcom/google/android/material/shape/j;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->d:Lcom/google/android/material/shape/d;

    instance-of v1, v1, Lcom/google/android/material/shape/j;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/d;

    instance-of v1, v1, Lcom/google/android/material/shape/j;

    if-eqz v1, :cond_78

    const/4 v1, 0x1

    goto :goto_79

    :cond_78
    const/4 v1, 0x0

    :goto_79
    if-eqz v0, :cond_80

    if-eqz p1, :cond_80

    if-eqz v1, :cond_80

    goto :goto_81

    :cond_80
    const/4 v2, 0x0

    :goto_81
    return v2
.end method

.method public q()Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    invoke-direct {v0, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-object v0
.end method

.method public r(F)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->q()Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->o(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->m()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    return-object p1
.end method

.method public s(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->q()Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->p(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->m()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcom/google/android/material/shape/ShapeAppearanceModel$c;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 4
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->q()Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->m()Lcom/google/android/material/shape/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$c;->a(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->C(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->o()Lcom/google/android/material/shape/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$c;->a(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->G(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->e()Lcom/google/android/material/shape/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$c;->a(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->u(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->g()Lcom/google/android/material/shape/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$c;->a(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->y(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->m()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    return-object p1
.end method
