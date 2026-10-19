###### Class com.mbridge.msdk.foundation.same.net.h.c (com.mbridge.msdk.foundation.same.net.h.c)
.class public abstract Lcom/mbridge/msdk/foundation/same/net/h/c;
.super Lcom/mbridge/msdk/foundation/same/net/f;
.source "CommonMBListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mbridge/msdk/foundation/same/net/f<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "c"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/f;-><init>()V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/same/net/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/net/l<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/mbridge/msdk/foundation/same/net/l;->a:Ljava/lang/Object;

    if-nez v0, :cond_a

    const-string p1, "response result is null"

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/h/c;->a(Ljava/lang/String;)V

    return-void

    :cond_a
    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "status"

    const/16 v2, -0x270f

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1e

    iget-object p1, p1, Lcom/mbridge/msdk/foundation/same/net/l;->a:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/h/c;->a(Lorg/json/JSONObject;)V

    return-void

    :cond_1e
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_26

    goto :goto_3c

    :cond_26
    iget-object p1, p1, Lcom/mbridge/msdk/foundation/same/net/l;->a:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string p1, "error message is null"

    :cond_38
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/h/c;->a(Ljava/lang/String;)V

    return-void

    :cond_3c
    :goto_3c
    iget-object p1, p1, Lcom/mbridge/msdk/foundation/same/net/l;->a:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/h/c;->a(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Lorg/json/JSONObject;)V
.end method

.method public onError(Lcom/mbridge/msdk/foundation/same/net/b/a;)V
    .registers 2

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/net/g/a;->a(Lcom/mbridge/msdk/foundation/same/net/b/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/h/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/mbridge/msdk/foundation/same/net/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/net/l<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_8

    const-string p1, "response is null"

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/h/c;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p1, Lcom/mbridge/msdk/foundation/same/net/l;->c:Lcom/mbridge/msdk/foundation/same/net/f/c;

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/h/c;->a(Lcom/mbridge/msdk/foundation/same/net/l;)V

    goto :goto_22

    :cond_10
    iget v0, v0, Lcom/mbridge/msdk/foundation/same/net/f/c;->a:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1f

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/h/c;->a(Lorg/json/JSONObject;)V

    goto :goto_22

    :cond_1f
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/h/c;->a(Lcom/mbridge/msdk/foundation/same/net/l;)V

    :goto_22
    return-void
.end method
