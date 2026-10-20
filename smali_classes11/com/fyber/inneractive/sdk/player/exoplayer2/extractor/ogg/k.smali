###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.k (com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.k)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/k$b;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/k$c;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/k$a;
    }
.end annotation


# direct methods
.method public static a(I)I
    .registers 2

    const/4 v0, 0x0

    :goto_1
    if-lez p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method public static a(ILcom/fyber/inneractive/sdk/player/exoplayer2/util/k;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/l;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_26

    if-eqz p2, :cond_b

    return v1

    :cond_b
    new-instance p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "too short header: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result v0

    if-eq v0, p0, :cond_4a

    if-eqz p2, :cond_2f

    return v1

    :cond_2f
    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "expected header type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_7d

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_7d

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_7d

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_7d

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_7d

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_7b

    goto :goto_7d

    :cond_7b
    const/4 p0, 0x1

    return p0

    :cond_7d
    :goto_7d
    if-eqz p2, :cond_80

    return v1

    :cond_80
    new-instance p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string p1, "expected characters \'vorbis\'"

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw p0
.end method
