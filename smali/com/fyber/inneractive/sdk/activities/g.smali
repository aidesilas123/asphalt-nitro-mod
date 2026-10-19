###### Class com.fyber.inneractive.sdk.activities.g (com.fyber.inneractive.sdk.activities.g)
.class public Lcom/fyber/inneractive/sdk/activities/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/activities/g;->a:Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/activities/g;->a:Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    sget p1, Lcom/fyber/inneractive/sdk/util/IAlog;->a:I

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "AD_INTERNAL_BROWSER_REFRESH"

    aput-object v1, p1, v0

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/activities/g;->a:Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const/4 v0, 0x0

    const-string v2, "%s %s"

    invoke-static {v1, v0, v2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
