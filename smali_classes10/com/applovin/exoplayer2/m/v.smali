###### Class com.applovin.exoplayer2.m.v (com.applovin.exoplayer2.m.v)
.class public final synthetic Lcom/applovin/exoplayer2/m/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/m/n$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/m/n$a;Ljava/lang/String;JJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/v;->a:Lcom/applovin/exoplayer2/m/n$a;

    iput-object p2, p0, Lcom/applovin/exoplayer2/m/v;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/applovin/exoplayer2/m/v;->c:J

    iput-wide p5, p0, Lcom/applovin/exoplayer2/m/v;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/v;->a:Lcom/applovin/exoplayer2/m/n$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/v;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/m/v;->c:J

    iget-wide v4, p0, Lcom/applovin/exoplayer2/m/v;->d:J

    invoke-static/range {v0 .. v5}, Lcom/applovin/exoplayer2/m/n$a;->o(Lcom/applovin/exoplayer2/m/n$a;Ljava/lang/String;JJ)V

    return-void
.end method
