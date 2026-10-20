###### Class com.applovin.impl.sdk.utils.x1 (com.applovin.impl.sdk.utils.x1)
.class public final synthetic Lcom/applovin/impl/sdk/utils/x1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/utils/u$a;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/utils/u$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/x1;->a:Lcom/applovin/impl/sdk/utils/u$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/x1;->a:Lcom/applovin/impl/sdk/utils/u$a;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/u;->n(Lcom/applovin/impl/sdk/utils/u$a;)V

    return-void
.end method
