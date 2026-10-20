###### Class com.applovin.impl.privacy.a.i.AnonymousClass8 (com.applovin.impl.privacy.a.i$8)
.class Lcom/applovin/impl/privacy/a/i$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/privacy/a/i;->a(Lcom/applovin/impl/privacy/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ayr:Lcom/applovin/impl/privacy/a/i;

.field final synthetic ays:Lcom/applovin/impl/privacy/a/e;


# direct methods
.method constructor <init>(Lcom/applovin/impl/privacy/a/i;Lcom/applovin/impl/privacy/a/e;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/privacy/a/i$8;->ayr:Lcom/applovin/impl/privacy/a/i;

    iput-object p2, p0, Lcom/applovin/impl/privacy/a/i$8;->ays:Lcom/applovin/impl/privacy/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/privacy/a/i$8;->ayr:Lcom/applovin/impl/privacy/a/i;

    iget-object v1, p0, Lcom/applovin/impl/privacy/a/i$8;->ays:Lcom/applovin/impl/privacy/a/e;

    invoke-static {v0}, Lcom/applovin/impl/privacy/a/i;->c(Lcom/applovin/impl/privacy/a/i;)Lcom/applovin/impl/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->CF()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/privacy/a/i;->a(Lcom/applovin/impl/privacy/a/i;Lcom/applovin/impl/privacy/a/e;Landroid/app/Activity;)V

    return-void
.end method
