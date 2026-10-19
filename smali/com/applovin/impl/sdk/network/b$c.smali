###### Class com.applovin.impl.sdk.network.b.c (com.applovin.impl.sdk.network.b$c)
.class public Lcom/applovin/impl/sdk/network/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/network/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final aHA:J

.field private final aHB:J

.field private final aHy:J

.field private final aHz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/network/b$c;->aHy:J

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/b$c;->aHz:Ljava/lang/String;

    iput-wide p2, p0, Lcom/applovin/impl/sdk/network/b$c;->aHA:J

    iput-wide p4, p0, Lcom/applovin/impl/sdk/network/b$c;->aHB:J

    return-void
.end method


# virtual methods
.method public HM()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/network/b$c;->aHy:J

    return-wide v0
.end method

.method public HN()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/b$c;->aHz:Ljava/lang/String;

    return-object v0
.end method

.method public HO()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/network/b$c;->aHA:J

    return-wide v0
.end method

.method public HP()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/network/b$c;->aHB:J

    return-wide v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .registers 2

    instance-of p1, p1, Lcom/applovin/impl/sdk/network/b$c;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/sdk/network/b$c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/impl/sdk/network/b$c;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/network/b$c;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/network/b$c;->HM()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/b$c;->HM()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_20

    return v2

    :cond_20
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/network/b$c;->HO()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/b$c;->HO()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2d

    return v2

    :cond_2d
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/network/b$c;->HP()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/b$c;->HP()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3a

    return v2

    :cond_3a
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/network/b$c;->HN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/b$c;->HN()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_47

    if-eqz p1, :cond_4e

    goto :goto_4d

    :cond_47
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    :goto_4d
    return v2

    :cond_4e
    return v0
.end method

.method public hashCode()I
    .registers 8

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/network/b$c;->HM()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const/16 v0, 0x3b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/network/b$c;->HO()J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x3b

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/network/b$c;->HP()J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x3b

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v3, v2

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/network/b$c;->HN()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x3b

    if-nez v2, :cond_2f

    const/16 v0, 0x2b

    goto :goto_33

    :cond_2f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_33
    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionManager.RequestMeasurement(timestampMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/network/b$c;->HM()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", urlHostAndPathString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/network/b$c;->HN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", responseSizeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/network/b$c;->HO()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connectionTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/network/b$c;->HP()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
