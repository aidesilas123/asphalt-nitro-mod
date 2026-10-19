###### Class com.applovin.exoplayer2.e.b.d (com.applovin.exoplayer2.e.b.d)
.class public final synthetic Lcom/applovin/exoplayer2/e/b/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/e/a$d;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/e/p;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/e/p;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/b/d;->a:Lcom/applovin/exoplayer2/e/p;

    return-void
.end method


# virtual methods
.method public final timeUsToTargetTime(J)J
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/b/d;->a:Lcom/applovin/exoplayer2/e/p;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/e/p;->an(J)J

    move-result-wide p1

    return-wide p1
.end method
