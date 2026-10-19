###### Class com.applovin.exoplayer2.h.m0 (com.applovin.exoplayer2.h.m0)
.class public final synthetic Lcom/applovin/exoplayer2/h/m0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/h/s$a;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/e/l;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/e/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/m0;->a:Lcom/applovin/exoplayer2/e/l;

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor()Lcom/applovin/exoplayer2/h/s;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/m0;->a:Lcom/applovin/exoplayer2/e/l;

    invoke-static {v0}, Lcom/applovin/exoplayer2/h/u$a;->b(Lcom/applovin/exoplayer2/e/l;)Lcom/applovin/exoplayer2/h/s;

    move-result-object v0

    return-object v0
.end method
