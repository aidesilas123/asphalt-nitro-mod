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
