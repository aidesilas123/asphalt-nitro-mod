###### Class com.fyber.inneractive.sdk.player.exoplayer2.trackselection.b.C0190b (com.fyber.inneractive.sdk.player.exoplayer2.trackselection.b$b)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:I

.field public final k:I

.field public final l:Z


# direct methods
.method public constructor <init>()V
    .registers 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    const v7, 0x7fffffff

    const/4 v8, 0x1

    const/4 v9, 0x1

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const/4 v12, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->c:Z

    iput-boolean p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->d:Z

    iput p5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->e:I

    iput p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->f:I

    iput p7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->g:I

    iput-boolean p8, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->h:Z

    iput-boolean p9, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->i:Z

    iput p10, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->j:I

    iput p11, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->k:I

    iput-boolean p12, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->l:Z

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

    if-eqz p1, :cond_65

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;

    if-eq v3, v2, :cond_10

    goto :goto_65

    :cond_10
    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;

    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->c:Z

    iget-boolean v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->c:Z

    if-ne v2, v3, :cond_63

    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->d:Z

    iget-boolean v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->d:Z

    if-ne v2, v3, :cond_63

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->e:I

    iget v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->e:I

    if-ne v2, v3, :cond_63

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->f:I

    iget v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->f:I

    if-ne v2, v3, :cond_63

    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->h:Z

    iget-boolean v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->h:Z

    if-ne v2, v3, :cond_63

    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->i:Z

    iget-boolean v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->i:Z

    if-ne v2, v3, :cond_63

    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->l:Z

    iget-boolean v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->l:Z

    if-ne v2, v3, :cond_63

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->j:I

    iget v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->j:I

    if-ne v2, v3, :cond_63

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->k:I

    iget v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->k:I

    if-ne v2, v3, :cond_63

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->g:I

    iget v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->g:I

    if-ne v2, v3, :cond_63

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->b:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_63

    goto :goto_64

    :cond_63
    const/4 v0, 0x0

    :goto_64
    return v0

    :cond_65
    :goto_65
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->h:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->i:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->l:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->k:I

    add-int/2addr v0, v1

    return v0
.end method
