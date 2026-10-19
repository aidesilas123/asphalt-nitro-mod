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
