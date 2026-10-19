###### Class com.applovin.impl.sdk.d1 (com.applovin.impl.sdk.d1)
.class public final synthetic Lcom/applovin/impl/sdk/d1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/m;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/m;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d1;->a:Lcom/applovin/impl/sdk/m;

    iput-wide p2, p0, Lcom/applovin/impl/sdk/d1;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d1;->a:Lcom/applovin/impl/sdk/m;

    iget-wide v1, p0, Lcom/applovin/impl/sdk/d1;->b:J

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/m;->e(Lcom/applovin/impl/sdk/m;J)V

    return-void
.end method
