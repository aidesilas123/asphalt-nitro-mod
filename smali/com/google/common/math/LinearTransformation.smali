###### Class com.google.common.math.LinearTransformation (com.google.common.math.LinearTransformation)
.class public abstract Lcom/google/common/math/LinearTransformation;
.super Ljava/lang/Object;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LinearTransformation$c;,
        Lcom/google/common/math/LinearTransformation$e;,
        Lcom/google/common/math/LinearTransformation$d;,
        Lcom/google/common/math/LinearTransformation$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forNaN()Lcom/google/common/math/LinearTransformation;
    .registers 1

    sget-object v0, Lcom/google/common/math/LinearTransformation$c;->a:Lcom/google/common/math/LinearTransformation$c;

    return-object v0
.end method

.method public static horizontal(D)Lcom/google/common/math/LinearTransformation;
    .registers 5

    invoke-static {p0, p1}, Lcom/google/common/math/a;->d(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    new-instance v0, Lcom/google/common/math/LinearTransformation$d;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/common/math/LinearTransformation$d;-><init>(DD)V

    return-object v0
.end method

.method public static mapping(DD)Lcom/google/common/math/LinearTransformation$b;
    .registers 11

    invoke-static {p0, p1}, Lcom/google/common/math/a;->d(D)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p2, p3}, Lcom/google/common/math/a;->d(D)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    new-instance v0, Lcom/google/common/math/LinearTransformation$b;

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/common/math/LinearTransformation$b;-><init>(DDLcom/google/common/math/LinearTransformation$a;)V

    return-object v0
.end method

.method public static vertical(D)Lcom/google/common/math/LinearTransformation;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/common/math/a;->d(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    new-instance v0, Lcom/google/common/math/LinearTransformation$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/math/LinearTransformation$e;-><init>(D)V

    return-object v0
.end method

###### Class com.google.common.math.LinearTransformation.a (com.google.common.math.LinearTransformation$a)
.class synthetic Lcom/google/common/math/LinearTransformation$a;
.super Ljava/lang/Object;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.math.LinearTransformation.b (com.google.common.math.LinearTransformation$b)
.class public final Lcom/google/common/math/LinearTransformation$b;
.super Ljava/lang/Object;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:D

.field private final b:D


# direct methods
.method private constructor <init>(DD)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$b;->a:D

    iput-wide p3, p0, Lcom/google/common/math/LinearTransformation$b;->b:D

    return-void
.end method

.method synthetic constructor <init>(DDLcom/google/common/math/LinearTransformation$a;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/math/LinearTransformation$b;-><init>(DD)V

    return-void
.end method

###### Class com.google.common.math.LinearTransformation.c (com.google.common.math.LinearTransformation$c)
.class final Lcom/google/common/math/LinearTransformation$c;
.super Lcom/google/common/math/LinearTransformation;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/google/common/math/LinearTransformation$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/math/LinearTransformation$c;

    invoke-direct {v0}, Lcom/google/common/math/LinearTransformation$c;-><init>()V

    sput-object v0, Lcom/google/common/math/LinearTransformation$c;->a:Lcom/google/common/math/LinearTransformation$c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "NaN"

    return-object v0
.end method

###### Class com.google.common.math.LinearTransformation.d (com.google.common.math.LinearTransformation$d)
.class final Lcom/google/common/math/LinearTransformation$d;
.super Lcom/google/common/math/LinearTransformation;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field final a:D

.field final b:D

.field c:Lcom/google/common/math/LinearTransformation;


# direct methods
.method constructor <init>(DD)V
    .registers 5

    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$d;->a:D

    iput-wide p3, p0, Lcom/google/common/math/LinearTransformation$d;->b:D

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/math/LinearTransformation$d;->c:Lcom/google/common/math/LinearTransformation;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/common/math/LinearTransformation$d;->a:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/math/LinearTransformation$d;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "y = %g * x + %g"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.math.LinearTransformation.e (com.google.common.math.LinearTransformation$e)
.class final Lcom/google/common/math/LinearTransformation$e;
.super Lcom/google/common/math/LinearTransformation;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field final a:D

.field b:Lcom/google/common/math/LinearTransformation;


# direct methods
.method constructor <init>(D)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$e;->a:D

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/math/LinearTransformation$e;->b:Lcom/google/common/math/LinearTransformation;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/common/math/LinearTransformation$e;->a:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "x = %g"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
