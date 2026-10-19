###### Class com.mbridge.msdk.click.f (com.mbridge.msdk.click.f)
.class public final Lcom/mbridge/msdk/click/f;
.super Lcom/mbridge/msdk/scheme/applet/AppletSchemeCallBack;
.source "DefaultAppletSchemeCallBack.java"


# instance fields
.field private final a:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

.field private final b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private final c:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

.field private final d:Lcom/mbridge/msdk/click/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/scheme/applet/AppletsModel;Lcom/mbridge/msdk/click/a;)V
    .registers 5

    invoke-direct {p0}, Lcom/mbridge/msdk/scheme/applet/AppletSchemeCallBack;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/click/f;->a:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    iput-object p2, p0, Lcom/mbridge/msdk/click/f;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p3, p0, Lcom/mbridge/msdk/click/f;->c:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    iput-object p4, p0, Lcom/mbridge/msdk/click/f;->d:Lcom/mbridge/msdk/click/a;

    return-void
.end method


# virtual methods
.method protected final onRequestFailed(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string p1, "DefaultAppletSchemeCallBack"

    iget-object p2, p0, Lcom/mbridge/msdk/click/f;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p2, :cond_56

    iget-object v0, p0, Lcom/mbridge/msdk/click/f;->c:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    if-nez v0, :cond_b

    goto :goto_56

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/mbridge/msdk/click/f;->a:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_d} :catch_4a

    if-eqz v0, :cond_23

    :try_start_f
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/mbridge/msdk/out/BaseTrackingListener;->onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_23

    :catch_17
    move-exception p2

    :try_start_18
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_23

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    iget-object p2, p0, Lcom/mbridge/msdk/click/f;->c:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->setUserClick(Z)V

    iget-object p2, p0, Lcom/mbridge/msdk/click/f;->c:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    invoke-virtual {p2}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->setRequestingFinish()V

    iget-object p2, p0, Lcom/mbridge/msdk/click/f;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2, p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/click/f;->d:Lcom/mbridge/msdk/click/a;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_35} :catch_4a

    if-eqz p2, :cond_56

    :try_start_37
    iget-object p3, p0, Lcom/mbridge/msdk/click/f;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2, p3}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_56

    :catch_3d
    move-exception p2

    :try_start_3e
    sget-boolean p3, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p3, :cond_56

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_49} :catch_4a

    goto :goto_56

    :catch_4a
    move-exception p2

    sget-boolean p3, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p3, :cond_56

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-void
.end method

.method protected final onRequestStart()V
    .registers 1

    return-void
.end method

.method protected final onRequestSuccess(Ljava/lang/String;)V
    .registers 6

    const-string v0, "DefaultAppletSchemeCallBack"

    iget-object v1, p0, Lcom/mbridge/msdk/click/f;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_56

    iget-object v2, p0, Lcom/mbridge/msdk/click/f;->c:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    if-nez v2, :cond_b

    goto :goto_56

    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/mbridge/msdk/click/f;->a:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_d} :catch_4a

    if-eqz v2, :cond_23

    :try_start_f
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/mbridge/msdk/out/BaseTrackingListener;->onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_23

    :catch_17
    move-exception v1

    :try_start_18
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/mbridge/msdk/click/f;->c:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->setUserClick(Z)V

    iget-object v1, p0, Lcom/mbridge/msdk/click/f;->c:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    invoke-virtual {v1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->setRequestingFinish()V

    iget-object v1, p0, Lcom/mbridge/msdk/click/f;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setDeepLinkUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/click/f;->d:Lcom/mbridge/msdk/click/a;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_35} :catch_4a

    if-eqz p1, :cond_56

    :try_start_37
    iget-object v1, p0, Lcom/mbridge/msdk/click/f;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_56

    :catch_3d
    move-exception p1

    :try_start_3e
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_56

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_49} :catch_4a

    goto :goto_56

    :catch_4a
    move-exception p1

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_56

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-void
.end method
