###### Class com.applovin.exoplayer2.j.j (com.applovin.exoplayer2.j.j)
.class public abstract Lcom/applovin/exoplayer2/j/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/j/j$a;
    }
.end annotation


# instance fields
.field private VC:Lcom/applovin/exoplayer2/j/j$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bO:Lcom/applovin/exoplayer2/k/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract J(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a([Lcom/applovin/exoplayer2/as;Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/j/k;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation
.end method

.method public final a(Lcom/applovin/exoplayer2/j/j$a;Lcom/applovin/exoplayer2/k/d;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/j;->VC:Lcom/applovin/exoplayer2/j/j$a;

    iput-object p2, p0, Lcom/applovin/exoplayer2/j/j;->bO:Lcom/applovin/exoplayer2/k/d;

    return-void
.end method

.method public nh()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final nq()Lcom/applovin/exoplayer2/k/d;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/j/j;->bO:Lcom/applovin/exoplayer2/k/d;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/k/d;

    return-object v0
.end method

###### Class com.applovin.exoplayer2.j.j.a (com.applovin.exoplayer2.j.j$a)
.class public interface abstract Lcom/applovin/exoplayer2/j/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation
