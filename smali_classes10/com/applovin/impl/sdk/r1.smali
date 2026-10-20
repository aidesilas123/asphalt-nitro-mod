###### Class com.applovin.impl.sdk.r1 (com.applovin.impl.sdk.r1)
.class public final synthetic Lcom/applovin/impl/sdk/r1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/r;

.field public final synthetic b:Lcom/applovin/impl/sdk/r$a;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/r;Lcom/applovin/impl/sdk/r$a;Ljava/util/Map;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/r1;->a:Lcom/applovin/impl/sdk/r;

    iput-object p2, p0, Lcom/applovin/impl/sdk/r1;->b:Lcom/applovin/impl/sdk/r$a;

    iput-object p3, p0, Lcom/applovin/impl/sdk/r1;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/r1;->a:Lcom/applovin/impl/sdk/r;

    iget-object v1, p0, Lcom/applovin/impl/sdk/r1;->b:Lcom/applovin/impl/sdk/r$a;

    iget-object v2, p0, Lcom/applovin/impl/sdk/r1;->c:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/r;->e(Lcom/applovin/impl/sdk/r;Lcom/applovin/impl/sdk/r$a;Ljava/util/Map;)V

    return-void
.end method
