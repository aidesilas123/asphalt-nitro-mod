###### Class com.applovin.exoplayer2.a.a0 (com.applovin.exoplayer2.a.a0)
.class public final synthetic Lcom/applovin/exoplayer2/a/a0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/l/p$a;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/a/b$a;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/a/b$a;JI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/a/a0;->a:Lcom/applovin/exoplayer2/a/b$a;

    iput-wide p2, p0, Lcom/applovin/exoplayer2/a/a0;->b:J

    iput p4, p0, Lcom/applovin/exoplayer2/a/a0;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/a/a0;->a:Lcom/applovin/exoplayer2/a/b$a;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/a/a0;->b:J

    iget v3, p0, Lcom/applovin/exoplayer2/a/a0;->c:I

    check-cast p1, Lcom/applovin/exoplayer2/a/b;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/applovin/exoplayer2/a/a;->G(Lcom/applovin/exoplayer2/a/b$a;JILcom/applovin/exoplayer2/a/b;)V

    return-void
.end method
