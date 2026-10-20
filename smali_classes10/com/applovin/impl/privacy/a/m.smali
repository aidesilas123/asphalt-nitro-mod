###### Class com.applovin.impl.privacy.a.m (com.applovin.impl.privacy.a.m)
.class public final synthetic Lcom/applovin/impl/privacy/a/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/impl/privacy/a/c$a;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/privacy/a/c;

.field public final synthetic b:Lcom/applovin/impl/privacy/a/c$a;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/privacy/a/c;Lcom/applovin/impl/privacy/a/c$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/privacy/a/m;->a:Lcom/applovin/impl/privacy/a/c;

    iput-object p2, p0, Lcom/applovin/impl/privacy/a/m;->b:Lcom/applovin/impl/privacy/a/c$a;

    return-void
.end method


# virtual methods
.method public final onFlowCompleted(Lcom/applovin/impl/privacy/a/a;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/privacy/a/m;->a:Lcom/applovin/impl/privacy/a/c;

    iget-object v1, p0, Lcom/applovin/impl/privacy/a/m;->b:Lcom/applovin/impl/privacy/a/c$a;

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/privacy/a/c;->e(Lcom/applovin/impl/privacy/a/c;Lcom/applovin/impl/privacy/a/c$a;Lcom/applovin/impl/privacy/a/a;)V

    return-void
.end method
