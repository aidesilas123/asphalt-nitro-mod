###### Class com.applovin.exoplayer2.e.g.l (com.applovin.exoplayer2.e.g.l)
.class public final Lcom/applovin/exoplayer2/e/g/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final AV:Z

.field public final AW:I

.field public final AX:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final tc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final xZ:Lcom/applovin/exoplayer2/e/x$a;


# direct methods
.method public constructor <init>(ZLjava/lang/String;I[BII[B)V
    .registers 11
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    if-nez p7, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/g/l;->AV:Z

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/g/l;->tc:Ljava/lang/String;

    iput p3, p0, Lcom/applovin/exoplayer2/e/g/l;->AW:I

    iput-object p7, p0, Lcom/applovin/exoplayer2/e/g/l;->AX:[B

    new-instance p1, Lcom/applovin/exoplayer2/e/x$a;

    invoke-static {p2}, Lcom/applovin/exoplayer2/e/g/l;->J(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2, p4, p5, p6}, Lcom/applovin/exoplayer2/e/x$a;-><init>(I[BII)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/l;->xZ:Lcom/applovin/exoplayer2/e/x$a;

    return-void
.end method

.method private static J(Ljava/lang/String;)I
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    sparse-switch v2, :sswitch_data_5a

    goto :goto_39

    :sswitch_e
    const-string v2, "cens"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_39

    :cond_17
    const/4 v1, 0x3

    goto :goto_39

    :sswitch_19
    const-string v2, "cenc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_39

    :cond_22
    const/4 v1, 0x2

    goto :goto_39

    :sswitch_24
    const-string v2, "cbcs"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_39

    :cond_2d
    const/4 v1, 0x1

    goto :goto_39

    :sswitch_2f
    const-string v2, "cbc1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    packed-switch v1, :pswitch_data_6c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported protection scheme type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'. Assuming AES-CTR crypto mode."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TrackEncryptionBox"

    invoke-static {v1, p0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_57
    return v0

    :pswitch_58
    return v3

    nop

    :sswitch_data_5a
    .sparse-switch
        0x2e7ccd -> :sswitch_2f
        0x2e7d0f -> :sswitch_24
        0x2e8997 -> :sswitch_19
        0x2e89a7 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_58
        :pswitch_58
        :pswitch_57
        :pswitch_57
    .end packed-switch
.end method
