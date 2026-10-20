###### Class com.applovin.exoplayer2.a.l (com.applovin.exoplayer2.a.l)
.class public final synthetic Lcom/applovin/exoplayer2/a/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/a/a;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/a/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/a/l;->a:Lcom/applovin/exoplayer2/a/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/a/l;->a:Lcom/applovin/exoplayer2/a/a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/a/a;->q(Lcom/applovin/exoplayer2/a/a;)V

    return-void
.end method
