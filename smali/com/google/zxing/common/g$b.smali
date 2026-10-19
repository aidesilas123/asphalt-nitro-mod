###### Class com.google.zxing.common.g.b (com.google.zxing.common.g$b)
.class final Lcom/google/zxing/common/g$b;
.super Ljava/lang/Object;
.source "MinimalECIInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/common/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:C

.field private final b:I

.field private final c:Lcom/google/zxing/common/g$b;

.field private final d:I


# direct methods
.method private constructor <init>(CLcom/google/zxing/common/d;ILcom/google/zxing/common/g$b;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    if-ne p1, p5, :cond_a

    const/16 p5, 0x3e8

    goto :goto_b

    :cond_a
    move p5, p1

    :goto_b
    iput-char p5, p0, Lcom/google/zxing/common/g$b;->a:C

    iput p3, p0, Lcom/google/zxing/common/g$b;->b:I

    iput-object p4, p0, Lcom/google/zxing/common/g$b;->c:Lcom/google/zxing/common/g$b;

    if-ne p5, v0, :cond_15

    const/4 p1, 0x1

    goto :goto_1a

    :cond_15
    invoke-virtual {p2, p1, p3}, Lcom/google/zxing/common/d;->b(CI)[B

    move-result-object p1

    array-length p1, p1

    :goto_1a
    if-nez p4, :cond_1e

    const/4 p2, 0x0

    goto :goto_20

    :cond_1e
    iget p2, p4, Lcom/google/zxing/common/g$b;->b:I

    :goto_20
    if-eq p2, p3, :cond_24

    add-int/lit8 p1, p1, 0x3

    :cond_24
    if-eqz p4, :cond_29

    iget p2, p4, Lcom/google/zxing/common/g$b;->d:I

    add-int/2addr p1, p2

    :cond_29
    iput p1, p0, Lcom/google/zxing/common/g$b;->d:I

    return-void
.end method

.method synthetic constructor <init>(CLcom/google/zxing/common/d;ILcom/google/zxing/common/g$b;ILcom/google/zxing/common/g$a;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/zxing/common/g$b;-><init>(CLcom/google/zxing/common/d;ILcom/google/zxing/common/g$b;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/zxing/common/g$b;)I
    .registers 1

    iget p0, p0, Lcom/google/zxing/common/g$b;->b:I

    return p0
.end method

.method static synthetic b(Lcom/google/zxing/common/g$b;)I
    .registers 1

    iget p0, p0, Lcom/google/zxing/common/g$b;->d:I

    return p0
.end method

.method static synthetic c(Lcom/google/zxing/common/g$b;)C
    .registers 1

    iget-char p0, p0, Lcom/google/zxing/common/g$b;->a:C

    return p0
.end method

.method static synthetic d(Lcom/google/zxing/common/g$b;)Lcom/google/zxing/common/g$b;
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/common/g$b;->c:Lcom/google/zxing/common/g$b;

    return-object p0
.end method


# virtual methods
.method e()Z
    .registers 3

    iget-char v0, p0, Lcom/google/zxing/common/g$b;->a:C

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
