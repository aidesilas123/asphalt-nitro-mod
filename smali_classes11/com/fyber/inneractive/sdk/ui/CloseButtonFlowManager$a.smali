###### Class com.fyber.inneractive.sdk.ui.CloseButtonFlowManager.a (com.fyber.inneractive.sdk.ui.CloseButtonFlowManager$a)
.class public Lcom/fyber/inneractive/sdk/ui/CloseButtonFlowManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/ui/CloseButtonFlowManager;-><init>(Lcom/fyber/inneractive/sdk/activities/InneractiveFullscreenAdActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/activities/InneractiveFullscreenAdActivity;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/ui/CloseButtonFlowManager;Lcom/fyber/inneractive/sdk/activities/InneractiveFullscreenAdActivity;)V
    .registers 3

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/ui/CloseButtonFlowManager$a;->a:Lcom/fyber/inneractive/sdk/activities/InneractiveFullscreenAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ui/CloseButtonFlowManager$a;->a:Lcom/fyber/inneractive/sdk/activities/InneractiveFullscreenAdActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/activities/InneractiveFullscreenAdActivity;->dismissAd(Z)V

    return-void
.end method
