###### Class com.applovin.exoplayer2.m.r (com.applovin.exoplayer2.m.r)
.class public final synthetic Lcom/applovin/exoplayer2/m/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/m/n$a;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/m/n$a;IJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/r;->a:Lcom/applovin/exoplayer2/m/n$a;

    iput p2, p0, Lcom/applovin/exoplayer2/m/r;->b:I

    iput-wide p3, p0, Lcom/applovin/exoplayer2/m/r;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/r;->a:Lcom/applovin/exoplayer2/m/n$a;

    iget v1, p0, Lcom/applovin/exoplayer2/m/r;->b:I

    iget-wide v2, p0, Lcom/applovin/exoplayer2/m/r;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/m/n$a;->a(Lcom/applovin/exoplayer2/m/n$a;IJ)V

    return-void
.end method
