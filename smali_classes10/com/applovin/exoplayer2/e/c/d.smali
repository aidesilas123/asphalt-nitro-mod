###### Class com.applovin.exoplayer2.e.c.d (com.applovin.exoplayer2.e.c.d)
.class abstract Lcom/applovin/exoplayer2/e/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/c/d$a;
    }
.end annotation


# instance fields
.field protected final wl:Lcom/applovin/exoplayer2/e/x;


# direct methods
.method protected constructor <init>(Lcom/applovin/exoplayer2/e/x;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/c/d;->wl:Lcom/applovin/exoplayer2/e/x;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/applovin/exoplayer2/l/y;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation
.end method

.method public final b(Lcom/applovin/exoplayer2/l/y;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/e/c/d;->e(Lcom/applovin/exoplayer2/l/y;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/c/d;->a(Lcom/applovin/exoplayer2/l/y;J)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method protected abstract e(Lcom/applovin/exoplayer2/l/y;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation
.end method
