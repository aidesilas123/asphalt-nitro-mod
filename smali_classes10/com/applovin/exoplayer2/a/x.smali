###### Class com.applovin.exoplayer2.a.x (com.applovin.exoplayer2.a.x)
.class public final synthetic Lcom/applovin/exoplayer2/a/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/l/p$a;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/a/b$a;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/a/b$a;Ljava/lang/Object;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/a/x;->a:Lcom/applovin/exoplayer2/a/b$a;

    iput-object p2, p0, Lcom/applovin/exoplayer2/a/x;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/applovin/exoplayer2/a/x;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/a/x;->a:Lcom/applovin/exoplayer2/a/b$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/x;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/a/x;->c:J

    check-cast p1, Lcom/applovin/exoplayer2/a/b;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/applovin/exoplayer2/a/a;->D(Lcom/applovin/exoplayer2/a/b$a;Ljava/lang/Object;JLcom/applovin/exoplayer2/a/b;)V

    return-void
.end method
