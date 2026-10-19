###### Class com.applovin.impl.sdk.e.j.AnonymousClass1 (com.applovin.impl.sdk.e.j$1)
.class Lcom/applovin/impl/sdk/e/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinPostbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/e/j;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aUc:Lcom/applovin/impl/sdk/e/j;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/e/j;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/j$1;->aUc:Lcom/applovin/impl/sdk/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostbackFailure(Ljava/lang/String;I)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/j$1;->aUc:Lcom/applovin/impl/sdk/e/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/j;->c(Lcom/applovin/impl/sdk/e/j;)V

    return-void
.end method

.method public onPostbackSuccess(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/j$1;->aUc:Lcom/applovin/impl/sdk/e/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/j;->a(Lcom/applovin/impl/sdk/e/j;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/j$1;->aUc:Lcom/applovin/impl/sdk/e/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/j;->a(Lcom/applovin/impl/sdk/e/j;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/j$1;->aUc:Lcom/applovin/impl/sdk/e/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/j;->b(Lcom/applovin/impl/sdk/e/j;)Lcom/applovin/impl/sdk/network/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/c;->zL()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackSuccess(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
