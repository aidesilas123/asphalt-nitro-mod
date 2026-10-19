###### Class com.applovin.exoplayer2.a.b.a (com.applovin.exoplayer2.a.b$a)
.class public final Lcom/applovin/exoplayer2/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final cN:I

.field public final ci:Lcom/applovin/exoplayer2/ba;

.field public final ji:J

.field public final jj:Lcom/applovin/exoplayer2/h/p$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final jk:J

.field public final jl:Lcom/applovin/exoplayer2/ba;

.field public final jm:I

.field public final jn:Lcom/applovin/exoplayer2/h/p$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final jo:J

.field public final jp:J


# direct methods
.method public constructor <init>(JLcom/applovin/exoplayer2/ba;ILcom/applovin/exoplayer2/h/p$a;JLcom/applovin/exoplayer2/ba;ILcom/applovin/exoplayer2/h/p$a;JJ)V
    .registers 15
    .param p5    # Lcom/applovin/exoplayer2/h/p$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/applovin/exoplayer2/h/p$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/applovin/exoplayer2/a/b$a;->ji:J

    iput-object p3, p0, Lcom/applovin/exoplayer2/a/b$a;->ci:Lcom/applovin/exoplayer2/ba;

    iput p4, p0, Lcom/applovin/exoplayer2/a/b$a;->cN:I

    iput-object p5, p0, Lcom/applovin/exoplayer2/a/b$a;->jj:Lcom/applovin/exoplayer2/h/p$a;

    iput-wide p6, p0, Lcom/applovin/exoplayer2/a/b$a;->jk:J

    iput-object p8, p0, Lcom/applovin/exoplayer2/a/b$a;->jl:Lcom/applovin/exoplayer2/ba;

    iput p9, p0, Lcom/applovin/exoplayer2/a/b$a;->jm:I

    iput-object p10, p0, Lcom/applovin/exoplayer2/a/b$a;->jn:Lcom/applovin/exoplayer2/h/p$a;

    iput-wide p11, p0, Lcom/applovin/exoplayer2/a/b$a;->jo:J

    iput-wide p13, p0, Lcom/applovin/exoplayer2/a/b$a;->jp:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_69

    const-class v2, Lcom/applovin/exoplayer2/a/b$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_69

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/a/b$a;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/a/b$a;->ji:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/a/b$a;->ji:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_67

    iget v2, p0, Lcom/applovin/exoplayer2/a/b$a;->cN:I

    iget v3, p1, Lcom/applovin/exoplayer2/a/b$a;->cN:I

    if-ne v2, v3, :cond_67

    iget-wide v2, p0, Lcom/applovin/exoplayer2/a/b$a;->jk:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/a/b$a;->jk:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_67

    iget v2, p0, Lcom/applovin/exoplayer2/a/b$a;->jm:I

    iget v3, p1, Lcom/applovin/exoplayer2/a/b$a;->jm:I

    if-ne v2, v3, :cond_67

    iget-wide v2, p0, Lcom/applovin/exoplayer2/a/b$a;->jo:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/a/b$a;->jo:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_67

    iget-wide v2, p0, Lcom/applovin/exoplayer2/a/b$a;->jp:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/a/b$a;->jp:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_67

    iget-object v2, p0, Lcom/applovin/exoplayer2/a/b$a;->ci:Lcom/applovin/exoplayer2/ba;

    iget-object v3, p1, Lcom/applovin/exoplayer2/a/b$a;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/applovin/exoplayer2/a/b$a;->jj:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v3, p1, Lcom/applovin/exoplayer2/a/b$a;->jj:Lcom/applovin/exoplayer2/h/p$a;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/applovin/exoplayer2/a/b$a;->jl:Lcom/applovin/exoplayer2/ba;

    iget-object v3, p1, Lcom/applovin/exoplayer2/a/b$a;->jl:Lcom/applovin/exoplayer2/ba;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/applovin/exoplayer2/a/b$a;->jn:Lcom/applovin/exoplayer2/h/p$a;

    iget-object p1, p1, Lcom/applovin/exoplayer2/a/b$a;->jn:Lcom/applovin/exoplayer2/h/p$a;

    invoke-static {v2, p1}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    goto :goto_68

    :cond_67
    const/4 v0, 0x0

    :goto_68
    return v0

    :cond_69
    :goto_69
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/a/b$a;->ji:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/b$a;->ci:Lcom/applovin/exoplayer2/ba;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/a/b$a;->cN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/b$a;->jj:Lcom/applovin/exoplayer2/h/p$a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/applovin/exoplayer2/a/b$a;->jk:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/b$a;->jl:Lcom/applovin/exoplayer2/ba;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/a/b$a;->jm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/applovin/exoplayer2/a/b$a;->jn:Lcom/applovin/exoplayer2/h/p$a;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/applovin/exoplayer2/a/b$a;->jo:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/applovin/exoplayer2/a/b$a;->jp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
