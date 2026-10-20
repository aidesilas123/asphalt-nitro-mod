###### Class com.google.android.material.color.d (com.google.android.material.color.d)
.class public Lcom/google/android/material/color/d;
.super Ljava/lang/Object;
.source "DynamicColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/d$c;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/material/color/DynamicColors$f;

.field private static final b:Lcom/google/android/material/color/DynamicColors$e;


# instance fields
.field private final c:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private final d:Lcom/google/android/material/color/DynamicColors$f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/google/android/material/color/DynamicColors$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/material/color/d$a;

    invoke-direct {v0}, Lcom/google/android/material/color/d$a;-><init>()V

    sput-object v0, Lcom/google/android/material/color/d;->a:Lcom/google/android/material/color/DynamicColors$f;

    new-instance v0, Lcom/google/android/material/color/d$b;

    invoke-direct {v0}, Lcom/google/android/material/color/d$b;-><init>()V

    sput-object v0, Lcom/google/android/material/color/d;->b:Lcom/google/android/material/color/DynamicColors$e;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/color/d$c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/material/color/d$c;->a(Lcom/google/android/material/color/d$c;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/d;->c:I

    invoke-static {p1}, Lcom/google/android/material/color/d$c;->b(Lcom/google/android/material/color/d$c;)Lcom/google/android/material/color/DynamicColors$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/d;->d:Lcom/google/android/material/color/DynamicColors$f;

    invoke-static {p1}, Lcom/google/android/material/color/d$c;->c(Lcom/google/android/material/color/d$c;)Lcom/google/android/material/color/DynamicColors$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/d;->e:Lcom/google/android/material/color/DynamicColors$e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/d$c;Lcom/google/android/material/color/d$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/material/color/d;-><init>(Lcom/google/android/material/color/d$c;)V

    return-void
.end method

.method static synthetic a()Lcom/google/android/material/color/DynamicColors$f;
    .registers 1

    sget-object v0, Lcom/google/android/material/color/d;->a:Lcom/google/android/material/color/DynamicColors$f;

    return-object v0
.end method

.method static synthetic b()Lcom/google/android/material/color/DynamicColors$e;
    .registers 1

    sget-object v0, Lcom/google/android/material/color/d;->b:Lcom/google/android/material/color/DynamicColors$e;

    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/android/material/color/DynamicColors$e;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/d;->e:Lcom/google/android/material/color/DynamicColors$e;

    return-object v0
.end method

.method public d()Lcom/google/android/material/color/DynamicColors$f;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/d;->d:Lcom/google/android/material/color/DynamicColors$f;

    return-object v0
.end method

.method public e()I
    .registers 2
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    iget v0, p0, Lcom/google/android/material/color/d;->c:I

    return v0
.end method
