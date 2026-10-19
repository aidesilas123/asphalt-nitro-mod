###### Class com.applovin.exoplayer2.i.p (com.applovin.exoplayer2.i.p)
.class public final synthetic Lcom/applovin/exoplayer2/i/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/c/i$a;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/i/d;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/i/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/p;->a:Lcom/applovin/exoplayer2/i/d;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lcom/applovin/exoplayer2/c/i;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/p;->a:Lcom/applovin/exoplayer2/i/d;

    check-cast p1, Lcom/applovin/exoplayer2/i/k;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/i/d;->d(Lcom/applovin/exoplayer2/i/d;Lcom/applovin/exoplayer2/c/i;)V

    return-void
.end method
