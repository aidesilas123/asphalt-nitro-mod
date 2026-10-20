###### Class com.applovin.impl.a.a.f (com.applovin.impl.a.a.f)
.class public final synthetic Lcom/applovin/impl/a/a/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/a/a/a;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/a/a/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/a/a/f;->a:Lcom/applovin/impl/a/a/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/a/f;->a:Lcom/applovin/impl/a/a/a;

    invoke-static {v0}, Lcom/applovin/impl/a/a/a;->h(Lcom/applovin/impl/a/a/a;)V

    return-void
.end method
