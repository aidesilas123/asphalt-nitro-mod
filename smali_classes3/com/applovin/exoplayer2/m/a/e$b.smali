###### Class com.applovin.exoplayer2.m.a.e.b (com.applovin.exoplayer2.m.a.e$b)
.class public final Lcom/applovin/exoplayer2/m/a/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/m/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final afB:I

.field public final afC:[F

.field public final afD:[F

.field public final rm:I


# direct methods
.method public constructor <init>(I[F[FI)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/m/a/e$b;->afB:I

    array-length p1, p2

    int-to-long v0, p1

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    array-length p1, p3

    int-to-long v2, p1

    const-wide/16 v4, 0x3

    mul-long v2, v2, v4

    cmp-long p1, v0, v2

    if-nez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/m/a/e$b;->afC:[F

    iput-object p3, p0, Lcom/applovin/exoplayer2/m/a/e$b;->afD:[F

    iput p4, p0, Lcom/applovin/exoplayer2/m/a/e$b;->rm:I

    return-void
.end method
