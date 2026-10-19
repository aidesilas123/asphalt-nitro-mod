###### Class com.applovin.exoplayer2.b.e0 (com.applovin.exoplayer2.b.e0)
.class public final synthetic Lcom/applovin/exoplayer2/b/e0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/b/g$a;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/b/g$a;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/e0;->a:Lcom/applovin/exoplayer2/b/g$a;

    iput-wide p2, p0, Lcom/applovin/exoplayer2/b/e0;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/e0;->a:Lcom/applovin/exoplayer2/b/g$a;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/b/e0;->b:J

    invoke-static {v0, v1, v2}, Lcom/applovin/exoplayer2/b/g$a;->k(Lcom/applovin/exoplayer2/b/g$a;J)V

    return-void
.end method
