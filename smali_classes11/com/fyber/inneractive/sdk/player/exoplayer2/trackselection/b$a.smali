###### Class com.fyber.inneractive.sdk.player.exoplayer2.trackselection.b.a (com.fyber.inneractive.sdk.player.exoplayer2.trackselection.b$a)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->a:I

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->b:I

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;

    if-eq v3, v2, :cond_10

    goto :goto_2b

    :cond_10
    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->a:I

    iget v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->a:I

    if-ne v2, v3, :cond_29

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->b:I

    iget v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->b:I

    if-ne v2, v3, :cond_29

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->c:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    add-int/2addr v0, v1

    return v0
.end method
