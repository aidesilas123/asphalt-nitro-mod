###### Class com.google.common.math.Quantiles (com.google.common.math.Quantiles)
.class public final Lcom/google/common/math/Quantiles;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/Quantiles$c;,
        Lcom/google/common/math/Quantiles$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/math/Quantiles;->b(II)V

    return-void
.end method

.method private static b(II)V
    .registers 4

    if-ltz p0, :cond_5

    if-gt p0, p1, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Quantile indexes must be between 0 and the scale, which is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static median()Lcom/google/common/math/Quantiles$c;
    .registers 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/math/Quantiles$b;->a(I)Lcom/google/common/math/Quantiles$c;

    move-result-object v0

    return-object v0
.end method

.method public static percentiles()Lcom/google/common/math/Quantiles$b;
    .registers 1

    const/16 v0, 0x64

    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$b;

    move-result-object v0

    return-object v0
.end method

.method public static quartiles()Lcom/google/common/math/Quantiles$b;
    .registers 1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$b;

    move-result-object v0

    return-object v0
.end method

.method public static scale(I)Lcom/google/common/math/Quantiles$b;
    .registers 3

    new-instance v0, Lcom/google/common/math/Quantiles$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/math/Quantiles$b;-><init>(ILcom/google/common/math/Quantiles$a;)V

    return-object v0
.end method

###### Class com.google.common.math.Quantiles.a (com.google.common.math.Quantiles$a)
.class synthetic Lcom/google/common/math/Quantiles$a;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.math.Quantiles.b (com.google.common.math.Quantiles$b)
.class public final Lcom/google/common/math/Quantiles$b;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Quantile scale must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/common/math/Quantiles$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/common/math/Quantiles$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/math/Quantiles$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/common/math/Quantiles$c;
    .registers 5

    new-instance v0, Lcom/google/common/math/Quantiles$c;

    iget v1, p0, Lcom/google/common/math/Quantiles$b;->a:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/math/Quantiles$c;-><init>(IILcom/google/common/math/Quantiles$a;)V

    return-object v0
.end method

###### Class com.google.common.math.Quantiles.c (com.google.common.math.Quantiles$c)
.class public final Lcom/google/common/math/Quantiles$c;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2, p1}, Lcom/google/common/math/Quantiles;->a(II)V

    iput p1, p0, Lcom/google/common/math/Quantiles$c;->a:I

    iput p2, p0, Lcom/google/common/math/Quantiles$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/google/common/math/Quantiles$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/math/Quantiles$c;-><init>(II)V

    return-void
.end method
