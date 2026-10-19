###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.m (com.fyber.inneractive.sdk.player.exoplayer2.extractor.m)
.class public interface abstract Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m$a;
    }
.end annotation


# virtual methods
.method public abstract a(J)J
.end method

.method public abstract a()Z
.end method

.method public abstract c()J
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.m.a (com.fyber.inneractive.sdk.player.exoplayer2.extractor.m$a)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m$a;->a:J

    return-void
.end method


# virtual methods
.method public a(J)J
    .registers 3

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m$a;->a:J

    return-wide v0
.end method
