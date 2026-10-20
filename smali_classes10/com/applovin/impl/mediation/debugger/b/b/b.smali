###### Class com.applovin.impl.mediation.debugger.b.b.b (com.applovin.impl.mediation.debugger.b.b.b)
.class public Lcom/applovin/impl/mediation/debugger/b/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aoL:Ljava/lang/String;

.field private final aoM:Ljava/lang/String;

.field private final aoN:Ljava/lang/String;

.field private final aoO:Ljava/lang/String;

.field private final aoP:Ljava/lang/String;

.field private final aoQ:I

.field private final aoR:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/mediation/debugger/b/b/b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoP:Ljava/lang/String;

    iput p2, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoQ:I

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1a

    array-length p2, p1

    if-ne p2, v1, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p2, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p2, 0x1

    :goto_1b
    iput-boolean p2, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoR:Z

    const-string v4, ""

    if-eqz p2, :cond_46

    aget-object p2, p1, v0

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/b/b/b;->bI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoL:Ljava/lang/String;

    aget-object p2, p1, v2

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/b/b/b;->bI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoM:Ljava/lang/String;

    const/4 p2, 0x2

    aget-object p2, p1, p2

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/b/b/b;->bI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoN:Ljava/lang/String;

    array-length p2, p1

    if-ne p2, v1, :cond_43

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/b/b/b;->bI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_43
    iput-object v4, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoO:Ljava/lang/String;

    goto :goto_4e

    :cond_46
    iput-object v4, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoL:Ljava/lang/String;

    iput-object v4, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoM:Ljava/lang/String;

    iput-object v4, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoN:Ljava/lang/String;

    iput-object v4, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoO:Ljava/lang/String;

    :goto_4e
    return-void
.end method

.method private bI(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0xad

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .registers 2

    instance-of p1, p1, Lcom/applovin/impl/mediation/debugger/b/b/b;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/mediation/debugger/b/b/b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/impl/mediation/debugger/b/b/b;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->vd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/b/b;->vd()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_20

    if-eqz v3, :cond_27

    goto :goto_26

    :cond_20
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    :goto_26
    return v2

    :cond_27
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->getPublisherId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/b/b;->getPublisherId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_34

    if-eqz v3, :cond_3b

    goto :goto_3a

    :cond_34
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    :goto_3a
    return v2

    :cond_3b
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/b/b;->ve()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_48

    if-eqz v3, :cond_4f

    goto :goto_4e

    :cond_48
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    :goto_4e
    return v2

    :cond_4f
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->vf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/b/b;->vf()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_5c

    if-eqz p1, :cond_63

    goto :goto_62

    :cond_5c
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    :goto_62
    return v2

    :cond_63
    return v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoM:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->vd()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_b

    const/16 v0, 0x2b

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_f
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->getPublisherId()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1d

    const/16 v3, 0x2b

    goto :goto_21

    :cond_1d
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_21
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->ve()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_2d

    const/16 v3, 0x2b

    goto :goto_31

    :cond_2d
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_31
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->vf()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_3b

    goto :goto_3f

    :cond_3b
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3f
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppAdsTxtEntry(domainName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->vd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publisherId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->getPublisherId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", relationship="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", certificateAuthorityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->vf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rawValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->vg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rowNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->vh()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->vi()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vc()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoL:Ljava/lang/String;

    const-string v1, "applovin.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public vd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoL:Ljava/lang/String;

    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoN:Ljava/lang/String;

    return-object v0
.end method

.method public vf()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoO:Ljava/lang/String;

    return-object v0
.end method

.method public vg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoP:Ljava/lang/String;

    return-object v0
.end method

.method public vh()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoQ:I

    return v0
.end method

.method public vi()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->aoR:Z

    return v0
.end method
