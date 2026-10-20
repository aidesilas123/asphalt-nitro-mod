###### Class com.google.android.material.color.d.c (com.google.android.material.color.d$c)
.class public Lcom/google/android/material/color/d$c;
.super Ljava/lang/Object;
.source "DynamicColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private b:Lcom/google/android/material/color/DynamicColors$f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/google/android/material/color/DynamicColors$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/material/color/d;->a()Lcom/google/android/material/color/DynamicColors$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/d$c;->b:Lcom/google/android/material/color/DynamicColors$f;

    invoke-static {}, Lcom/google/android/material/color/d;->b()Lcom/google/android/material/color/DynamicColors$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/d$c;->c:Lcom/google/android/material/color/DynamicColors$e;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/color/d$c;)I
    .registers 1

    iget p0, p0, Lcom/google/android/material/color/d$c;->a:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/color/d$c;)Lcom/google/android/material/color/DynamicColors$f;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/color/d$c;->b:Lcom/google/android/material/color/DynamicColors$f;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/color/d$c;)Lcom/google/android/material/color/DynamicColors$e;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/color/d$c;->c:Lcom/google/android/material/color/DynamicColors$e;

    return-object p0
.end method


# virtual methods
.method public d()Lcom/google/android/material/color/d;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/color/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/d;-><init>(Lcom/google/android/material/color/d$c;Lcom/google/android/material/color/d$a;)V

    return-object v0
.end method

.method public e(Lcom/google/android/material/color/DynamicColors$f;)Lcom/google/android/material/color/d$c;
    .registers 2
    .param p1    # Lcom/google/android/material/color/DynamicColors$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/color/d$c;->b:Lcom/google/android/material/color/DynamicColors$f;

    return-object p0
.end method

.method public f(I)Lcom/google/android/material/color/d$c;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/material/color/d$c;->a:I

    return-object p0
.end method
