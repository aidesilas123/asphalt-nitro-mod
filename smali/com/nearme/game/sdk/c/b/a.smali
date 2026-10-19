###### Class com.nearme.game.sdk.c.b.a (com.nearme.game.sdk.c.b.a)
.class public Lcom/nearme/game/sdk/c/b/a;
.super Ljava/lang/Object;
.source "ApiRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x38575641ce13016eL


# instance fields
.field public a:I

.field public b:[B

.field public c:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/nearme/game/sdk/c/b/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    check-cast p1, Lcom/nearme/game/sdk/c/b/a;

    iget v1, p1, Lcom/nearme/game/sdk/c/b/a;->a:I

    iget v3, p0, Lcom/nearme/game/sdk/c/b/a;->a:I

    if-ne v1, v3, :cond_50

    iget-object p1, p1, Lcom/nearme/game/sdk/c/b/a;->b:[B

    iget-object v1, p0, Lcom/nearme/game/sdk/c/b/a;->b:[B

    if-nez p1, :cond_1b

    if-nez v1, :cond_1d

    const/4 p1, 0x1

    goto :goto_4d

    :cond_1b
    if-nez v1, :cond_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_4d

    :cond_1f
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    array-length v4, p1

    const/4 v5, 0x0

    :goto_26
    if-ge v5, v4, :cond_34

    aget-byte v6, p1, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_34
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    array-length v4, v1

    const/4 v5, 0x0

    :goto_3b
    if-ge v5, v4, :cond_49

    aget-byte v6, v1, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    :cond_49
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_4d
    if-eqz p1, :cond_50

    return v0

    :cond_50
    return v2
.end method

.method public hashCode()I
    .registers 6

    iget v0, p0, Lcom/nearme/game/sdk/c/b/a;->a:I

    add-int/lit16 v0, v0, 0x20f

    iget-object v1, p0, Lcom/nearme/game/sdk/c/b/a;->b:[B

    if-eqz v1, :cond_1b

    const/16 v1, 0x11

    const/4 v2, 0x0

    :goto_b
    iget-object v3, p0, Lcom/nearme/game/sdk/c/b/a;->b:[B

    array-length v4, v3

    if-ge v2, v4, :cond_18

    mul-int/lit8 v1, v1, 0x1f

    aget-byte v3, v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_18
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    :cond_1b
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/nearme/game/sdk/c/b/a;->c:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method
