###### Class com.mbridge.msdk.foundation.tools.aj (com.mbridge.msdk.foundation.tools.aj)
.class final Lcom/mbridge/msdk/foundation/tools/aj;
.super Ljava/lang/Object;
.source "StringSetEncoder.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/tools/FastKV$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mbridge/msdk/foundation/tools/FastKV$a<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/mbridge/msdk/foundation/tools/aj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mbridge/msdk/foundation/tools/aj;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/tools/aj;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/aj;->a:Lcom/mbridge/msdk/foundation/tools/aj;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a([BII)Ljava/lang/Object;
    .registers 8

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    if-lez p3, :cond_70

    new-instance v1, Lcom/mbridge/msdk/foundation/tools/m;

    invoke-direct {v1, p1, p2}, Lcom/mbridge/msdk/foundation/tools/m;-><init>([BI)V

    add-int/2addr p2, p3

    :goto_d
    iget p1, v1, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    if-ge p1, p2, :cond_65

    iget-object p3, v1, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    add-int/lit8 v2, p1, 0x1

    iput v2, v1, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    aget-byte p1, p3, p1

    shr-int/lit8 v3, p1, 0x7

    if-nez v3, :cond_1e

    goto :goto_5d

    :cond_1e
    and-int/lit8 p1, p1, 0x7f

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr p1, v2

    shr-int/lit8 v2, p1, 0xe

    if-nez v2, :cond_2e

    goto :goto_5d

    :cond_2e
    and-int/lit16 p1, p1, 0x3fff

    add-int/lit8 v2, v3, 0x1

    iput v2, v1, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    aget-byte v3, p3, v3

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr p1, v3

    shr-int/lit8 v3, p1, 0x15

    if-nez v3, :cond_3e

    goto :goto_5d

    :cond_3e
    const v3, 0x1fffff

    and-int/2addr p1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr p1, v2

    shr-int/lit8 v2, p1, 0x1c

    if-nez v2, :cond_50

    goto :goto_5d

    :cond_50
    const v2, 0xfffffff

    and-int/2addr p1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, v1, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    aget-byte p3, p3, v3

    shl-int/lit8 p3, p3, 0x1c

    or-int/2addr p1, p3

    :goto_5d
    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/tools/m;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_65
    if-ne p1, p2, :cond_68

    goto :goto_70

    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid String set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_70
    :goto_70
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "StringSet"

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)[B
    .registers 12

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    new-array p1, v1, [B

    goto/16 :goto_89

    :cond_d
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [I

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_2f

    add-int/lit8 v4, v4, 0x5

    const/4 v6, -0x1

    aput v6, v2, v5

    goto :goto_52

    :cond_2f
    invoke-static {v6}, Lcom/mbridge/msdk/foundation/tools/m;->b(Ljava/lang/String;)I

    move-result v7

    aput-object v6, v3, v5

    aput v7, v2, v5

    shr-int/lit8 v6, v7, 0x7

    if-nez v6, :cond_3d

    const/4 v6, 0x1

    goto :goto_50

    :cond_3d
    shr-int/lit8 v6, v7, 0xe

    if-nez v6, :cond_43

    const/4 v6, 0x2

    goto :goto_50

    :cond_43
    shr-int/lit8 v6, v7, 0x15

    if-nez v6, :cond_49

    const/4 v6, 0x3

    goto :goto_50

    :cond_49
    shr-int/lit8 v6, v7, 0x1c

    if-nez v6, :cond_4f

    const/4 v6, 0x4

    goto :goto_50

    :cond_4f
    const/4 v6, 0x5

    :goto_50
    add-int/2addr v6, v7

    add-int/2addr v4, v6

    :goto_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_55
    new-instance p1, Lcom/mbridge/msdk/foundation/tools/m;

    invoke-direct {p1, v4}, Lcom/mbridge/msdk/foundation/tools/m;-><init>(I)V

    :goto_5a
    if-ge v1, v0, :cond_87

    aget v4, v2, v1

    iget v5, p1, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    move v6, v4

    :goto_61
    and-int/lit8 v7, v6, -0x80

    if-eqz v7, :cond_74

    iget-object v7, p1, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    add-int/lit8 v8, v5, 0x1

    and-int/lit8 v9, v6, 0x7f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v5

    ushr-int/lit8 v6, v6, 0x7

    move v5, v8

    goto :goto_61

    :cond_74
    iget-object v7, p1, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    add-int/lit8 v8, v5, 0x1

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    iput v8, p1, Lcom/mbridge/msdk/foundation/tools/m;->b:I

    if-ltz v4, :cond_84

    aget-object v4, v3, v1

    invoke-virtual {p1, v4}, Lcom/mbridge/msdk/foundation/tools/m;->a(Ljava/lang/String;)V

    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_87
    iget-object p1, p1, Lcom/mbridge/msdk/foundation/tools/m;->a:[B

    :goto_89
    return-object p1
.end method
