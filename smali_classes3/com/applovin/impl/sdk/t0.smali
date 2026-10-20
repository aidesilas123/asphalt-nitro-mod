###### Class com.applovin.impl.sdk.t0 (com.applovin.impl.sdk.t0)
.class public final synthetic Lcom/applovin/impl/sdk/t0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/i$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/i$a;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/t0;->a:Lcom/applovin/impl/sdk/i$a;

    iput p2, p0, Lcom/applovin/impl/sdk/t0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/t0;->a:Lcom/applovin/impl/sdk/i$a;

    iget v1, p0, Lcom/applovin/impl/sdk/t0;->b:I

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/i;->c(Lcom/applovin/impl/sdk/i$a;I)V

    return-void
.end method
