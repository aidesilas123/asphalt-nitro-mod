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

###### Class com.google.android.material.color.d.a (com.google.android.material.color.d$a)
.class Lcom/google/android/material/color/d$a;
.super Ljava/lang/Object;
.source "DynamicColorsOptions.java"

# interfaces
.implements Lcom/google/android/material/color/DynamicColors$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)Z
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

###### Class com.google.android.material.color.d.b (com.google.android.material.color.d$b)
.class Lcom/google/android/material/color/d$b;
.super Ljava/lang/Object;
.source "DynamicColorsOptions.java"

# interfaces
.implements Lcom/google/android/material/color/DynamicColors$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

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
