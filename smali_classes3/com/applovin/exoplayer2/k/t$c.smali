###### Class com.applovin.exoplayer2.k.t.c (com.applovin.exoplayer2.k.t$c)
.class public Lcom/applovin/exoplayer2/k/t$c;
.super Lcom/applovin/exoplayer2/k/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final bs:I

.field public final tw:Lcom/applovin/exoplayer2/k/l;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/k/l;II)V
    .registers 4

    invoke-static {p2, p3}, Lcom/applovin/exoplayer2/k/t$c;->J(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/k/j;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/t$c;->tw:Lcom/applovin/exoplayer2/k/l;

    iput p3, p0, Lcom/applovin/exoplayer2/k/t$c;->bs:I

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/applovin/exoplayer2/k/l;II)V
    .registers 5

    invoke-static {p3, p4}, Lcom/applovin/exoplayer2/k/t$c;->J(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/applovin/exoplayer2/k/j;-><init>(Ljava/lang/Throwable;I)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/k/t$c;->tw:Lcom/applovin/exoplayer2/k/l;

    iput p4, p0, Lcom/applovin/exoplayer2/k/t$c;->bs:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/applovin/exoplayer2/k/l;II)V
    .registers 5

    invoke-static {p3, p4}, Lcom/applovin/exoplayer2/k/t$c;->J(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/applovin/exoplayer2/k/j;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/k/t$c;->tw:Lcom/applovin/exoplayer2/k/l;

    iput p4, p0, Lcom/applovin/exoplayer2/k/t$c;->bs:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/applovin/exoplayer2/k/l;II)V
    .registers 6
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p4, p5}, Lcom/applovin/exoplayer2/k/t$c;->J(II)I

    move-result p4

    invoke-direct {p0, p1, p2, p4}, Lcom/applovin/exoplayer2/k/j;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    iput-object p3, p0, Lcom/applovin/exoplayer2/k/t$c;->tw:Lcom/applovin/exoplayer2/k/l;

    iput p5, p0, Lcom/applovin/exoplayer2/k/t$c;->bs:I

    return-void
.end method

.method private static J(II)I
    .registers 3

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    const/16 p0, 0x7d1

    :cond_9
    return p0
.end method

.method public static a(Ljava/io/IOException;Lcom/applovin/exoplayer2/k/l;I)Lcom/applovin/exoplayer2/k/t$c;
    .registers 6

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    const/16 v2, 0x7d7

    if-eqz v1, :cond_d

    const/16 v0, 0x7d2

    goto :goto_27

    :cond_d
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_14

    const/16 v0, 0x3ec

    goto :goto_27

    :cond_14
    if-eqz v0, :cond_25

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleartext.*not permitted.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x7d7

    goto :goto_27

    :cond_25
    const/16 v0, 0x7d1

    :goto_27
    if-ne v0, v2, :cond_2f

    new-instance p2, Lcom/applovin/exoplayer2/k/t$a;

    invoke-direct {p2, p0, p1}, Lcom/applovin/exoplayer2/k/t$a;-><init>(Ljava/io/IOException;Lcom/applovin/exoplayer2/k/l;)V

    goto :goto_35

    :cond_2f
    new-instance v1, Lcom/applovin/exoplayer2/k/t$c;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/applovin/exoplayer2/k/t$c;-><init>(Ljava/io/IOException;Lcom/applovin/exoplayer2/k/l;II)V

    move-object p2, v1

    :goto_35
    return-object p2
.end method
