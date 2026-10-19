###### Class com.applovin.impl.sdk.network.e.c.a (com.applovin.impl.sdk.network.e$c$a)
.class public Lcom/applovin/impl/sdk/network/e$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/network/e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private aHZ:[B

.field private aIa:[B

.field private aIb:J

.field private aIc:Ljava/lang/Throwable;

.field private aaC:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/e$c$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/impl/sdk/network/e$c$a;->aaC:I

    return p0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/e$c$a;)[B
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$c$a;->aHZ:[B

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/network/e$c$a;)[B
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$c$a;->aIa:[B

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/network/e$c$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/network/e$c$a;->aIb:J

    return-wide v0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/network/e$c$a;)Ljava/lang/Throwable;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$c$a;->aIc:Ljava/lang/Throwable;

    return-object p0
.end method


# virtual methods
.method public Ip()Lcom/applovin/impl/sdk/network/e$c;
    .registers 3

    new-instance v0, Lcom/applovin/impl/sdk/network/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/network/e$c;-><init>(Lcom/applovin/impl/sdk/network/e$c$a;Lcom/applovin/impl/sdk/network/e$1;)V

    return-object v0
.end method

.method public L([B)Lcom/applovin/impl/sdk/network/e$c$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$c$a;->aHZ:[B

    return-object p0
.end method

.method public M([B)Lcom/applovin/impl/sdk/network/e$c$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$c$a;->aIa:[B

    return-object p0
.end method

.method public bR(J)Lcom/applovin/impl/sdk/network/e$c$a;
    .registers 3

    iput-wide p1, p0, Lcom/applovin/impl/sdk/network/e$c$a;->aIb:J

    return-object p0
.end method

.method public gI(I)Lcom/applovin/impl/sdk/network/e$c$a;
    .registers 2

    iput p1, p0, Lcom/applovin/impl/sdk/network/e$c$a;->aaC:I

    return-object p0
.end method

.method public o(Ljava/lang/Throwable;)Lcom/applovin/impl/sdk/network/e$c$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$c$a;->aIc:Ljava/lang/Throwable;

    return-object p0
.end method
