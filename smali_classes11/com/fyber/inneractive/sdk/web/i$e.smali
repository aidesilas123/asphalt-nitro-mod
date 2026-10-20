###### Class com.fyber.inneractive.sdk.web.i.e (com.fyber.inneractive.sdk.web.i$e)
.class public Lcom/fyber/inneractive/sdk/web/i$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/web/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/i;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/web/i$e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/i$e;->b:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/i$e;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/i$e;->b:Landroid/media/MediaScannerConnection;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    :cond_7
    return-void
.end method
