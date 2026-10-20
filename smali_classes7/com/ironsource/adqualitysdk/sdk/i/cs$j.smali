###### Class com.ironsource.adqualitysdk.sdk.i.cs.j (com.ironsource.adqualitysdk.sdk.i.cs$j)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cs$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cs;->ﮐ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:[I = null

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private synthetic d:Ljava/util/List;

.field private synthetic e:Z

.field final synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/dn;

.field final synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/dr;

.field final synthetic h:Lcom/ironsource/adqualitysdk/sdk/i/cj;

.field private synthetic i:Lcom/ironsource/adqualitysdk/sdk/i/cs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->a:[I

    return-void

    :array_a
    .array-data 4
        -0x43273560
        -0x309f8281
        0x3d869340
        0x5e1cd6dd
        -0x38fd75dd
        -0x6875bdcc
        -0x4cdcb1a3
        -0x686fe39f
        -0x6eae7ea8
        -0x78c7428
        -0xc09d678
        0x1f5a33c
        0x4191d282
        0x37acd43a
        0x741e19
        0x687127e
        0x456f739d
        0x773415c7
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cs;Ljava/util/List;ZLcom/ironsource/adqualitysdk/sdk/i/dn;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)V
    .registers 7

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->i:Lcom/ironsource/adqualitysdk/sdk/i/cs;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->d:Ljava/util/List;

    iput-boolean p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->e:Z

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    iput-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    iput-object p6, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->h:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([II)Ljava/lang/String;
    .registers 14

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_4
    new-array v1, v1, [C

    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->a:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    :goto_16
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    array-length v7, p0

    if-ge v6, v7, :cond_bc

    aget v7, p0, v6

    const/16 v8, 0x10

    shr-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    aget v7, p0, v6

    int-to-char v7, v7

    aput-char v7, v1, v3

    add-int/lit8 v7, v6, 0x1

    aget v7, p0, v7

    shr-int/2addr v7, v8

    int-to-char v7, v7

    const/4 v9, 0x2

    aput-char v7, v1, v9

    add-int/lit8 v6, v6, 0x1

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v7, 0x3

    aput-char v6, v1, v7

    aget-char v6, v1, v5

    shl-int/2addr v6, v8

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget-char v6, v1, v9

    shl-int/2addr v6, v8

    aget-char v10, v1, v7

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    const/4 v6, 0x0

    :goto_4d
    if-ge v6, v8, :cond_6a

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    invoke-static {v10}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ(I)I

    move-result v10

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    :cond_6a
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    const/16 v8, 0x11

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v5

    int-to-char v6, v6

    aput-char v6, v1, v3

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v9

    int-to-char v6, v6

    aput-char v6, v1, v7

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    shl-int/lit8 v8, v6, 0x1

    aget-char v10, v1, v5

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v3

    aget-char v10, v1, v3

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v9

    aget-char v9, v1, v9

    aput-char v9, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v7

    aget-char v7, v1, v7

    aput-char v7, v2, v8

    add-int/lit8 v6, v6, 0x2

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    goto/16 :goto_16

    :cond_bc
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_4 .. :try_end_c2} :catchall_c3

    return-object p0

    :catchall_c3
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 16

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->c:I

    const/4 v1, 0x3

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->b:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    const/4 v0, 0x0

    :try_start_b
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->d:Ljava/util/List;

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/16 p1, 0x8

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/16 p1, 0x9

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->f(Ljava/util/List;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->e:Z
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_76

    if-eqz p2, :cond_57

    goto :goto_58

    :cond_57
    const/4 v5, 0x0

    :goto_58
    if-eqz v5, :cond_6d

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->c:I

    add-int/lit8 p2, p2, 0x21

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->b:I

    rem-int/2addr p2, v2

    :try_start_63
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    iget-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->h:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-virtual {p2, p3, p4, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    return-void

    :cond_6d
    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/cs$j$a;

    invoke-direct {p2, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cs$j$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cs$j;Ljava/util/List;)V

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    :try_end_75
    .catchall {:try_start_63 .. :try_end_75} :catchall_76

    return-void

    :catchall_76
    move-exception p1

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->h:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x14

    new-array p4, p4, [I

    fill-array-data p4, :array_ae

    invoke-static {v0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p5

    const/4 p6, 0x0

    cmpl-float p5, p5, p6

    add-int/lit8 p5, p5, 0x27

    invoke-static {p4, p5}, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->a([II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    invoke-virtual {p4}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﾒ()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :array_ae
    .array-data 4
        0x365de07d
        0x5801c4e5
        0x11105ec3
        -0x4512619b
        -0xc3a2cb9
        0xab9db92
        0x4b1d6fdb    # 1.0317787E7f
        0x46e9e561
        -0x3bd948da
        0x1318691d
        0x12c50d0e
        -0x2ffebf02
        0x2007bf42
        -0x20363009
        0x5e88e7d2
        0x717d1285
        0x5f29935
        0x59fe3d8e
        0x43cb9e5e
        0x381b0334
    .end array-data
.end method
