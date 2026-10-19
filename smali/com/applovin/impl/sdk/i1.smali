###### Class com.applovin.impl.sdk.i1 (com.applovin.impl.sdk.i1)
.class public final synthetic Lcom/applovin/impl/sdk/i1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/n;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/applovin/impl/sdk/x;

.field public final synthetic d:Lcom/applovin/impl/privacy/a/c;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/n;ZLcom/applovin/impl/sdk/x;Lcom/applovin/impl/privacy/a/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/i1;->a:Lcom/applovin/impl/sdk/n;

    iput-boolean p2, p0, Lcom/applovin/impl/sdk/i1;->b:Z

    iput-object p3, p0, Lcom/applovin/impl/sdk/i1;->c:Lcom/applovin/impl/sdk/x;

    iput-object p4, p0, Lcom/applovin/impl/sdk/i1;->d:Lcom/applovin/impl/privacy/a/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/i1;->a:Lcom/applovin/impl/sdk/n;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/i1;->b:Z

    iget-object v2, p0, Lcom/applovin/impl/sdk/i1;->c:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/i1;->d:Lcom/applovin/impl/privacy/a/c;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/n;->i(Lcom/applovin/impl/sdk/n;ZLcom/applovin/impl/sdk/x;Lcom/applovin/impl/privacy/a/c;)V

    return-void
.end method
