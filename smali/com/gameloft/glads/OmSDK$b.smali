###### Class com.gameloft.glads.OmSDK.b (com.gameloft.glads.OmSDK$b)
.class Lcom/gameloft/glads/OmSDK$b;
.super Ljava/lang/Object;
.source "OmSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/OmSDK;->OnCreateWebView(Ljava/lang/Object;)V
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

    iput-object p1, p0, Lcom/gameloft/glads/OmSDK$b;->b:Lcom/gameloft/glads/OmSDK;

    iput-object p2, p0, Lcom/gameloft/glads/OmSDK$b;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidWebView;->GetWebView()Landroid/webkit/WebView;

    move-result-object v0

    :try_start_8
    iget-object v1, p0, Lcom/gameloft/glads/OmSDK$b;->b:Lcom/gameloft/glads/OmSDK;

    sget-object v2, Lcom/gameloft/glads/OmSDK;->partner:Lcom/iab/omid/library/gameloft/adsession/Partner;

    const-string v3, ""

    invoke-static {v2, v0, v3}, Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/gameloft/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;

    move-result-object v0

    iput-object v0, v1, Lcom/gameloft/glads/OmSDK;->sessionContext:Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;

    iget-object v0, p0, Lcom/gameloft/glads/OmSDK$b;->b:Lcom/gameloft/glads/OmSDK;

    iget-boolean v1, v0, Lcom/gameloft/glads/OmSDK;->isVideo:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    sget-object v1, Lcom/iab/omid/library/gameloft/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/gameloft/adsession/Owner;

    invoke-static {v1, v1, v2}, Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/gameloft/adsession/Owner;Lcom/iab/omid/library/gameloft/adsession/Owner;Z)Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/gameloft/glads/OmSDK;->sessionConfig:Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;

    goto :goto_2d

    :cond_24
    sget-object v1, Lcom/iab/omid/library/gameloft/adsession/Owner;->NATIVE:Lcom/iab/omid/library/gameloft/adsession/Owner;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/gameloft/adsession/Owner;Lcom/iab/omid/library/gameloft/adsession/Owner;Z)Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/gameloft/glads/OmSDK;->sessionConfig:Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_2d

    :catch_2d
    :goto_2d
    return-void
.end method
