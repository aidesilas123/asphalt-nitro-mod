###### Class com.applovin.impl.sdk.network.a (com.applovin.impl.sdk.network.a)
.class public Lcom/applovin/impl/sdk/network/a;
.super Lcom/applovin/impl/sdk/e/d;
.source "SourceFile"


# instance fields
.field private final aHl:Lcom/applovin/impl/sdk/network/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/network/c<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final aoM:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/network/c<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/applovin/impl/sdk/n;",
            ")V"
        }
    .end annotation

    const-string v0, "CommunicatorRequestTask"

    invoke-direct {p0, v0, p3, p1}, Lcom/applovin/impl/sdk/e/d;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/n;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/a;->aoM:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/network/a;->aHl:Lcom/applovin/impl/sdk/network/c;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/a;->aoM:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/a;)Lcom/applovin/impl/sdk/network/c;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/a;->aHl:Lcom/applovin/impl/sdk/network/c;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BO()Lcom/applovin/impl/sdk/e/q;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/network/a$1;

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/a;->aHl:Lcom/applovin/impl/sdk/network/c;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/d;->Kh()Z

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/applovin/impl/sdk/network/a$1;-><init>(Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/n;Z)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/e/q;->b(Lcom/applovin/impl/sdk/e/d;)V

    return-void
.end method
