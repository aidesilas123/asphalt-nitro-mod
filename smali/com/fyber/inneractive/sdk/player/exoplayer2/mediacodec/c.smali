###### Class com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.c (com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.c)
.class public interface abstract Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c$a;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c$a;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/d$b;
        }
    .end annotation
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.c.a (com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.c$a)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/d$b;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/d;->a(Ljava/lang/String;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/a;

    move-result-object p1

    return-object p1
.end method
