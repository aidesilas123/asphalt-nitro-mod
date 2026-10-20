###### Class com.applovin.impl.sdk.e.h.AnonymousClass3 (com.applovin.impl.sdk.e.h$3)
.class Lcom/applovin/impl/sdk/e/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/e/h;->Kz()Lcom/applovin/impl/sdk/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTV:Lcom/applovin/impl/sdk/e/h;

.field final synthetic aTW:Lcom/applovin/impl/b/i;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/e/h;Lcom/applovin/impl/b/i;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/h$3;->aTV:Lcom/applovin/impl/sdk/e/h;

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/h$3;->aTW:Lcom/applovin/impl/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public q(Landroid/net/Uri;)V
    .registers 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h$3;->aTW:Lcom/applovin/impl/b/i;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/b/i;->u(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/h$3;->aTV:Lcom/applovin/impl/sdk/e/h;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/h;->a(Lcom/applovin/impl/sdk/e/h;)Lcom/applovin/impl/b/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/ad/e;->aN(Z)V

    goto :goto_27

    :cond_12
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/h$3;->aTV:Lcom/applovin/impl/sdk/e/h;

    iget-object p1, p1, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/h$3;->aTV:Lcom/applovin/impl/sdk/e/h;

    iget-object v0, p1, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object p1, p1, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v1, "Failed to cache static companion ad"

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method
