###### Class com.fyber.inneractive.sdk.player.cache.c.f (com.fyber.inneractive.sdk.player.cache.c$f)
.class public final Lcom/fyber/inneractive/sdk/player/cache/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/cache/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final a:[Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/cache/c;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/fyber/inneractive/sdk/player/cache/c$f;->a:[Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/cache/c$f;->a:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/player/cache/m;->a(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
