###### Class com.applovin.exoplayer2.a.r (com.applovin.exoplayer2.a.r)
.class public final synthetic Lcom/applovin/exoplayer2/a/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/l/p$a;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/a/b$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/a/b$a;Ljava/lang/String;JJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/a/r;->a:Lcom/applovin/exoplayer2/a/b$a;

    iput-object p2, p0, Lcom/applovin/exoplayer2/a/r;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/applovin/exoplayer2/a/r;->c:J

    iput-wide p5, p0, Lcom/applovin/exoplayer2/a/r;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 9

    iget-object v0, p0, Lcom/applovin/exoplayer2/a/r;->a:Lcom/applovin/exoplayer2/a/b$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/r;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/a/r;->c:J

    iget-wide v4, p0, Lcom/applovin/exoplayer2/a/r;->d:J

    move-object v6, p1

    check-cast v6, Lcom/applovin/exoplayer2/a/b;

    invoke-static/range {v0 .. v6}, Lcom/applovin/exoplayer2/a/a;->w(Lcom/applovin/exoplayer2/a/b$a;Ljava/lang/String;JJLcom/applovin/exoplayer2/a/b;)V

    return-void
.end method
