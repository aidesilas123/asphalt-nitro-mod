###### Class com.google.android.material.color.HarmonizedColorsOptions (com.google.android.material.color.HarmonizedColorsOptions)
.class public Lcom/google/android/material/color/HarmonizedColorsOptions;
.super Ljava/lang/Object;
.source "HarmonizedColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/HarmonizedColorsOptions$b;
    }
.end annotation


# instance fields
.field private final a:[I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/google/android/material/color/HarmonizedColorAttributes;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/material/color/HarmonizedColorsOptions$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$b;->a(Lcom/google/android/material/color/HarmonizedColorsOptions$b;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->a:[I

    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$b;->b(Lcom/google/android/material/color/HarmonizedColorsOptions$b;)Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->b:Lcom/google/android/material/color/HarmonizedColorAttributes;

    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$b;->c(Lcom/google/android/material/color/HarmonizedColorsOptions$b;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/HarmonizedColorsOptions$b;Lcom/google/android/material/color/HarmonizedColorsOptions$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;-><init>(Lcom/google/android/material/color/HarmonizedColorsOptions$b;)V

    return-void
.end method

.method public static createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorsOptions;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/color/HarmonizedColorsOptions$b;

    invoke-direct {v0}, Lcom/google/android/material/color/HarmonizedColorsOptions$b;-><init>()V

    invoke-static {}, Lcom/google/android/material/color/HarmonizedColorAttributes;->createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/HarmonizedColorsOptions$b;->e(Lcom/google/android/material/color/HarmonizedColorAttributes;)Lcom/google/android/material/color/HarmonizedColorsOptions$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/HarmonizedColorsOptions$b;->d()Lcom/google/android/material/color/HarmonizedColorsOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    iget v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->c:I

    return v0
.end method

.method public b()Lcom/google/android/material/color/HarmonizedColorAttributes;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->b:Lcom/google/android/material/color/HarmonizedColorAttributes;

    return-object v0
.end method

.method public c()[I
    .registers 2
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->a:[I

    return-object v0
.end method

.method d(I)I
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->b:Lcom/google/android/material/color/HarmonizedColorAttributes;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/material/color/HarmonizedColorAttributes;->b()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->b:Lcom/google/android/material/color/HarmonizedColorAttributes;

    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->b()I

    move-result p1

    :cond_10
    return p1
.end method

###### Class com.google.android.material.color.HarmonizedColorsOptions.a (com.google.android.material.color.HarmonizedColorsOptions$a)
.class synthetic Lcom/google/android/material/color/HarmonizedColorsOptions$a;
.super Ljava/lang/Object;
.source "HarmonizedColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/HarmonizedColorsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.material.color.HarmonizedColorsOptions.b (com.google.android.material.color.HarmonizedColorsOptions$b)
.class public Lcom/google/android/material/color/HarmonizedColorsOptions$b;
.super Ljava/lang/Object;
.source "HarmonizedColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/HarmonizedColorsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:[I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/google/android/material/color/HarmonizedColorAttributes;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$b;->a:[I

    sget v0, Lcom/google/android/material/R$attr;->q:I

    iput v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$b;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/color/HarmonizedColorsOptions$b;)[I
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$b;->a:[I

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/color/HarmonizedColorsOptions$b;)Lcom/google/android/material/color/HarmonizedColorAttributes;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$b;->b:Lcom/google/android/material/color/HarmonizedColorAttributes;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/color/HarmonizedColorsOptions$b;)I
    .registers 1

    iget p0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$b;->c:I

    return p0
.end method


# virtual methods
.method public d()Lcom/google/android/material/color/HarmonizedColorsOptions;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/color/HarmonizedColorsOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/HarmonizedColorsOptions;-><init>(Lcom/google/android/material/color/HarmonizedColorsOptions$b;Lcom/google/android/material/color/HarmonizedColorsOptions$a;)V

    return-object v0
.end method

.method public e(Lcom/google/android/material/color/HarmonizedColorAttributes;)Lcom/google/android/material/color/HarmonizedColorsOptions$b;
    .registers 2
    .param p1    # Lcom/google/android/material/color/HarmonizedColorAttributes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$b;->b:Lcom/google/android/material/color/HarmonizedColorAttributes;

    return-object p0
.end method
