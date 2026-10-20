###### Class com.applovin.exoplayer2.common.base.Splitter.AnonymousClass2.AnonymousClass1 (com.applovin.exoplayer2.common.base.Splitter$2$1)
.class Lcom/applovin/exoplayer2/common/base/Splitter$2$1;
.super Lcom/applovin/exoplayer2/common/base/Splitter$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/common/base/Splitter$2;->a(Lcom/applovin/exoplayer2/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/common/base/Splitter$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oQ:Lcom/applovin/exoplayer2/common/base/Splitter$2;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/base/Splitter$2;Lcom/applovin/exoplayer2/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/base/Splitter$2$1;->oQ:Lcom/applovin/exoplayer2/common/base/Splitter$2;

    invoke-direct {p0, p2, p3}, Lcom/applovin/exoplayer2/common/base/Splitter$a;-><init>(Lcom/applovin/exoplayer2/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public aP(I)I
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/base/Splitter$2$1;->oQ:Lcom/applovin/exoplayer2/common/base/Splitter$2;

    iget-object v0, v0, Lcom/applovin/exoplayer2/common/base/Splitter$2;->oP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oT:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_f
    if-gt p1, v1, :cond_2d

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_2c

    iget-object v3, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oT:Ljava/lang/CharSequence;

    add-int v4, v2, p1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/applovin/exoplayer2/common/base/Splitter$2$1;->oQ:Lcom/applovin/exoplayer2/common/base/Splitter$2;

    iget-object v4, v4, Lcom/applovin/exoplayer2/common/base/Splitter$2;->oP:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_29

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2c
    return p1

    :cond_2d
    const/4 p1, -0x1

    return p1
.end method

.method public aQ(I)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/base/Splitter$2$1;->oQ:Lcom/applovin/exoplayer2/common/base/Splitter$2;

    iget-object v0, v0, Lcom/applovin/exoplayer2/common/base/Splitter$2;->oP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method
