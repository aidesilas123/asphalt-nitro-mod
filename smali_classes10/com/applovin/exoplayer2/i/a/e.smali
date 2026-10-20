###### Class com.applovin.exoplayer2.i.a.e (com.applovin.exoplayer2.i.a.e)
.class public final synthetic Lcom/applovin/exoplayer2/i/a/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/c/i$a;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/i/a/c;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/i/a/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a/e;->a:Lcom/applovin/exoplayer2/i/a/c;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lcom/applovin/exoplayer2/c/i;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/e;->a:Lcom/applovin/exoplayer2/i/a/c;

    check-cast p1, Lcom/applovin/exoplayer2/i/a/c$b;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/i/a/c;->a(Lcom/applovin/exoplayer2/i/k;)V

    return-void
.end method
