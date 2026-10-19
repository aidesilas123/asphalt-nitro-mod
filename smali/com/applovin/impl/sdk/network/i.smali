###### Class com.applovin.impl.sdk.network.i (com.applovin.impl.sdk.network.i)
.class public Lcom/applovin/impl/sdk/network/i;
.super Lcom/applovin/impl/sdk/network/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/network/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/impl/sdk/network/c;"
    }
.end annotation


# instance fields
.field private aIv:Ljava/lang/String;

.field private aIx:Z


# direct methods
.method protected constructor <init>(Lcom/applovin/impl/sdk/network/i$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/c;-><init>(Lcom/applovin/impl/sdk/network/c$a;)V

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/i$a;->a(Lcom/applovin/impl/sdk/network/i$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/i;->aIv:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/i$a;->b(Lcom/applovin/impl/sdk/network/i$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/i;->aIx:Z

    return-void
.end method

.method public static E(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2

    new-instance v0, Lcom/applovin/impl/sdk/network/i$a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/network/i$a;-><init>(Lcom/applovin/impl/sdk/n;)V

    return-object v0
.end method


# virtual methods
.method public IG()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/i;->aIv:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public Ix()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/i;->aIx:Z

    return v0
.end method

.method public Iy()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/i;->aIv:Ljava/lang/String;

    return-object v0
.end method

###### Class com.applovin.impl.sdk.network.i.a (com.applovin.impl.sdk.network.i$a)
.class public Lcom/applovin/impl/sdk/network/i$a;
.super Lcom/applovin/impl/sdk/network/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/network/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/impl/sdk/network/c$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private aIv:Ljava/lang/String;

.field private aIx:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/c$a;-><init>(Lcom/applovin/impl/sdk/n;)V

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aND:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/sdk/network/c$a;->aHH:I

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aNC:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/sdk/network/c$a;->aHI:I

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aNK:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/sdk/network/c$a;->aHJ:I

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/i$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/i$a;->aIv:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/i$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/impl/sdk/network/i$a;->aIx:Z

    return p0
.end method


# virtual methods
.method public IH()Lcom/applovin/impl/sdk/network/i;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/impl/sdk/network/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/impl/sdk/network/i;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/network/i;-><init>(Lcom/applovin/impl/sdk/network/i$a;)V

    return-object v0
.end method

.method public synthetic Ig()Lcom/applovin/impl/sdk/network/c;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/network/i$a;->IH()Lcom/applovin/impl/sdk/network/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/c$a;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/i$a;->L(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object p1

    return-object p1
.end method

.method public L(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/c$a;->aHE:Lorg/json/JSONObject;

    return-object p0
.end method

.method public synthetic a(Lcom/applovin/impl/sdk/utils/p$a;)Lcom/applovin/impl/sdk/network/c$a;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/i$a;->c(Lcom/applovin/impl/sdk/utils/p$a;)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic aS(Z)Lcom/applovin/impl/sdk/network/c$a;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/i$a;->aZ(Z)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic aU(Z)Lcom/applovin/impl/sdk/network/c$a;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/i$a;->ba(Z)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object p1

    return-object p1
.end method

.method public aZ(Z)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/c$a;->aHN:Z

    return-object p0
.end method

.method public synthetic ad(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/c$a;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/i$a;->ae(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object p1

    return-object p1
.end method

.method public ae(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/applovin/impl/sdk/network/i$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/c$a;->aHt:Ljava/lang/Object;

    return-object p0
.end method

.method public ba(Z)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/c$a;->aHQ:Z

    return-object p0
.end method

.method public bb(Z)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/i$a;->aIx:Z

    return-object p0
.end method

.method public c(Lcom/applovin/impl/sdk/utils/p$a;)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/c$a;->aHO:Lcom/applovin/impl/sdk/utils/p$a;

    return-object p0
.end method

.method public synthetic cW(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/i$a;->df(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic cX(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/i$a;->dh(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic cY(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/i$a;->dg(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object p1

    return-object p1
.end method

.method public df(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/c$a;->aHr:Ljava/lang/String;

    return-object p0
.end method

.method public dg(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/c$a;->aHF:Ljava/lang/String;

    return-object p0
.end method

.method public dh(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/c$a;->aHC:Ljava/lang/String;

    return-object p0
.end method

.method public di(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/i$a;->aIv:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic gE(I)Lcom/applovin/impl/sdk/network/c$a;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/i$a;->gK(I)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic gF(I)Lcom/applovin/impl/sdk/network/c$a;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/i$a;->gL(I)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic gG(I)Lcom/applovin/impl/sdk/network/c$a;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/i$a;->gM(I)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object p1

    return-object p1
.end method

.method public gK(I)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2

    iput p1, p0, Lcom/applovin/impl/sdk/network/c$a;->aHH:I

    return-object p0
.end method

.method public gL(I)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2

    iput p1, p0, Lcom/applovin/impl/sdk/network/c$a;->aHI:I

    return-object p0
.end method

.method public gM(I)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2

    iput p1, p0, Lcom/applovin/impl/sdk/network/c$a;->aHJ:I

    return-object p0
.end method

.method public synthetic k(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/c$a;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/i$a;->q(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/c$a;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/i$a;->r(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/applovin/impl/sdk/network/i$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/c$a;->aHD:Ljava/util/Map;

    return-object p0
.end method

.method public r(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/i$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/applovin/impl/sdk/network/i$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/c$a;->awy:Ljava/util/Map;

    return-object p0
.end method
