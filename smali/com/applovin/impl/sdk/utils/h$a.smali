###### Class com.applovin.impl.sdk.utils.h.a (com.applovin.impl.sdk.utils.h$a)
.class public Lcom/applovin/impl/sdk/utils/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/utils/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/utils/h$a$a;
    }
.end annotation


# instance fields
.field aVD:I

.field aVE:I

.field aVF:I

.field aVG:I


# direct methods
.method constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/impl/sdk/utils/h$a;->aVD:I

    iput p2, p0, Lcom/applovin/impl/sdk/utils/h$a;->aVE:I

    iput p3, p0, Lcom/applovin/impl/sdk/utils/h$a;->aVF:I

    iput p4, p0, Lcom/applovin/impl/sdk/utils/h$a;->aVG:I

    return-void
.end method


# virtual methods
.method public Lh()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/sdk/utils/h$a;->aVD:I

    return v0
.end method

.method public Li()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/sdk/utils/h$a;->aVE:I

    return v0
.end method

.method public Lj()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/sdk/utils/h$a;->aVF:I

    return v0
.end method

.method public Lk()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/sdk/utils/h$a;->aVG:I

    return v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .registers 2

    instance-of p1, p1, Lcom/applovin/impl/sdk/utils/h$a;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/sdk/utils/h$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/impl/sdk/utils/h$a;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/utils/h$a;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/h$a;->Lh()I

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/h$a;->Lh()I

    move-result v3

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/h$a;->Li()I

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/h$a;->Li()I

    move-result v3

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/h$a;->Lj()I

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/h$a;->Lj()I

    move-result v3

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/h$a;->Lk()I

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/h$a;->Lk()I

    move-result p1

    if-eq v1, p1, :cond_3f

    return v2

    :cond_3f
    return v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/h$a;->Lh()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/h$a;->Li()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/h$a;->Lj()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/h$a;->Lk()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompatibilityUtils.ScreenCornerRadii(topLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/h$a;->Lh()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", topRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/h$a;->Li()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottomLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/h$a;->Lj()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottomRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/h$a;->Lk()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
