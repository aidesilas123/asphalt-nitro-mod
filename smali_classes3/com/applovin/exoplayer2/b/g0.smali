###### Class com.applovin.exoplayer2.b.g0 (com.applovin.exoplayer2.b.g0)
.class public final synthetic Lcom/applovin/exoplayer2/b/g0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/b/g$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/b/g$a;IJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/g0;->a:Lcom/applovin/exoplayer2/b/g$a;

    iput p2, p0, Lcom/applovin/exoplayer2/b/g0;->b:I

    iput-wide p3, p0, Lcom/applovin/exoplayer2/b/g0;->c:J

    iput-wide p5, p0, Lcom/applovin/exoplayer2/b/g0;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g0;->a:Lcom/applovin/exoplayer2/b/g$a;

    iget v1, p0, Lcom/applovin/exoplayer2/b/g0;->b:I

    iget-wide v2, p0, Lcom/applovin/exoplayer2/b/g0;->c:J

    iget-wide v4, p0, Lcom/applovin/exoplayer2/b/g0;->d:J

    invoke-static/range {v0 .. v5}, Lcom/applovin/exoplayer2/b/g$a;->m(Lcom/applovin/exoplayer2/b/g$a;IJJ)V

    return-void
.end method
