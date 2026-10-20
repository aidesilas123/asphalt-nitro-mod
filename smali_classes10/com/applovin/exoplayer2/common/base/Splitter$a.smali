###### Class com.applovin.exoplayer2.common.base.Splitter.a (com.applovin.exoplayer2.common.base.Splitter$a)
.class abstract Lcom/applovin/exoplayer2/common/base/Splitter$a;
.super Lcom/applovin/exoplayer2/common/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/base/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field limit:I

.field final oT:Ljava/lang/CharSequence;

.field oU:I

.field final omitEmptyStrings:Z

.field final trimmer:Lcom/applovin/exoplayer2/common/base/CharMatcher;


# direct methods
.method protected constructor <init>(Lcom/applovin/exoplayer2/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/base/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oU:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/base/Splitter;->access$000(Lcom/applovin/exoplayer2/common/base/Splitter;)Lcom/applovin/exoplayer2/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->trimmer:Lcom/applovin/exoplayer2/common/base/CharMatcher;

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/base/Splitter;->access$100(Lcom/applovin/exoplayer2/common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->omitEmptyStrings:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/base/Splitter;->access$200(Lcom/applovin/exoplayer2/common/base/Splitter;)I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->limit:I

    iput-object p2, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oT:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method abstract aP(I)I
.end method

.method abstract aQ(I)I
.end method

.method protected synthetic eT()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/base/Splitter$a;->fa()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected fa()Ljava/lang/String;
    .registers 7

    iget v0, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oU:I

    :cond_2
    :goto_2
    iget v1, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oU:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_90

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/common/base/Splitter$a;->aP(I)I

    move-result v1

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oT:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oU:I

    goto :goto_1c

    :cond_16
    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/common/base/Splitter$a;->aQ(I)I

    move-result v3

    iput v3, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oU:I

    :goto_1c
    iget v3, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oU:I

    if-ne v3, v0, :cond_2f

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oU:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oT:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_2

    iput v2, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oU:I

    goto :goto_2

    :cond_2f
    :goto_2f
    if-ge v0, v1, :cond_42

    iget-object v3, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->trimmer:Lcom/applovin/exoplayer2/common/base/CharMatcher;

    iget-object v4, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oT:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_42

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_42
    :goto_42
    if-le v1, v0, :cond_57

    iget-object v3, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->trimmer:Lcom/applovin/exoplayer2/common/base/CharMatcher;

    iget-object v4, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oT:Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_57

    add-int/lit8 v1, v1, -0x1

    goto :goto_42

    :cond_57
    iget-boolean v3, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->omitEmptyStrings:Z

    if-eqz v3, :cond_60

    if-ne v0, v1, :cond_60

    iget v0, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oU:I

    goto :goto_2

    :cond_60
    iget v3, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->limit:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_82

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oT:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oU:I

    :goto_6d
    if-le v1, v0, :cond_85

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->trimmer:Lcom/applovin/exoplayer2/common/base/CharMatcher;

    iget-object v3, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oT:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_85

    add-int/lit8 v1, v1, -0x1

    goto :goto_6d

    :cond_82
    sub-int/2addr v3, v4

    iput v3, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->limit:I

    :cond_85
    iget-object v2, p0, Lcom/applovin/exoplayer2/common/base/Splitter$a;->oT:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_90
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/base/b;->eU()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
