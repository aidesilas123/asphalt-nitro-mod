###### Class com.google.zxing.common.b (com.google.zxing.common.b)
.class public final Lcom/google/zxing/common/b;
.super Ljava/lang/Object;
.source "DecoderResult.java"


# instance fields
.field private final a:[B

.field private b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/Object;

.field private final i:I

.field private final j:I

.field private final k:I


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/common/b;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;III)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/b;->a:[B

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_c

    :cond_9
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    :goto_c
    iput p1, p0, Lcom/google/zxing/common/b;->b:I

    iput-object p2, p0, Lcom/google/zxing/common/b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/common/b;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/google/zxing/common/b;->e:Ljava/lang/String;

    iput p6, p0, Lcom/google/zxing/common/b;->i:I

    iput p5, p0, Lcom/google/zxing/common/b;->j:I

    iput p7, p0, Lcom/google/zxing/common/b;->k:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/common/b;->g:Ljava/lang/Integer;

    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/common/b;->f:Ljava/lang/Integer;

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/common/b;->h:Ljava/lang/Object;

    return-void
.end method
