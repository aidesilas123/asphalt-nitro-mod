###### Class okio.k (okio.k)
.class public Lokio/k;
.super Lokio/z;
.source "ForwardingTimeout.kt"


# instance fields
.field private f:Lokio/z;


# direct methods
.method public constructor <init>(Lokio/z;)V
    .registers 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokio/z;-><init>()V

    iput-object p1, p0, Lokio/k;->f:Lokio/z;

    return-void
.end method


# virtual methods
.method public a()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokio/k;->f:Lokio/z;

    invoke-virtual {v0}, Lokio/z;->a()Lokio/z;

    move-result-object v0

    return-object v0
.end method

.method public b()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokio/k;->f:Lokio/z;

    invoke-virtual {v0}, Lokio/z;->b()Lokio/z;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .registers 3

    iget-object v0, p0, Lokio/k;->f:Lokio/z;

    invoke-virtual {v0}, Lokio/z;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lokio/z;
    .registers 4

    iget-object v0, p0, Lokio/k;->f:Lokio/z;

    invoke-virtual {v0, p1, p2}, Lokio/z;->d(J)Lokio/z;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lokio/k;->f:Lokio/z;

    invoke-virtual {v0}, Lokio/z;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/k;->f:Lokio/z;

    invoke-virtual {v0}, Lokio/z;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lokio/z;
    .registers 5

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/k;->f:Lokio/z;

    invoke-virtual {v0, p1, p2, p3}, Lokio/z;->g(JLjava/util/concurrent/TimeUnit;)Lokio/z;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokio/k;->f:Lokio/z;

    return-object v0
.end method

.method public final j(Lokio/z;)Lokio/k;
    .registers 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokio/k;->f:Lokio/z;

    return-object p0
.end method
