###### Class com.applovin.impl.sdk.e.h.AnonymousClass5 (com.applovin.impl.sdk.e.h$5)
.class Lcom/applovin/impl/sdk/e/h$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/e/f$a;


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

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/h$5;->aTV:Lcom/applovin/impl/sdk/e/h;

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/h$5;->aTW:Lcom/applovin/impl/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public du(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h$5;->aTW:Lcom/applovin/impl/b/i;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/b/i;->dR(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/h$5;->aTV:Lcom/applovin/impl/sdk/e/h;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/h;->a(Lcom/applovin/impl/sdk/e/h;)Lcom/applovin/impl/b/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/ad/e;->aN(Z)V

    return-void
.end method
