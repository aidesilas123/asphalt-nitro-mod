###### Class com.applovin.impl.sdk.r0 (com.applovin.impl.sdk.r0)
.class public final synthetic Lcom/applovin/impl/sdk/r0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/f$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/f$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/r0;->a:Lcom/applovin/impl/sdk/f$a;

    iput-object p2, p0, Lcom/applovin/impl/sdk/r0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/impl/sdk/r0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/r0;->a:Lcom/applovin/impl/sdk/f$a;

    iget-object v1, p0, Lcom/applovin/impl/sdk/r0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/sdk/r0;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/f;->c(Lcom/applovin/impl/sdk/f$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
