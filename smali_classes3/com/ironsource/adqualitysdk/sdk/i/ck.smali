###### Class com.json.adqualitysdk.sdk.i.ck (com.ironsource.adqualitysdk.sdk.i.ck)
.class public Lcom/ironsource/adqualitysdk/sdk/i/ck;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/ck$e;
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/adqualitysdk/sdk/i/hu$b;

.field private b:Lcom/ironsource/adqualitysdk/sdk/i/cl;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/ck;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ck;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/ck;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ck;->d:I

    return p1
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/ck;Lcom/ironsource/adqualitysdk/sdk/i/cl;)Lcom/ironsource/adqualitysdk/sdk/i/cl;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ck;->b:Lcom/ironsource/adqualitysdk/sdk/i/cl;

    return-object p1
.end method

.method static synthetic d(Lcom/ironsource/adqualitysdk/sdk/i/ck;)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ck;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$b;

    return-object p0
.end method

.method static synthetic e(Lcom/ironsource/adqualitysdk/sdk/i/ck;Lcom/ironsource/adqualitysdk/sdk/i/hu$b;)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ck;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$b;

    return-object p1
.end method


# virtual methods
.method public final ｋ()Lcom/ironsource/adqualitysdk/sdk/i/cl;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ck;->b:Lcom/ironsource/adqualitysdk/sdk/i/cl;

    return-object v0
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/hr;)Lcom/ironsource/adqualitysdk/sdk/i/hu;
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ck;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$b;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ck;->c:Ljava/util/List;

    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ck;->d:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object p1

    return-object p1
.end method
