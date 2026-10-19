###### Class com.gameloft.glads.OmSDK.c (com.gameloft.glads.OmSDK$c)
.class Lcom/gameloft/glads/OmSDK$c;
.super Ljava/lang/Object;
.source "OmSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/OmSDK;->OnStartTracking(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/gameloft/glads/OmSDK;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/OmSDK;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/OmSDK$c;->b:Lcom/gameloft/glads/OmSDK;

    iput-object p2, p0, Lcom/gameloft/glads/OmSDK$c;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$c;->b:Lcom/gameloft/glads/OmSDK;

    invoke-static {v0}, Lcom/gameloft/glads/OmSDK;->access$000(Lcom/gameloft/glads/OmSDK;)V

    :try_start_5
    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$c;->a:Ljava/lang/Object;

    check-cast v0, Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidWebView;->GetWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/glads/OmSDK$c;->b:Lcom/gameloft/glads/OmSDK;

    iget-object v2, v1, Lcom/gameloft/glads/OmSDK;->sessionConfig:Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;

    iget-object v3, v1, Lcom/gameloft/glads/OmSDK;->sessionContext:Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;

    invoke-static {v2, v3}, Lcom/iab/omid/library/gameloft/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;)Lcom/iab/omid/library/gameloft/adsession/AdSession;

    move-result-object v2

    iput-object v2, v1, Lcom/gameloft/glads/OmSDK;->adSession:Lcom/iab/omid/library/gameloft/adsession/AdSession;

    iget-object v1, p0, Lcom/gameloft/glads/OmSDK$c;->b:Lcom/gameloft/glads/OmSDK;

    iget-object v1, v1, Lcom/gameloft/glads/OmSDK;->adSession:Lcom/iab/omid/library/gameloft/adsession/AdSession;

    invoke-virtual {v1, v0}, Lcom/iab/omid/library/gameloft/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$c;->b:Lcom/gameloft/glads/OmSDK;

    iget-object v0, v0, Lcom/gameloft/glads/OmSDK;->adSession:Lcom/iab/omid/library/gameloft/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/gameloft/adsession/AdSession;->start()V

    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$c;->b:Lcom/gameloft/glads/OmSDK;

    iget-boolean v1, v0, Lcom/gameloft/glads/OmSDK;->isVideo:Z

    if-nez v1, :cond_36

    iget-object v0, v0, Lcom/gameloft/glads/OmSDK;->adSession:Lcom/iab/omid/library/gameloft/adsession/AdSession;

    invoke-static {v0}, Lcom/iab/omid/library/gameloft/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/gameloft/adsession/AdSession;)Lcom/iab/omid/library/gameloft/adsession/AdEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/gameloft/adsession/AdEvents;->impressionOccurred()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    return-void
.end method
