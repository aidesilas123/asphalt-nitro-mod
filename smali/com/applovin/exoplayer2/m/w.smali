###### Class com.applovin.exoplayer2.m.w (com.applovin.exoplayer2.m.w)
.class public final synthetic Lcom/applovin/exoplayer2/m/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/m/n$a;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/m/n$a;JI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/w;->a:Lcom/applovin/exoplayer2/m/n$a;

    iput-wide p2, p0, Lcom/applovin/exoplayer2/m/w;->b:J

    iput p4, p0, Lcom/applovin/exoplayer2/m/w;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/w;->a:Lcom/applovin/exoplayer2/m/n$a;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/m/w;->b:J

    iget v3, p0, Lcom/applovin/exoplayer2/m/w;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/m/n$a;->p(Lcom/applovin/exoplayer2/m/n$a;JI)V

    return-void
.end method
