###### Class com.applovin.exoplayer2.i.e (com.applovin.exoplayer2.i.e)
.class final Lcom/applovin/exoplayer2/i/e;
.super Lcom/applovin/exoplayer2/i/k;
.source "SourceFile"


# instance fields
.field private final Os:Lcom/applovin/exoplayer2/c/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/c/i$a<",
            "Lcom/applovin/exoplayer2/i/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/c/i$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/c/i$a<",
            "Lcom/applovin/exoplayer2/i/k;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/k;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/e;->Os:Lcom/applovin/exoplayer2/c/i$a;

    return-void
.end method


# virtual methods
.method public final release()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/e;->Os:Lcom/applovin/exoplayer2/c/i$a;

    invoke-interface {v0, p0}, Lcom/applovin/exoplayer2/c/i$a;->releaseOutputBuffer(Lcom/applovin/exoplayer2/c/i;)V

    return-void
.end method
