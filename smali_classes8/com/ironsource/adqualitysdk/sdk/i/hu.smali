###### Class com.json.adqualitysdk.sdk.i.hu (com.ironsource.adqualitysdk.sdk.i.hu)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/hu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/hu$b;,
        Lcom/ironsource/adqualitysdk/sdk/i/hu$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

.field private b:Lcom/ironsource/adqualitysdk/sdk/i/hr;

.field private c:Lcom/ironsource/adqualitysdk/sdk/i/hi;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/hu;Lcom/ironsource/adqualitysdk/sdk/i/hi;)Lcom/ironsource/adqualitysdk/sdk/i/hi;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c:Lcom/ironsource/adqualitysdk/sdk/i/hi;

    return-object p1
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/hu;Lcom/ironsource/adqualitysdk/sdk/i/hr;)Lcom/ironsource/adqualitysdk/sdk/i/hr;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->b:Lcom/ironsource/adqualitysdk/sdk/i/hr;

    return-object p1
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    return-object p0
.end method

.method private static d(II)Z
    .registers 2

    if-lt p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/hi;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c:Lcom/ironsource/adqualitysdk/sdk/i/hi;

    return-object v0
.end method

.method public final ﻐ(I)Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->d(II)Z

    move-result p1

    return p1
.end method

.method public final ﻛ()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->b(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)Z

    move-result v0

    return v0
.end method

.method public final ﻛ(I)Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->q(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->d(II)Z

    move-result p1

    return p1
.end method

.method public final ｋ()I
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->k(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I

    move-result v0

    return v0
.end method

.method public final ｋ(Ljava/lang/Class;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->i(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/lang/Class;)Ljava/lang/Class;

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    return-object p1
.end method

.method public final ｋ(I)Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->f(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->d(II)Z

    move-result p1

    return p1
.end method

.method public final ﾇ(I)I
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->g(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->d(II)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->u(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hr;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->b:Lcom/ironsource/adqualitysdk/sdk/i/hr;

    return-object v0
.end method

.method public final ﾒ()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->o(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ(I)Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->d(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->d(II)Z

    move-result p1

    return p1
.end method
