###### Class com.applovin.impl.sdk.a.h (com.applovin.impl.sdk.a.h)
.class public final synthetic Lcom/applovin/impl/sdk/a/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/a/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/a/b;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/h;->a:Lcom/applovin/impl/sdk/a/b;

    iput-object p2, p0, Lcom/applovin/impl/sdk/a/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/impl/sdk/a/h;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/h;->a:Lcom/applovin/impl/sdk/a/b;

    iget-object v1, p0, Lcom/applovin/impl/sdk/a/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/sdk/a/h;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/a/b;->c(Lcom/applovin/impl/sdk/a/b;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
