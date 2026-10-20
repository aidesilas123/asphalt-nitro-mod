###### Class com.mbridge.msdk.scheme.applet.AppletsModel.DefaultAppletSchemeResponse (com.mbridge.msdk.scheme.applet.AppletsModel$DefaultAppletSchemeResponse)
.class final Lcom/mbridge/msdk/scheme/applet/AppletsModel$DefaultAppletSchemeResponse;
.super Lcom/mbridge/msdk/scheme/response/AppletSchemeResponse;
.source "AppletsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/scheme/applet/AppletsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultAppletSchemeResponse"
.end annotation


# instance fields
.field private appletsModel:Lcom/mbridge/msdk/scheme/applet/AppletsModel;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/scheme/applet/AppletsModel;)V
    .registers 2

    invoke-direct {p0}, Lcom/mbridge/msdk/scheme/response/AppletSchemeResponse;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel$DefaultAppletSchemeResponse;->appletsModel:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    return-void
.end method


# virtual methods
.method public final onError(Lcom/mbridge/msdk/foundation/same/net/b/a;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/mbridge/msdk/scheme/response/AppletSchemeResponse;->onError(Lcom/mbridge/msdk/foundation/same/net/b/a;)V

    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel$DefaultAppletSchemeResponse;->appletsModel:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->access$000(Lcom/mbridge/msdk/scheme/applet/AppletsModel;Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel$DefaultAppletSchemeResponse;->appletsModel:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    invoke-static {v0, p1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->access$400(Lcom/mbridge/msdk/scheme/applet/AppletsModel;Lcom/mbridge/msdk/foundation/same/net/b/a;)V

    return-void
.end method

.method public final onSuccess(Lcom/mbridge/msdk/foundation/same/net/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/net/l<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/mbridge/msdk/scheme/response/AppletSchemeResponse;->onSuccess(Lcom/mbridge/msdk/foundation/same/net/l;)V

    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel$DefaultAppletSchemeResponse;->appletsModel:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->access$000(Lcom/mbridge/msdk/scheme/applet/AppletsModel;Z)V

    if-eqz p1, :cond_25

    iget-object v0, p1, Lcom/mbridge/msdk/foundation/same/net/l;->a:Ljava/lang/Object;

    if-nez v0, :cond_13

    goto :goto_25

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel$DefaultAppletSchemeResponse;->appletsModel:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    invoke-static {v0, p1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->access$200(Lcom/mbridge/msdk/scheme/applet/AppletsModel;Lcom/mbridge/msdk/foundation/same/net/l;)V
    :try_end_18
    .catch Lcom/mbridge/msdk/scheme/applet/AppletsModel$SchemeRequestException; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_24

    :catch_19
    move-exception p1

    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel$DefaultAppletSchemeResponse;->appletsModel:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    const/4 v1, -0x2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->access$300(Lcom/mbridge/msdk/scheme/applet/AppletsModel;ILjava/lang/String;)V

    :goto_24
    return-void

    :cond_25
    :goto_25
    iget-object p1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel$DefaultAppletSchemeResponse;->appletsModel:Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    invoke-static {p1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->access$100(Lcom/mbridge/msdk/scheme/applet/AppletsModel;)V

    return-void
.end method
