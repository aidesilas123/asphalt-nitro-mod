###### Class com.applovin.exoplayer2.d.b0 (com.applovin.exoplayer2.d.b0)
.class public final synthetic Lcom/applovin/exoplayer2/d/b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/d/c$e;

.field public final synthetic b:Lcom/applovin/exoplayer2/v;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/d/c$e;Lcom/applovin/exoplayer2/v;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/b0;->a:Lcom/applovin/exoplayer2/d/c$e;

    iput-object p2, p0, Lcom/applovin/exoplayer2/d/b0;->b:Lcom/applovin/exoplayer2/v;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b0;->a:Lcom/applovin/exoplayer2/d/c$e;

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/b0;->b:Lcom/applovin/exoplayer2/v;

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/d/c$e;->b(Lcom/applovin/exoplayer2/d/c$e;Lcom/applovin/exoplayer2/v;)V

    return-void
.end method
