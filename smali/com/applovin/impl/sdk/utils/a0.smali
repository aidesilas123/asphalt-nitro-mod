###### Class com.applovin.impl.sdk.utils.a0 (com.applovin.impl.sdk.utils.a0)
.class public final synthetic Lcom/applovin/impl/sdk/utils/a0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/utils/f;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/utils/f;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/a0;->a:Lcom/applovin/impl/sdk/utils/f;

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/a0;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/a0;->a:Lcom/applovin/impl/sdk/utils/f;

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/a0;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/f;->b(Lcom/applovin/impl/sdk/utils/f;Ljava/lang/Runnable;)V

    return-void
.end method
