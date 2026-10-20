###### Class com.applovin.exoplayer2.f.s (com.applovin.exoplayer2.f.s)
.class public final synthetic Lcom/applovin/exoplayer2/f/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/f/l$f;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/v;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/v;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/s;->a:Lcom/applovin/exoplayer2/v;

    return-void
.end method


# virtual methods
.method public final getScore(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/s;->a:Lcom/applovin/exoplayer2/v;

    check-cast p1, Lcom/applovin/exoplayer2/f/i;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/f/l;->i(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/f/i;)I

    move-result p1

    return p1
.end method
