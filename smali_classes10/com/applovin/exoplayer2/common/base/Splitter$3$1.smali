###### Class com.applovin.exoplayer2.common.base.Splitter.AnonymousClass3.AnonymousClass1 (com.applovin.exoplayer2.common.base.Splitter$3$1)
.class Lcom/applovin/exoplayer2/common/base/Splitter$3$1;
.super Lcom/applovin/exoplayer2/common/base/Splitter$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/common/base/Splitter$3;->a(Lcom/applovin/exoplayer2/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/common/base/Splitter$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oS:Lcom/applovin/exoplayer2/common/base/Splitter$3;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/base/Splitter$3;Lcom/applovin/exoplayer2/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/base/Splitter$3$1;->oS:Lcom/applovin/exoplayer2/common/base/Splitter$3;

    invoke-direct {p0, p2, p3}, Lcom/applovin/exoplayer2/common/base/Splitter$a;-><init>(Lcom/applovin/exoplayer2/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public aP(I)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/base/Splitter$3$1;->oS:Lcom/applovin/exoplayer2/common/base/Splitter$3;

    iget v0, v0, Lcom/applovin/exoplayer2/common/base/Splitter$3;->oR:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oT:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 p1, -0x1

    :goto_f
    return p1
.end method

.method public aQ(I)I
    .registers 2

    return p1
.end method
