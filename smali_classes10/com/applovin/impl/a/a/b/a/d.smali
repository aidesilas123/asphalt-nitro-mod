###### Class com.applovin.impl.a.a.b.a.d (com.applovin.impl.a.a.b.a.d)
.class public final synthetic Lcom/applovin/impl/a/a/b/a/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/a/a/b/a/b;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/a/a/b/a/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/a/a/b/a/d;->a:Lcom/applovin/impl/a/a/b/a/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/a/b/a/d;->a:Lcom/applovin/impl/a/a/b/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->notifyDataSetChanged()V

    return-void
.end method
