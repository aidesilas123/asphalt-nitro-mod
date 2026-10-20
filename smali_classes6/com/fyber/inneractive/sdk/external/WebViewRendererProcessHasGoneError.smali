###### Class com.fyber.inneractive.sdk.external.WebViewRendererProcessHasGoneError (com.fyber.inneractive.sdk.external.WebViewRendererProcessHasGoneError)
.class public Lcom/fyber/inneractive/sdk/external/WebViewRendererProcessHasGoneError;
.super Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$AdDisplayError;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Web view renderer process has gone. Web view destroyed"

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/external/InneractiveUnitController$AdDisplayError;-><init>(Ljava/lang/String;)V

    return-void
.end method
