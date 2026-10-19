###### Class com.applovin.exoplayer2.d.l (com.applovin.exoplayer2.d.l)
.class public final Lcom/applovin/exoplayer2/d/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/d/f;


# instance fields
.field private final tl:Lcom/applovin/exoplayer2/d/f$a;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/d/f$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/d/f$a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/l;->tl:Lcom/applovin/exoplayer2/d/f$a;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public P()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/applovin/exoplayer2/d/g$a;)V
    .registers 2
    .param p1    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/d/g$a;)V
    .registers 2
    .param p1    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public hs()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public ht()Lcom/applovin/exoplayer2/d/f$a;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/l;->tl:Lcom/applovin/exoplayer2/d/f$a;

    return-object v0
.end method

.method public final hu()Ljava/util/UUID;
    .registers 2

    sget-object v0, Lcom/applovin/exoplayer2/h;->aj:Ljava/util/UUID;

    return-object v0
.end method

.method public hv()Lcom/applovin/exoplayer2/c/b;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public hw()Ljava/util/Map;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
